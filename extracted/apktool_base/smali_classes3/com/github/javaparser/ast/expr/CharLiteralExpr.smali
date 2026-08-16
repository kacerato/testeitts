.class public Lcom/github/javaparser/ast/expr/CharLiteralExpr;
.super Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    const-string v1, "?"

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/expr/CharLiteralExpr;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(C)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/javaparser/utils/StringEscapeUtils;->escapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/github/javaparser/ast/expr/CharLiteralExpr;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "value"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/github/javaparser/ast/expr/CharLiteralExpr;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    return-void
.end method

.method public static escape(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/CharLiteralExpr;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/ast/expr/CharLiteralExpr;

    invoke-static {p0}, Lcom/github/javaparser/utils/Utils;->escapeEndOfLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/github/javaparser/ast/expr/CharLiteralExpr;-><init>(Ljava/lang/String;)V

    return-object v0
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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)V

    return-void
.end method

.method public asChar()C
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/github/javaparser/utils/StringEscapeUtils;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public asCharLiteralExpr()Lcom/github/javaparser/ast/expr/CharLiteralExpr;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/CharLiteralExpr;->clone()Lcom/github/javaparser/ast/expr/CharLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/expr/CharLiteralExpr;
    .locals 2

    .line 6
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/expr/CharLiteralExpr;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/CharLiteralExpr;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/CharLiteralExpr;->clone()Lcom/github/javaparser/ast/expr/CharLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/expr/LiteralExpr;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/CharLiteralExpr;->clone()Lcom/github/javaparser/ast/expr/CharLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/CharLiteralExpr;->clone()Lcom/github/javaparser/ast/expr/CharLiteralExpr;

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

    .line 5
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/CharLiteralExpr;->clone()Lcom/github/javaparser/ast/expr/CharLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/CharLiteralExprMetaModel;
    .locals 1

    .line 5
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->charLiteralExprMetaModel:Lcom/github/javaparser/metamodel/CharLiteralExprMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/CharLiteralExpr;->getMetaModel()Lcom/github/javaparser/metamodel/CharLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/LiteralExprMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/CharLiteralExpr;->getMetaModel()Lcom/github/javaparser/metamodel/CharLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/LiteralStringValueExprMetaModel;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/CharLiteralExpr;->getMetaModel()Lcom/github/javaparser/metamodel/CharLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/CharLiteralExpr;->getMetaModel()Lcom/github/javaparser/metamodel/CharLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public ifCharLiteralExpr(Ljava/util/function/Consumer;)V
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
            "Lcom/github/javaparser/ast/expr/CharLiteralExpr;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isCharLiteralExpr()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setChar(C)Lcom/github/javaparser/ast/expr/CharLiteralExpr;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->value:Ljava/lang/String;

    return-object p0
.end method

.method public toCharLiteralExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/CharLiteralExpr;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
