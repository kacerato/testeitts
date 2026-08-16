.class Lorg/openjdk/tools/javac/comp/Operators$BinaryEqualityOperator;
.super Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Operators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BinaryEqualityOperator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Operators;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators$BinaryEqualityOperator;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    return-void
.end method

.method private getKind(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;
    .locals 2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    sget-object p1, Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;->NUMERIC_OR_BOOLEAN:Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

    return-object p1

    :cond_0
    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators$BinaryEqualityOperator;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/comp/Operators;->unaryPromotion(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;->NUMERIC_OR_BOOLEAN:Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;->INVALID:Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

    :goto_0
    return-object p1

    :cond_2
    if-eqz v1, :cond_4

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Operators$BinaryEqualityOperator;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/comp/Operators;->unaryPromotion(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;->NUMERIC_OR_BOOLEAN:Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

    goto :goto_1

    :cond_3
    sget-object p1, Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;->INVALID:Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

    :goto_1
    return-object p1

    :cond_4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isNullOrReference()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isNullOrReference()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;->REFERENCE:Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

    goto :goto_2

    :cond_5
    sget-object p1, Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;->INVALID:Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

    :goto_2
    return-object p1
.end method


# virtual methods
.method public resolve(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Operators$BinaryEqualityOperator;->getKind(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;->NUMERIC_OR_BOOLEAN:Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators$BinaryEqualityOperator;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Operators;->binaryPromotion(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators$BinaryEqualityOperator;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Operators;->access$200(Lorg/openjdk/tools/javac/comp/Operators;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    invoke-virtual {p0, p1, p1}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->doLookup(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Operators$BinaryEqualityOperator;->test(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1
.end method

.method public test(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Operators$BinaryEqualityOperator;->getKind(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

    move-result-object p1

    sget-object p2, Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;->INVALID:Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
