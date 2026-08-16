.class public Lcom/github/javaparser/ast/type/ArrayType;
.super Lcom/github/javaparser/ast/type/ReferenceType;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;,
        Lcom/github/javaparser/ast/type/ArrayType$Origin;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/ast/type/ReferenceType;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations<",
        "Lcom/github/javaparser/ast/type/ArrayType;",
        ">;"
    }
.end annotation


# instance fields
.field private componentType:Lcom/github/javaparser/ast/type/Type;

.field private origin:Lcom/github/javaparser/ast/type/ArrayType$Origin;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/type/ArrayType$Origin;Lcom/github/javaparser/ast/NodeList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "componentType",
            "origin",
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/TokenRange;",
            "Lcom/github/javaparser/ast/type/Type;",
            "Lcom/github/javaparser/ast/type/ArrayType$Origin;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p4}, Lcom/github/javaparser/ast/type/ReferenceType;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/type/ArrayType;->setComponentType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/type/ArrayType;

    .line 5
    invoke-virtual {p0, p3}, Lcom/github/javaparser/ast/type/ArrayType;->setOrigin(Lcom/github/javaparser/ast/type/ArrayType$Origin;)Lcom/github/javaparser/ast/type/ArrayType;

    .line 6
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/type/ArrayType$Origin;Lcom/github/javaparser/ast/NodeList;)V
    .locals 1
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "componentType",
            "origin",
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/type/Type;",
            "Lcom/github/javaparser/ast/type/ArrayType$Origin;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/github/javaparser/ast/type/ArrayType;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/type/ArrayType$Origin;Lcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public varargs constructor <init>(Lcom/github/javaparser/ast/type/Type;[Lcom/github/javaparser/ast/expr/AnnotationExpr;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "annotations"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/github/javaparser/ast/type/ArrayType$Origin;->TYPE:Lcom/github/javaparser/ast/type/ArrayType$Origin;

    invoke-static {p2}, Lcom/github/javaparser/ast/NodeList;->nodeList([Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/github/javaparser/ast/type/ArrayType;-><init>(Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/type/ArrayType$Origin;Lcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method private static getOuterMostTokenRange(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/TokenRange;)Lcom/github/javaparser/TokenRange;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenRange1",
            "tokenRange2"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/TokenRange;->getEnd()Lcom/github/javaparser/JavaToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/Range;

    invoke-virtual {p1}, Lcom/github/javaparser/TokenRange;->getEnd()Lcom/github/javaparser/JavaToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/Range;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/Range;->isAfter(Lcom/github/javaparser/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p0}, Lcom/github/javaparser/TokenRange;->getBegin()Lcom/github/javaparser/JavaToken;

    move-result-object p0

    invoke-virtual {p1}, Lcom/github/javaparser/TokenRange;->getEnd()Lcom/github/javaparser/JavaToken;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/github/javaparser/TokenRange;-><init>(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V

    return-object v0
.end method

.method public static unwrapArrayTypes(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/utils/Pair;
    .locals 5
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
            "Lcom/github/javaparser/ast/type/Type;",
            ")",
            "Lcom/github/javaparser/utils/Pair<",
            "Lcom/github/javaparser/ast/type/Type;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    instance-of v1, p0, Lcom/github/javaparser/ast/type/ArrayType;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/github/javaparser/ast/type/ArrayType;

    new-instance v2, Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/TokenRange;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/type/ArrayType;->getOrigin()Lcom/github/javaparser/ast/type/ArrayType$Origin;

    move-result-object v3

    invoke-virtual {v1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/ArrayType$Origin;Lcom/github/javaparser/ast/NodeList;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/github/javaparser/ast/type/ArrayType;->getComponentType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/github/javaparser/utils/Pair;

    invoke-direct {v1, p0, v0}, Lcom/github/javaparser/utils/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static varargs wrapInArrayTypes(Lcom/github/javaparser/ast/type/Type;[Ljava/util/List;)Lcom/github/javaparser/ast/type/Type;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "arrayBracketPairLists"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/type/Type;",
            "[",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;",
            ">;)",
            "Lcom/github/javaparser/ast/type/Type;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_2

    aget-object v2, p1, v0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->getTokenRange()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/javaparser/TokenRange;

    invoke-virtual {v6}, Lcom/github/javaparser/TokenRange;->getBegin()Lcom/github/javaparser/JavaToken;

    move-result-object v6

    invoke-virtual {v4}, Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->getTokenRange()Ljava/util/Optional;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/javaparser/TokenRange;

    invoke-virtual {v7}, Lcom/github/javaparser/TokenRange;->getEnd()Lcom/github/javaparser/JavaToken;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/github/javaparser/TokenRange;-><init>(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V

    invoke-static {v5, v1}, Lcom/github/javaparser/ast/type/ArrayType;->getOuterMostTokenRange(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/TokenRange;)Lcom/github/javaparser/TokenRange;

    move-result-object v1

    :cond_0
    new-instance v5, Lcom/github/javaparser/ast/type/ArrayType;

    invoke-virtual {v4}, Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->getOrigin()Lcom/github/javaparser/ast/type/ArrayType$Origin;

    move-result-object v6

    invoke-virtual {v4}, Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v4

    invoke-direct {v5, v1, p0, v6, v4}, Lcom/github/javaparser/ast/type/ArrayType;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/type/ArrayType$Origin;Lcom/github/javaparser/ast/NodeList;)V

    add-int/lit8 v3, v3, -0x1

    move-object p0, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)V

    return-void
.end method

.method public asArrayType()Lcom/github/javaparser/ast/type/ArrayType;
    .locals 0

    return-object p0
.end method

.method public asString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/javaparser/ast/type/ArrayType;->componentType:Lcom/github/javaparser/ast/type/Type;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/type/Type;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ArrayType;->clone()Lcom/github/javaparser/ast/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/type/ArrayType;
    .locals 2

    .line 5
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/type/ArrayType;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/ArrayType;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/type/ReferenceType;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ArrayType;->clone()Lcom/github/javaparser/ast/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/type/Type;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ArrayType;->clone()Lcom/github/javaparser/ast/type/ArrayType;

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
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ArrayType;->clone()Lcom/github/javaparser/ast/type/ArrayType;

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

    new-instance v0, Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ArrayType;->getComponentType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/github/javaparser/ast/type/ConvertibleToUsage;->convertToUsage(Lcom/github/javaparser/resolution/Context;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;-><init>(Lcom/github/javaparser/resolution/types/ResolvedType;)V

    return-object v0
.end method

.method public getArrayLevel()I
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ArrayType;->getComponentType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/type/Type;->getArrayLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getComponentType()Lcom/github/javaparser/ast/type/Type;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/type/ArrayType;->componentType:Lcom/github/javaparser/ast/type/Type;

    return-object v0
.end method

.method public getElementType()Lcom/github/javaparser/ast/type/Type;
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ArrayType;->getComponentType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/type/Type;->getElementType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/ArrayTypeMetaModel;
    .locals 1

    .line 4
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->arrayTypeMetaModel:Lcom/github/javaparser/metamodel/ArrayTypeMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ArrayType;->getMetaModel()Lcom/github/javaparser/metamodel/ArrayTypeMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/ReferenceTypeMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ArrayType;->getMetaModel()Lcom/github/javaparser/metamodel/ArrayTypeMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/TypeMetaModel;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ArrayType;->getMetaModel()Lcom/github/javaparser/metamodel/ArrayTypeMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Lcom/github/javaparser/ast/type/ArrayType$Origin;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/type/ArrayType;->origin:Lcom/github/javaparser/ast/type/ArrayType$Origin;

    return-object v0
.end method

.method public ifArrayType(Ljava/util/function/Consumer;)V
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
            "Lcom/github/javaparser/ast/type/ArrayType;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isArrayType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 1
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

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/ast/type/ArrayType;->componentType:Lcom/github/javaparser/ast/type/Type;

    if-ne p1, v0, :cond_1

    check-cast p2, Lcom/github/javaparser/ast/type/Type;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/type/ArrayType;->setComponentType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/type/ArrayType;

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/type/Type;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public resolve()Lcom/github/javaparser/resolution/types/ResolvedArrayType;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getSymbolResolver()Lcom/github/javaparser/resolution/SymbolResolver;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    invoke-interface {v0, p0, v1}, Lcom/github/javaparser/resolution/SymbolResolver;->toResolvedType(Lcom/github/javaparser/ast/type/Type;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    return-object v0
.end method

.method public bridge synthetic resolve()Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ArrayType;->resolve()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ArrayType;->resolve()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/type/ArrayType;->setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/ArrayType;

    move-result-object p1

    return-object p1
.end method

.method public setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/ArrayType;
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
            "Lcom/github/javaparser/ast/type/ArrayType;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/type/Type;->setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/type/ArrayType;

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/type/ArrayType;->setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/ArrayType;

    move-result-object p1

    return-object p1
.end method

.method public setComponentType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/type/ArrayType;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "componentType"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/ast/type/ArrayType;->componentType:Lcom/github/javaparser/ast/type/Type;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->COMPONENT_TYPE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/type/ArrayType;->componentType:Lcom/github/javaparser/ast/type/Type;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/type/ArrayType;->componentType:Lcom/github/javaparser/ast/type/Type;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public setOrigin(Lcom/github/javaparser/ast/type/ArrayType$Origin;)Lcom/github/javaparser/ast/type/ArrayType;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "origin"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/ast/type/ArrayType;->origin:Lcom/github/javaparser/ast/type/ArrayType$Origin;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->ORIGIN:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/github/javaparser/ast/type/ArrayType;->origin:Lcom/github/javaparser/ast/type/ArrayType$Origin;

    return-object p0
.end method

.method public toArrayType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/type/ArrayType;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toDescriptor()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/github/javaparser/ast/type/ArrayType;->componentType:Lcom/github/javaparser/ast/type/Type;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/type/Type;->toDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
