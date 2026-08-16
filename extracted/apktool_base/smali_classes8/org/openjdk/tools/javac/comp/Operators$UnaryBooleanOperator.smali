.class Lorg/openjdk/tools/javac/comp/Operators$UnaryBooleanOperator;
.super Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Operators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnaryBooleanOperator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Operators;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators$UnaryBooleanOperator;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    return-void
.end method


# virtual methods
.method public resolve(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators$UnaryBooleanOperator;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Operators;->access$200(Lorg/openjdk/tools/javac/comp/Operators;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->doLookup(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Operators$UnaryBooleanOperator;->test(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1
.end method

.method public test(Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators$UnaryBooleanOperator;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Operators;->access$000(Lorg/openjdk/tools/javac/comp/Operators;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->unboxedTypeOrType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->BOOLEAN:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p1

    return p1
.end method
