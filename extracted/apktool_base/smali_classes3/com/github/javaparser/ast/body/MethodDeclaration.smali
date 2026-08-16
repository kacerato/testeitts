.class public Lcom/github/javaparser/ast/body/MethodDeclaration;
.super Lcom/github/javaparser/ast/body/CallableDeclaration;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithType;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithOptionalBlockStmt;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithDeclaration;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeParameters;
.implements Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithAccessModifiers;
.implements Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithAbstractModifier;
.implements Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithStaticModifier;
.implements Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithFinalModifier;
.implements Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithStrictfpModifier;
.implements Lcom/github/javaparser/resolution/Resolvable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/ast/body/CallableDeclaration<",
        "Lcom/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithType<",
        "Lcom/github/javaparser/ast/body/MethodDeclaration;",
        "Lcom/github/javaparser/ast/type/Type;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithOptionalBlockStmt<",
        "Lcom/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc<",
        "Lcom/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithDeclaration;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName<",
        "Lcom/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters<",
        "Lcom/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions<",
        "Lcom/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeParameters<",
        "Lcom/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithAccessModifiers<",
        "Lcom/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithAbstractModifier<",
        "Lcom/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithStaticModifier<",
        "Lcom/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithFinalModifier<",
        "Lcom/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithStrictfpModifier<",
        "Lcom/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lcom/github/javaparser/resolution/Resolvable<",
        "Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
        ">;"
    }
.end annotation


# instance fields
.field private body:Lcom/github/javaparser/ast/stmt/BlockStmt;
    .annotation runtime Lcom/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private type:Lcom/github/javaparser/ast/type/Type;


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    new-instance v2, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v2}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v3, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v3}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v4, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v5, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-direct {v5}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;-><init>()V

    new-instance v6, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v6}, Lcom/github/javaparser/ast/expr/SimpleName;-><init>()V

    new-instance v7, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v7}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v8, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v8}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v9, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v9}, Lcom/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    const/4 v10, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/github/javaparser/ast/body/MethodDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/body/ReceiverParameter;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/body/ReceiverParameter;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
            "type",
            "name",
            "parameters",
            "thrownExceptions",
            "body",
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
            "Lcom/github/javaparser/ast/type/Type;",
            "Lcom/github/javaparser/ast/expr/SimpleName;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ">;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/ReferenceType;",
            ">;",
            "Lcom/github/javaparser/ast/stmt/BlockStmt;",
            "Lcom/github/javaparser/ast/body/ReceiverParameter;",
            ")V"
        }
    .end annotation

    move-object v9, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p10

    .line 6
    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/ast/body/CallableDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/body/ReceiverParameter;)V

    move-object v0, p5

    .line 7
    invoke-virtual {p0, p5}, Lcom/github/javaparser/ast/body/MethodDeclaration;->setType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-object/from16 v0, p9

    .line 8
    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->setBody(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    .line 9
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "modifiers",
            "annotations",
            "typeParameters",
            "type",
            "name",
            "parameters",
            "thrownExceptions",
            "body"
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
            "Lcom/github/javaparser/ast/type/Type;",
            "Lcom/github/javaparser/ast/expr/SimpleName;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ">;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/ReferenceType;",
            ">;",
            "Lcom/github/javaparser/ast/stmt/BlockStmt;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 4
    invoke-direct/range {v0 .. v10}, Lcom/github/javaparser/ast/body/MethodDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/body/ReceiverParameter;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/body/ReceiverParameter;)V
    .locals 11
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "modifiers",
            "annotations",
            "typeParameters",
            "type",
            "name",
            "parameters",
            "thrownExceptions",
            "body",
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
            "Lcom/github/javaparser/ast/type/Type;",
            "Lcom/github/javaparser/ast/expr/SimpleName;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ">;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/ReferenceType;",
            ">;",
            "Lcom/github/javaparser/ast/stmt/BlockStmt;",
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

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 5
    invoke-direct/range {v0 .. v10}, Lcom/github/javaparser/ast/body/MethodDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/body/ReceiverParameter;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "modifiers",
            "type",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;",
            "Lcom/github/javaparser/ast/type/Type;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    new-instance v3, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v3}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v4, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v6, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v6, p3}, Lcom/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v7}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v8, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v8}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v9, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v9}, Lcom/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    const/4 v10, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v10}, Lcom/github/javaparser/ast/body/MethodDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/body/ReceiverParameter;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Ljava/lang/String;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/NodeList;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "modifiers",
            "name",
            "type",
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/ast/type/Type;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ">;)V"
        }
    .end annotation

    .line 3
    new-instance v3, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v3}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v4, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v6, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v6, p2}, Lcom/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v8}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v9, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v9}, Lcom/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    const/4 v10, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v10}, Lcom/github/javaparser/ast/body/MethodDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/body/ReceiverParameter;)V

    return-void
.end method

.method private isImplicitlyAbstract()Z
    .locals 3

    invoke-interface {p0}, Lcom/github/javaparser/HasParentNode;->hasParentNode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->STATIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->DEFAULT:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v2, Lcom/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0, v1, v2}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/body/m;

    invoke-direct {v1, p0}, Lcom/github/javaparser/ast/body/m;-><init>(Lcom/github/javaparser/ast/body/MethodDeclaration;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isImplicitlyPublic()Z
    .locals 2

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->getAccessSpecifier()Lcom/github/javaparser/ast/AccessSpecifier;

    move-result-object v0

    sget-object v1, Lcom/github/javaparser/ast/AccessSpecifier;->NONE:Lcom/github/javaparser/ast/AccessSpecifier;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/HasParentNode;->hasParentNode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$isImplicitlyAbstract$0(Lcom/github/javaparser/ast/Modifier$Keyword;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "modifier"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->hasModifier(Lcom/github/javaparser/ast/Modifier$Keyword;)Z

    move-result p1

    return p1
.end method

.method public static synthetic m0(Lcom/github/javaparser/ast/body/MethodDeclaration;Lcom/github/javaparser/ast/Modifier$Keyword;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->lambda$isImplicitlyAbstract$0(Lcom/github/javaparser/ast/Modifier$Keyword;)Z

    move-result p0

    return p0
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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)V

    return-void
.end method

.method public asMethodDeclaration()Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->clone()Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/body/BodyDeclaration;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->clone()Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/body/CallableDeclaration;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->clone()Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 2

    .line 5
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/MethodDeclaration;

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
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->clone()Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/stmt/BlockStmt;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/body/MethodDeclaration;->body:Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getDeclarationAsString(ZZZ)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "includingModifiers",
            "includingThrows",
            "includingParameterName"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->getAccessSpecifier()Lcom/github/javaparser/ast/AccessSpecifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/AccessSpecifier;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithStaticModifier;->isStatic()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "static "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->isAbstract()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "abstract "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithFinalModifier;->isFinal()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "final "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->isNative()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "native "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->isSynchronized()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "synchronized "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    sget-object v2, Lcom/github/javaparser/ast/Node;->prettyPrinterNoCommentsConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    invoke-virtual {p1, v2}, Lcom/github/javaparser/ast/Node;->toString(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/github/javaparser/ast/Node;->toString(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/body/Parameter;

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-eqz p3, :cond_7

    sget-object v3, Lcom/github/javaparser/ast/Node;->prettyPrinterNoCommentsConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    invoke-virtual {v2, v3}, Lcom/github/javaparser/ast/Node;->toString(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    invoke-virtual {v2}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v3

    sget-object v4, Lcom/github/javaparser/ast/Node;->prettyPrinterNoCommentsConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    invoke-virtual {v3, v4}, Lcom/github/javaparser/ast/Node;->toString(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/body/Parameter;->isVarArgs()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_8
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->appendThrowsIfRequested(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/BodyDeclarationMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getMetaModel()Lcom/github/javaparser/metamodel/MethodDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/CallableDeclarationMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getMetaModel()Lcom/github/javaparser/metamodel/MethodDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/MethodDeclarationMetaModel;
    .locals 1

    .line 4
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->methodDeclarationMetaModel:Lcom/github/javaparser/metamodel/MethodDeclarationMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getMetaModel()Lcom/github/javaparser/metamodel/MethodDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/github/javaparser/ast/type/Type;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/body/MethodDeclaration;->type:Lcom/github/javaparser/ast/type/Type;

    return-object v0
.end method

.method public ifMethodDeclaration(Ljava/util/function/Consumer;)V
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
            "Lcom/github/javaparser/ast/body/MethodDeclaration;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isAbstract()Z
    .locals 1

    invoke-super {p0}, Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithAbstractModifier;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->isImplicitlyAbstract()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isDefault()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->DEFAULT:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->hasModifier(Lcom/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v0

    return v0
.end method

.method public isMethodDeclaration()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNative()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->NATIVE:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->hasModifier(Lcom/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v0

    return v0
.end method

.method public isPublic()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->hasModifier(Lcom/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->isImplicitlyPublic()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSynchronized()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->SYNCHRONIZED:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->hasModifier(Lcom/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v0

    return v0
.end method

.method public remove(Lcom/github/javaparser/ast/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/ast/body/MethodDeclaration;->body:Lcom/github/javaparser/ast/stmt/BlockStmt;

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->removeBody()Lcom/github/javaparser/ast/body/MethodDeclaration;

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->remove(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic removeBody()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->removeBody()Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public removeBody()Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->setBody(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object v0

    return-object v0
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

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/ast/body/MethodDeclaration;->body:Lcom/github/javaparser/ast/stmt/BlockStmt;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_1

    check-cast p2, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/body/MethodDeclaration;->setBody(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    return v1

    :cond_1
    iget-object v0, p0, Lcom/github/javaparser/ast/body/MethodDeclaration;->type:Lcom/github/javaparser/ast/type/Type;

    if-ne p1, v0, :cond_2

    check-cast p2, Lcom/github/javaparser/ast/type/Type;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/body/MethodDeclaration;->setType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    return v1

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public resolve()Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getSymbolResolver()Lcom/github/javaparser/resolution/SymbolResolver;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    invoke-interface {v0, p0, v1}, Lcom/github/javaparser/resolution/SymbolResolver;->resolveDeclaration(Lcom/github/javaparser/ast/Node;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    return-object v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->resolve()Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBody(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "body"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->setBody(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setBody(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "body"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/ast/body/MethodDeclaration;->body:Lcom/github/javaparser/ast/stmt/BlockStmt;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->BODY:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/github/javaparser/ast/body/MethodDeclaration;->body:Lcom/github/javaparser/ast/stmt/BlockStmt;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/body/MethodDeclaration;->body:Lcom/github/javaparser/ast/stmt/BlockStmt;

    .line 6
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public setDefault(Z)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->DEFAULT:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {p0, v0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->setModifier(Lcom/github/javaparser/ast/Modifier$Keyword;Z)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/MethodDeclaration;

    return-object p1
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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "modifiers"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 0
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
            ">;)",
            "Lcom/github/javaparser/ast/body/MethodDeclaration;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/MethodDeclaration;

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/CallableDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "name"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/MethodDeclaration;

    return-object p1
.end method

.method public setNative(Z)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->NATIVE:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {p0, v0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->setModifier(Lcom/github/javaparser/ast/Modifier$Keyword;Z)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/MethodDeclaration;

    return-object p1
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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->setParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->setParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 0
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
            ">;)",
            "Lcom/github/javaparser/ast/body/MethodDeclaration;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->setParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/MethodDeclaration;

    return-object p1
.end method

.method public setSynchronized(Z)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->SYNCHRONIZED:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {p0, v0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->setModifier(Lcom/github/javaparser/ast/Modifier$Keyword;Z)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/MethodDeclaration;

    return-object p1
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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->setThrownExceptions(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setThrownExceptions(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "thrownExceptions"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->setThrownExceptions(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setThrownExceptions(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 0
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
            ">;)",
            "Lcom/github/javaparser/ast/body/MethodDeclaration;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->setThrownExceptions(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/MethodDeclaration;

    return-object p1
.end method

.method public bridge synthetic setType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->setType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/body/MethodDeclaration;->type:Lcom/github/javaparser/ast/type/Type;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/body/MethodDeclaration;->type:Lcom/github/javaparser/ast/type/Type;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/body/MethodDeclaration;->type:Lcom/github/javaparser/ast/type/Type;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->setTypeParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setTypeParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "typeParameters"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->setTypeParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setTypeParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 0
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
            ">;)",
            "Lcom/github/javaparser/ast/body/MethodDeclaration;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->setTypeParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/MethodDeclaration;

    return-object p1
.end method

.method public toDescriptor()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->getParameter(I)Lcom/github/javaparser/ast/body/Parameter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/javaparser/ast/type/Type;->toDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/ast/type/Type;->toDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toMethodDeclaration()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/MethodDeclaration;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
