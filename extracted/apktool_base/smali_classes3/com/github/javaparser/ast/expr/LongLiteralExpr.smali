.class public Lcom/github/javaparser/ast/expr/LongLiteralExpr;
.super Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;
.source "SourceFile"


# static fields
.field public static final MAX_63_BIT_UNSIGNED_VALUE_AS_BIG_INTEGER:Ljava/math/BigInteger;

.field public static final MAX_63_BIT_UNSIGNED_VALUE_AS_STRING:Ljava/lang/String; = "9223372036854775808L"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "9223372036854775808"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/javaparser/ast/expr/LongLiteralExpr;->MAX_63_BIT_UNSIGNED_VALUE_AS_BIG_INTEGER:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/expr/LongLiteralExpr;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(J)V
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
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/github/javaparser/ast/expr/LongLiteralExpr;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

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
    invoke-direct {p0, v0, p1}, Lcom/github/javaparser/ast/expr/LongLiteralExpr;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)V

    return-void
.end method

.method public asLong()J
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->value:Ljava/lang/String;

    const-string v1, "_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x6c

    if-eq v1, v3, :cond_0

    const/16 v3, 0x4c

    if-ne v1, v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x2

    if-nez v1, :cond_6

    const-string v1, "0X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "0b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "0B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_4

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0

    :cond_4
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_5
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0

    :cond_6
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public asLongLiteralExpr()Lcom/github/javaparser/ast/expr/LongLiteralExpr;
    .locals 0

    return-object p0
.end method

.method public asNumber()Ljava/lang/Number;
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->value:Ljava/lang/String;

    const-string v1, "9223372036854775808L"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/github/javaparser/utils/Utils;->hasUnaryMinusAsParent(Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/github/javaparser/ast/expr/LongLiteralExpr;->MAX_63_BIT_UNSIGNED_VALUE_AS_BIG_INTEGER:Ljava/math/BigInteger;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/LongLiteralExpr;->asLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/LongLiteralExpr;->clone()Lcom/github/javaparser/ast/expr/LongLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/LongLiteralExpr;->clone()Lcom/github/javaparser/ast/expr/LongLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/expr/LiteralExpr;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/LongLiteralExpr;->clone()Lcom/github/javaparser/ast/expr/LongLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/LongLiteralExpr;->clone()Lcom/github/javaparser/ast/expr/LongLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/expr/LongLiteralExpr;
    .locals 2

    .line 6
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/expr/LongLiteralExpr;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/LongLiteralExpr;

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
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/LongLiteralExpr;->clone()Lcom/github/javaparser/ast/expr/LongLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/LongLiteralExpr;->getMetaModel()Lcom/github/javaparser/metamodel/LongLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/LiteralExprMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/LongLiteralExpr;->getMetaModel()Lcom/github/javaparser/metamodel/LongLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/LiteralStringValueExprMetaModel;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/LongLiteralExpr;->getMetaModel()Lcom/github/javaparser/metamodel/LongLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/LongLiteralExprMetaModel;
    .locals 1

    .line 5
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->longLiteralExprMetaModel:Lcom/github/javaparser/metamodel/LongLiteralExprMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/LongLiteralExpr;->getMetaModel()Lcom/github/javaparser/metamodel/LongLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public ifLongLiteralExpr(Ljava/util/function/Consumer;)V
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
            "Lcom/github/javaparser/ast/expr/LongLiteralExpr;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isLongLiteralExpr()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setLong(J)Lcom/github/javaparser/ast/expr/LongLiteralExpr;
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

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->value:Ljava/lang/String;

    return-object p0
.end method

.method public toLongLiteralExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/LongLiteralExpr;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
