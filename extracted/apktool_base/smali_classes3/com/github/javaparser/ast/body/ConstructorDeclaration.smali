.class public Lcom/github/javaparser/ast/body/ConstructorDeclaration;
.super Lcom/github/javaparser/ast/body/CallableDeclaration;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithBlockStmt;
.implements Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithAccessModifiers;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeParameters;
.implements Lcom/github/javaparser/resolution/Resolvable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/ast/body/CallableDeclaration<",
        "Lcom/github/javaparser/ast/body/ConstructorDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithBlockStmt<",
        "Lcom/github/javaparser/ast/body/ConstructorDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithAccessModifiers<",
        "Lcom/github/javaparser/ast/body/ConstructorDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc<",
        "Lcom/github/javaparser/ast/body/ConstructorDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName<",
        "Lcom/github/javaparser/ast/body/ConstructorDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters<",
        "Lcom/github/javaparser/ast/body/ConstructorDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions<",
        "Lcom/github/javaparser/ast/body/ConstructorDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeParameters<",
        "Lcom/github/javaparser/ast/body/ConstructorDeclaration;",
        ">;",
        "Lcom/github/javaparser/resolution/Resolvable<",
        "Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;",
        ">;"
    }
.end annotation


# instance fields
.field private body:Lcom/github/javaparser/ast/stmt/BlockStmt;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    new-instance v2, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v2}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v3, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v3}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v4, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v5, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v5}, Lcom/github/javaparser/ast/expr/SimpleName;-><init>()V

    new-instance v6, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v6}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v7, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v7}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v8, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v8}, Lcom/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    const/4 v9, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/body/ReceiverParameter;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/body/ReceiverParameter;)V
    .locals 9
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

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    .line 6
    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/ast/body/CallableDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/body/ReceiverParameter;)V

    move-object/from16 v1, p8

    .line 7
    invoke-virtual {p0, v1}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->setBody(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    .line 8
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;)V
    .locals 10
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

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 4
    invoke-direct/range {v0 .. v9}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/body/ReceiverParameter;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/body/ReceiverParameter;)V
    .locals 10
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

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 5
    invoke-direct/range {v0 .. v9}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/body/ReceiverParameter;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "modifiers",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    new-instance v3, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v3}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v4, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v5, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v5, p2}, Lcom/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v6}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v7, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v7}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v8, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v8}, Lcom/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    const/4 v9, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/body/ReceiverParameter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 2
    new-instance v2, Lcom/github/javaparser/ast/NodeList;

    new-instance v0, Lcom/github/javaparser/ast/Modifier;

    invoke-direct {v0}, Lcom/github/javaparser/ast/Modifier;-><init>()V

    filled-new-array {v0}, [Lcom/github/javaparser/ast/Modifier;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/github/javaparser/ast/NodeList;-><init>([Lcom/github/javaparser/ast/Node;)V

    new-instance v3, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v3}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v4, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v5, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v5, p1}, Lcom/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v6}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v7, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v7}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v8, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v8}, Lcom/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    const/4 v9, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/body/ReceiverParameter;)V

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)V

    return-void
.end method

.method public asConstructorDeclaration()Lcom/github/javaparser/ast/body/ConstructorDeclaration;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->clone()Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/body/BodyDeclaration;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->clone()Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/body/CallableDeclaration;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->clone()Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/body/ConstructorDeclaration;
    .locals 2

    .line 5
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/ConstructorDeclaration;

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
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->clone()Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->body:Lcom/github/javaparser/ast/stmt/BlockStmt;

    return-object v0
.end method

.method public getDeclarationAsString(ZZZ)Ljava/lang/String;
    .locals 4
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

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->getAccessSpecifier()Lcom/github/javaparser/ast/AccessSpecifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/AccessSpecifier;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/body/Parameter;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-eqz p3, :cond_2

    sget-object v3, Lcom/github/javaparser/ast/Node;->prettyPrinterNoCommentsConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    invoke-virtual {v2, v3}, Lcom/github/javaparser/ast/Node;->toString(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v2

    sget-object v3, Lcom/github/javaparser/ast/Node;->prettyPrinterNoCommentsConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    invoke-virtual {v2, v3}, Lcom/github/javaparser/ast/Node;->toString(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
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
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->getMetaModel()Lcom/github/javaparser/metamodel/ConstructorDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/CallableDeclarationMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->getMetaModel()Lcom/github/javaparser/metamodel/ConstructorDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/ConstructorDeclarationMetaModel;
    .locals 1

    .line 4
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->constructorDeclarationMetaModel:Lcom/github/javaparser/metamodel/ConstructorDeclarationMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->getMetaModel()Lcom/github/javaparser/metamodel/ConstructorDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public ifConstructorDeclaration(Ljava/util/function/Consumer;)V
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
            "Lcom/github/javaparser/ast/body/ConstructorDeclaration;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isConstructorDeclaration()Z
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
    iget-object v0, p0, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->body:Lcom/github/javaparser/ast/stmt/BlockStmt;

    if-ne p1, v0, :cond_1

    check-cast p2, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->setBody(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public resolve()Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getSymbolResolver()Lcom/github/javaparser/resolution/SymbolResolver;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;

    invoke-interface {v0, p0, v1}, Lcom/github/javaparser/resolution/SymbolResolver;->resolveDeclaration(Lcom/github/javaparser/ast/Node;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;

    return-object v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->resolve()Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->setBody(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setBody(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;
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
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->body:Lcom/github/javaparser/ast/stmt/BlockStmt;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->BODY:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->body:Lcom/github/javaparser/ast/stmt/BlockStmt;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->body:Lcom/github/javaparser/ast/stmt/BlockStmt;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;
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
            "Lcom/github/javaparser/ast/body/ConstructorDeclaration;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/ConstructorDeclaration;

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;
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

    check-cast p1, Lcom/github/javaparser/ast/body/ConstructorDeclaration;

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->setParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->setParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;
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
            "Lcom/github/javaparser/ast/body/ConstructorDeclaration;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->setParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/ConstructorDeclaration;

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->setThrownExceptions(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->setThrownExceptions(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setThrownExceptions(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;
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
            "Lcom/github/javaparser/ast/body/ConstructorDeclaration;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->setThrownExceptions(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    return-object p1
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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->setTypeParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->setTypeParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setTypeParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;
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
            "Lcom/github/javaparser/ast/body/ConstructorDeclaration;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->setTypeParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    return-object p1
.end method

.method public toConstructorDeclaration()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/ConstructorDeclaration;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toDescriptor()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
    const-string v1, ")V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
