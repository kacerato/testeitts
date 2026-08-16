.class Lorg/openjdk/tools/javac/comp/Operators$BinaryStringOperator;
.super Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Operators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BinaryStringOperator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Operators;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators$BinaryStringOperator;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    return-void
.end method

.method private stringPromotion(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators$BinaryStringOperator;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/Operators;->unaryPromotion(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->BOT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators$BinaryStringOperator;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Operators;->access$000(Lorg/openjdk/tools/javac/comp/Operators;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Operators$BinaryStringOperator;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Operators;->access$200(Lorg/openjdk/tools/javac/comp/Operators;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getUpperBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Operators$BinaryStringOperator;->stringPromotion(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators$BinaryStringOperator;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Operators;->access$200(Lorg/openjdk/tools/javac/comp/Operators;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    :cond_3
    :goto_0
    return-object p1
.end method


# virtual methods
.method public resolve(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Operators$BinaryStringOperator;->stringPromotion(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Operators$BinaryStringOperator;->stringPromotion(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->doLookup(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Operators$BinaryStringOperator;->test(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1
.end method

.method public test(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 4

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators$BinaryStringOperator;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Operators;->access$000(Lorg/openjdk/tools/javac/comp/Operators;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Operators$BinaryStringOperator;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Operators;->access$200(Lorg/openjdk/tools/javac/comp/Operators;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators$BinaryStringOperator;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    .line 3
    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Operators;->access$000(Lorg/openjdk/tools/javac/comp/Operators;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Operators$BinaryStringOperator;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/Operators;->access$200(Lorg/openjdk/tools/javac/comp/Operators;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v3

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p2, v3}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 4
    :goto_1
    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v2

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v1

    :goto_3
    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    return v1
.end method
