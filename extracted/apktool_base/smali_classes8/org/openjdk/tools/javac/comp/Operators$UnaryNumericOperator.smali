.class Lorg/openjdk/tools/javac/comp/Operators$UnaryNumericOperator;
.super Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Operators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnaryNumericOperator"
.end annotation


# instance fields
.field numericTest:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Operators;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/comp/D1;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/comp/D1;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Operators$UnaryNumericOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$Tag;",
            "Ljava/util/function/Predicate<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators$UnaryNumericOperator;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    .line 4
    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Operators$UnaryNumericOperator;->numericTest:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public resolve(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators$UnaryNumericOperator;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/Operators;->unaryPromotion(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->doLookup(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Operators$UnaryNumericOperator;->test(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1
.end method

.method public test(Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators$UnaryNumericOperator;->numericTest:Ljava/util/function/Predicate;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Operators$UnaryNumericOperator;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/comp/Operators;->unaryPromotion(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
