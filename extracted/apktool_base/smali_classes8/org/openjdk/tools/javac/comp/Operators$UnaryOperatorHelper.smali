.class abstract Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;
.super Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Operators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "UnaryOperatorHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;",
        "Ljava/util/function/Predicate<",
        "Lorg/openjdk/tools/javac/code/Type;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Operators;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    return-void
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->lambda$addUnaryOperator$1(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->lambda$doLookup$0(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$addUnaryOperator$1(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-static {v0, v1, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Operators;->access$100(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$doLookup$0(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)Z
    .locals 0

    invoke-virtual {p0, p2, p1}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->isUnaryOperatorApplicable(Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final varargs addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;->operatorSuppliers:Lorg/openjdk/tools/javac/util/List;

    new-instance v1, Lorg/openjdk/tools/javac/comp/U1;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/U1;-><init>(Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)V

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;->operatorSuppliers:Lorg/openjdk/tools/javac/util/List;

    return-object p0
.end method

.method public final doLookup(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/V1;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/comp/V1;-><init>(Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;->doLookup(Ljava/util/function/Predicate;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p1

    return-object p1
.end method

.method public isUnaryOperatorApplicable(Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Operators;->access$000(Lorg/openjdk/tools/javac/comp/Operators;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1
.end method

.method public abstract resolve(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
.end method
