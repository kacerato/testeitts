.class public abstract Lcom/github/javaparser/ast/body/CallableDeclaration;
.super Lcom/github/javaparser/ast/body/BodyDeclaration;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithAccessModifiers;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithDeclaration;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeParameters;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc;
.implements Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithAbstractModifier;
.implements Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithStaticModifier;
.implements Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithFinalModifier;
.implements Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithStrictfpModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/ast/body/CallableDeclaration$Signature;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/javaparser/ast/body/CallableDeclaration<",
        "*>;>",
        "Lcom/github/javaparser/ast/body/BodyDeclaration<",
        "TT;>;",
        "Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithAccessModifiers<",
        "TT;>;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithDeclaration;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName<",
        "TT;>;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters<",
        "TT;>;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions<",
        "TT;>;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeParameters<",
        "TT;>;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc<",
        "TT;>;",
        "Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithAbstractModifier<",
        "TT;>;",
        "Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithStaticModifier<",
        "TT;>;",
        "Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithFinalModifier<",
        "TT;>;",
        "Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithStrictfpModifier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private modifiers:Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field private name:Lcom/github/javaparser/ast/expr/SimpleName;

.field private parameters:Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private receiverParameter:Lcom/github/javaparser/ast/body/ReceiverParameter;
    .annotation runtime Lcom/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private thrownExceptions:Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/ReferenceType;",
            ">;"
        }
    .end annotation
.end field

.field private typeParameters:Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/TypeParameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/body/ReceiverParameter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "modifiers",
            "annotations",
            "typeParameters",
            "name",
            "parameters",
            "thrownExceptions",
            "receiverParameter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/TokenRange;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/TypeParameter;",
            ">;",
            "Lcom/github/javaparser/ast/expr/SimpleName;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ">;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/ReferenceType;",
            ">;",
            "Lcom/github/javaparser/ast/body/ReceiverParameter;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/github/javaparser/ast/body/BodyDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    .line 4
    invoke-virtual {p0, p4}, Lcom/github/javaparser/ast/body/CallableDeclaration;->setTypeParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    .line 5
    invoke-virtual {p0, p5}, Lcom/github/javaparser/ast/body/CallableDeclaration;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    .line 6
    invoke-virtual {p0, p6}, Lcom/github/javaparser/ast/body/CallableDeclaration;->setParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    .line 7
    invoke-virtual {p0, p7}, Lcom/github/javaparser/ast/body/CallableDeclaration;->setThrownExceptions(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    .line 8
    invoke-virtual {p0, p8}, Lcom/github/javaparser/ast/body/CallableDeclaration;->setReceiverParameter(Lcom/github/javaparser/ast/body/ReceiverParameter;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    .line 9
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/body/ReceiverParameter;)V
    .locals 9
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "modifiers",
            "annotations",
            "typeParameters",
            "name",
            "parameters",
            "thrownExceptions",
            "receiverParameter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/TypeParameter;",
            ">;",
            "Lcom/github/javaparser/ast/expr/SimpleName;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ">;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/ReferenceType;",
            ">;",
            "Lcom/github/javaparser/ast/body/ReceiverParameter;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/ast/body/CallableDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/body/ReceiverParameter;)V

    return-void
.end method

.method private getTypeWithVarargsAsArray(Lcom/github/javaparser/ast/body/Parameter;)Lcom/github/javaparser/ast/type/Type;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/type/Type;->clone()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->isVarArgs()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/github/javaparser/ast/type/ArrayType;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/github/javaparser/ast/expr/AnnotationExpr;

    invoke-direct {p1, v0, v1}, Lcom/github/javaparser/ast/type/ArrayType;-><init>(Lcom/github/javaparser/ast/type/Type;[Lcom/github/javaparser/ast/expr/AnnotationExpr;)V

    move-object v0, p1

    :cond_0
    return-object v0
.end method

.method public static synthetic j0(Lcom/github/javaparser/ast/body/CallableDeclaration;Lcom/github/javaparser/ast/body/Parameter;)Lcom/github/javaparser/ast/type/Type;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getTypeWithVarargsAsArray(Lcom/github/javaparser/ast/body/Parameter;)Lcom/github/javaparser/ast/type/Type;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Lcom/github/javaparser/ast/body/CallableDeclaration;Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/type/Type;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->stripGenerics(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/type/Type;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0(Lcom/github/javaparser/ast/body/CallableDeclaration;Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/type/Type;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->stripAnnotations(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/type/Type;

    move-result-object p0

    return-object p0
.end method

.method private stripAnnotations(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/type/Type;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    instance-of v0, p1, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;

    new-instance v1, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v1}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    invoke-interface {v0, v1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;

    :cond_0
    return-object p1
.end method

.method private stripGenerics(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/type/Type;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    instance-of v0, p1, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->setTypeArguments(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;

    :cond_0
    return-object p1
.end method


# virtual methods
.method public appendThrowsIfRequested(Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "includingThrows"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/type/ReferenceType;

    if-eqz v1, :cond_0

    const-string v1, " throws "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    sget-object v3, Lcom/github/javaparser/ast/Node;->prettyPrinterNoCommentsConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    invoke-virtual {v2, v3}, Lcom/github/javaparser/ast/Node;->toString(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public asCallableDeclaration()Lcom/github/javaparser/ast/body/CallableDeclaration;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CallableDeclaration;->clone()Lcom/github/javaparser/ast/body/CallableDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/body/BodyDeclaration;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CallableDeclaration;->clone()Lcom/github/javaparser/ast/body/CallableDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/body/CallableDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/body/CallableDeclaration<",
            "*>;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/CallableDeclaration;

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
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CallableDeclaration;->clone()Lcom/github/javaparser/ast/body/CallableDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/BodyDeclarationMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getMetaModel()Lcom/github/javaparser/metamodel/CallableDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/CallableDeclarationMetaModel;
    .locals 1

    .line 3
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->callableDeclarationMetaModel:Lcom/github/javaparser/metamodel/CallableDeclarationMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getMetaModel()Lcom/github/javaparser/metamodel/CallableDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getName()Lcom/github/javaparser/ast/expr/SimpleName;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    return-object v0
.end method

.method public getParameters()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->parameters:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getReceiverParameter()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/ReceiverParameter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->receiverParameter:Lcom/github/javaparser/ast/body/ReceiverParameter;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/github/javaparser/ast/body/CallableDeclaration$Signature;
    .locals 4

    new-instance v0, Lcom/github/javaparser/ast/body/CallableDeclaration$Signature;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/github/javaparser/ast/body/a;

    invoke-direct {v3, p0}, Lcom/github/javaparser/ast/body/a;-><init>(Lcom/github/javaparser/ast/body/CallableDeclaration;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/github/javaparser/ast/body/b;

    invoke-direct {v3, p0}, Lcom/github/javaparser/ast/body/b;-><init>(Lcom/github/javaparser/ast/body/CallableDeclaration;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/github/javaparser/ast/body/c;

    invoke-direct {v3, p0}, Lcom/github/javaparser/ast/body/c;-><init>(Lcom/github/javaparser/ast/body/CallableDeclaration;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/github/javaparser/ast/body/CallableDeclaration$Signature;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/ast/body/CallableDeclaration$1;)V

    return-object v0
.end method

.method public getThrownExceptions()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/ReferenceType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->thrownExceptions:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getTypeParameters()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/TypeParameter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->typeParameters:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public ifCallableDeclaration(Ljava/util/function/Consumer;)V
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
            "Lcom/github/javaparser/ast/body/CallableDeclaration;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isCallableDeclaration()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFixedArityMethod()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CallableDeclaration;->isVariableArityMethod()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isVariableArityMethod()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->getLast()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/Parameter;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/body/Parameter;->isVarArgs()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Lcom/github/javaparser/ast/Node;)Z
    .locals 4
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
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v1}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->parameters:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->parameters:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_3

    iget-object p1, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->parameters:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v1}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->receiverParameter:Lcom/github/javaparser/ast/body/ReceiverParameter;

    if-eqz v1, :cond_5

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CallableDeclaration;->removeReceiverParameter()Lcom/github/javaparser/ast/body/CallableDeclaration;

    return v3

    :cond_5
    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->thrownExceptions:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->thrownExceptions:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_6

    iget-object p1, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->thrownExceptions:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v1}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->typeParameters:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    iget-object v1, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->typeParameters:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_8

    iget-object p1, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->typeParameters:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->remove(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public removeReceiverParameter()Lcom/github/javaparser/ast/body/CallableDeclaration;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/body/CallableDeclaration;->setReceiverParameter(Lcom/github/javaparser/ast/body/ReceiverParameter;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 4
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
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/Modifier;

    invoke-virtual {p1, v1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    if-ne p1, v1, :cond_3

    check-cast p2, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    return v3

    :cond_3
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->parameters:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->parameters:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_4

    iget-object p1, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->parameters:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/body/Parameter;

    invoke-virtual {p1, v1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->receiverParameter:Lcom/github/javaparser/ast/body/ReceiverParameter;

    if-eqz v1, :cond_6

    if-ne p1, v1, :cond_6

    check-cast p2, Lcom/github/javaparser/ast/body/ReceiverParameter;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->setReceiverParameter(Lcom/github/javaparser/ast/body/ReceiverParameter;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    return v3

    :cond_6
    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->thrownExceptions:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->thrownExceptions:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_7

    iget-object p1, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->thrownExceptions:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/type/ReferenceType;

    invoke-virtual {p1, v1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->typeParameters:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->typeParameters:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_9

    iget-object p1, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->typeParameters:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/type/TypeParameter;

    invoke-virtual {p1, v0, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "modifiers"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "modifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;)TT;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->MODIFIERS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/CallableDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/SimpleName;",
            ")TT;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->NAME:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public bridge synthetic setParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->setParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
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
            ">;)TT;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->parameters:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->PARAMETERS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->parameters:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->parameters:Lcom/github/javaparser/ast/NodeList;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public setReceiverParameter(Lcom/github/javaparser/ast/body/ReceiverParameter;)Lcom/github/javaparser/ast/body/CallableDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "receiverParameter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/ReceiverParameter;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->receiverParameter:Lcom/github/javaparser/ast/body/ReceiverParameter;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->RECEIVER_PARAMETER:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->receiverParameter:Lcom/github/javaparser/ast/body/ReceiverParameter;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->receiverParameter:Lcom/github/javaparser/ast/body/ReceiverParameter;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public bridge synthetic setThrownExceptions(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "thrownExceptions"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->setThrownExceptions(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setThrownExceptions(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "thrownExceptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/ReferenceType;",
            ">;)TT;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->thrownExceptions:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->THROWN_EXCEPTIONS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->thrownExceptions:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->thrownExceptions:Lcom/github/javaparser/ast/NodeList;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public bridge synthetic setTypeParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "typeParameters"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->setTypeParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setTypeParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "typeParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/TypeParameter;",
            ">;)TT;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->typeParameters:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPE_PARAMETERS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->typeParameters:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;->typeParameters:Lcom/github/javaparser/ast/NodeList;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public toCallableDeclaration()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/CallableDeclaration;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
