.class public Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;
.super Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;
.source "SourceFile"


# static fields
.field public static final MAX_31_BIT_UNSIGNED_VALUE_AS_LONG:J = 0x80000000L

.field public static final MAX_31_BIT_UNSIGNED_VALUE_AS_STRING:Ljava/lang/String; = "2147483648"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

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

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)V

    return-void
.end method

.method public asInt()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->value:Ljava/lang/String;

    const-string v1, "_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_4

    const-string v1, "0X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "0b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "0B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_3
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_4
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public asIntegerLiteralExpr()Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;
    .locals 0

    return-object p0
.end method

.method public asNumber()Ljava/lang/Number;
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->value:Ljava/lang/String;

    const-string v1, "2147483648"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/github/javaparser/utils/Utils;->hasUnaryMinusAsParent(Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x80000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;->asInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;->clone()Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;->clone()Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;
    .locals 2

    .line 6
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/expr/LiteralExpr;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;->clone()Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;->clone()Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;

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
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;->clone()Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;->getMetaModel()Lcom/github/javaparser/metamodel/IntegerLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/IntegerLiteralExprMetaModel;
    .locals 1

    .line 5
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->integerLiteralExprMetaModel:Lcom/github/javaparser/metamodel/IntegerLiteralExprMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/LiteralExprMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;->getMetaModel()Lcom/github/javaparser/metamodel/IntegerLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/LiteralStringValueExprMetaModel;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;->getMetaModel()Lcom/github/javaparser/metamodel/IntegerLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;->getMetaModel()Lcom/github/javaparser/metamodel/IntegerLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public ifIntegerLiteralExpr(Ljava/util/function/Consumer;)V
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
            "Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isIntegerLiteralExpr()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setInt(I)Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->value:Ljava/lang/String;

    return-object p0
.end method

.method public toIntegerLiteralExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
