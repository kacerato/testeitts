.class public Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;
.super Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/BinaryTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCBinary"
.end annotation


# instance fields
.field public lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

.field public rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->opcode:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    iput-object p2, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p3, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p4, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/source/tree/TreeVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/tree/TreeVisitor;->visitBinary(Lorg/openjdk/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitBinary(Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;)V

    return-void
.end method

.method public getKind()Lorg/openjdk/source/tree/Tree$Kind;
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->tagToKind(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLeftOperand()Lorg/openjdk/source/tree/ExpressionTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->getLeftOperand()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getLeftOperand()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getOperand(Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression$OperandPos;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression$OperandPos;->LEFT:Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression$OperandPos;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getRightOperand()Lorg/openjdk/source/tree/ExpressionTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->getRightOperand()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getRightOperand()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method
