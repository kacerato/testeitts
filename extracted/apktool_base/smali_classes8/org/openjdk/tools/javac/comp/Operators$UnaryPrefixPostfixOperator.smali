.class Lorg/openjdk/tools/javac/comp/Operators$UnaryPrefixPostfixOperator;
.super Lorg/openjdk/tools/javac/comp/Operators$UnaryNumericOperator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Operators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnaryPrefixPostfixOperator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Operators;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators$UnaryPrefixPostfixOperator;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Operators$UnaryNumericOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    return-void
.end method


# virtual methods
.method public resolve(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators$UnaryPrefixPostfixOperator;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Operators;->access$000(Lorg/openjdk/tools/javac/comp/Operators;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->unboxedTypeOrType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->doLookup(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p1

    return-object p1
.end method
