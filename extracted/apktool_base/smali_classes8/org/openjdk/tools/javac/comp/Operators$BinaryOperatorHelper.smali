.class abstract Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;
.super Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Operators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BinaryOperatorHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;",
        "Ljava/util/function/BiPredicate<",
        "Lorg/openjdk/tools/javac/code/Type;",
        "Lorg/openjdk/tools/javac/code/Type;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Operators;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    return-void
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->lambda$doLookup$0(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->lambda$addBinaryOperator$1(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$addBinaryOperator$1(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-static {v0, v1, p1, p3, p4}, Lorg/openjdk/tools/javac/comp/Operators;->access$100(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$doLookup$0(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)Z
    .locals 0

    invoke-virtual {p0, p3, p1, p2}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->isBinaryOperatorApplicable(Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final varargs addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;
    .locals 8

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;->operatorSuppliers:Lorg/openjdk/tools/javac/util/List;

    new-instance v7, Lorg/openjdk/tools/javac/comp/F1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/F1;-><init>(Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)V

    invoke-virtual {v0, v7}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;->operatorSuppliers:Lorg/openjdk/tools/javac/util/List;

    return-object p0
.end method

.method public final doLookup(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/E1;

    invoke-direct {v0, p0, p1, p2}, Lorg/openjdk/tools/javac/comp/E1;-><init>(Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;->doLookup(Ljava/util/function/Predicate;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p1

    return-object p1
.end method

.method public isBinaryOperatorApplicable(Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 2

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Operators;->access$000(Lorg/openjdk/tools/javac/comp/Operators;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1, p2}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/Operators;->access$000(Lorg/openjdk/tools/javac/comp/Operators;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object p2

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2, p1, p3}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract resolve(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
.end method
