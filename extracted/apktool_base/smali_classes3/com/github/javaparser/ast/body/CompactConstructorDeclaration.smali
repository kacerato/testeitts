.class public Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;
.super Lcom/github/javaparser/ast/body/BodyDeclaration;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithBlockStmt;
.implements Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithAccessModifiers;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeParameters;
.implements Lcom/github/javaparser/resolution/Resolvable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/ast/body/BodyDeclaration<",
        "Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithBlockStmt<",
        "Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithAccessModifiers<",
        "Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc<",
        "Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName<",
        "Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions<",
        "Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeParameters<",
        "Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;",
        ">;",
        "Lcom/github/javaparser/resolution/Resolvable<",
        "Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;",
        ">;"
    }
.end annotation


# instance fields
.field private body:Lcom/github/javaparser/ast/stmt/BlockStmt;

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
.method public constructor <init>()V
    .locals 8

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

    new-instance v7, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v7}, Lcom/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;)V
    .locals 0
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
            "tokenRange",
            "modifiers",
            "annotations",
            "typeParameters",
            "name",
            "thrownExceptions",
            "body"
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
            "Lcom/github/javaparser/ast/type/ReferenceType;",
            ">;",
            "Lcom/github/javaparser/ast/stmt/BlockStmt;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p3}, Lcom/github/javaparser/ast/body/BodyDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;)V

    .line 6
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;

    .line 7
    invoke-virtual {p0, p4}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->setTypeParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;

    .line 8
    invoke-virtual {p0, p5}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;

    .line 9
    invoke-virtual {p0, p6}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->setThrownExceptions(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;

    .line 10
    invoke-virtual {p0, p7}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->setBody(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;

    .line 11
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "annotations",
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/TokenRange;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;",
            "Lcom/github/javaparser/ast/stmt/BlockStmt;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;)V

    .line 13
    invoke-virtual {p0, p3}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->setBody(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;

    .line 14
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;)V
    .locals 8
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

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
            "modifiers",
            "annotations",
            "typeParameters",
            "name",
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
            "Lcom/github/javaparser/ast/type/ReferenceType;",
            ">;",
            "Lcom/github/javaparser/ast/stmt/BlockStmt;",
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

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Ljava/lang/String;)V
    .locals 8
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

    new-instance v7, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v7}, Lcom/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
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

    new-instance v7, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v7}, Lcom/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;)V

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;Ljava/lang/Object;)V

    return-void
.end method

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

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

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

.method public asCompactConstructorDeclaration()Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->clone()Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/body/BodyDeclaration;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->clone()Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;
    .locals 2

    .line 4
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;

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
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->clone()Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->body:Lcom/github/javaparser/ast/stmt/BlockStmt;

    return-object v0
.end method

.method public getDeclarationAsString(ZZZ)Ljava/lang/String;
    .locals 0
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

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->getAccessSpecifier()Lcom/github/javaparser/ast/AccessSpecifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/AccessSpecifier;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->appendThrowsIfRequested(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/BodyDeclarationMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getMetaModel()Lcom/github/javaparser/metamodel/CompactConstructorDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/CompactConstructorDeclarationMetaModel;
    .locals 1

    .line 3
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->compactConstructorDeclarationMetaModel:Lcom/github/javaparser/metamodel/CompactConstructorDeclarationMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getMetaModel()Lcom/github/javaparser/metamodel/CompactConstructorDeclarationMetaModel;

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

    iget-object v0, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getName()Lcom/github/javaparser/ast/expr/SimpleName;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->name:Lcom/github/javaparser/ast/expr/SimpleName;

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

    iget-object v0, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->thrownExceptions:Lcom/github/javaparser/ast/NodeList;

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

    iget-object v0, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->typeParameters:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public ifCompactConstructorDeclaration(Ljava/util/function/Consumer;)V
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
            "Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isCompactConstructorDeclaration()Z
    .locals 1

    const/4 v0, 0x1

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
    iget-object v2, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v1}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->thrownExceptions:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->thrownExceptions:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_3

    iget-object p1, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->thrownExceptions:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v1}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->typeParameters:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->typeParameters:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_5

    iget-object p1, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->typeParameters:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->remove(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
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
    iget-object v1, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->body:Lcom/github/javaparser/ast/stmt/BlockStmt;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    check-cast p2, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->setBody(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;

    return v2

    :cond_1
    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v3}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v3, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v3

    if-ne v3, p1, :cond_2

    iget-object p1, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/Modifier;

    invoke-virtual {p1, v1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    if-ne p1, v1, :cond_4

    check-cast p2, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;

    return v2

    :cond_4
    move v1, v0

    :goto_1
    iget-object v3, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->thrownExceptions:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v3}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->thrownExceptions:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v3, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v3

    if-ne v3, p1, :cond_5

    iget-object p1, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->thrownExceptions:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/type/ReferenceType;

    invoke-virtual {p1, v1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->typeParameters:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->typeParameters:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_7

    iget-object p1, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->typeParameters:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/type/TypeParameter;

    invoke-virtual {p1, v0, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

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
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->resolve()Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->setBody(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setBody(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;
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
    iget-object v0, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->body:Lcom/github/javaparser/ast/stmt/BlockStmt;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->BODY:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->body:Lcom/github/javaparser/ast/stmt/BlockStmt;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->body:Lcom/github/javaparser/ast/stmt/BlockStmt;

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;
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
            ">;)",
            "Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->MODIFIERS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;
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
    iget-object v0, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->NAME:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    .line 7
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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->setThrownExceptions(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setThrownExceptions(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;
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
            ">;)",
            "Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->thrownExceptions:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->THROWN_EXCEPTIONS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->thrownExceptions:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->thrownExceptions:Lcom/github/javaparser/ast/NodeList;

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->setTypeParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setTypeParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;
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
            ">;)",
            "Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->typeParameters:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPE_PARAMETERS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->typeParameters:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->typeParameters:Lcom/github/javaparser/ast/NodeList;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public toCompactConstructorDeclaration()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
