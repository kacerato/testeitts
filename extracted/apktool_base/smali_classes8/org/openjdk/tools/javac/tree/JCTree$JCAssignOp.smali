.class public Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;
.super Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/CompoundAssignmentTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCAssignOp"
.end annotation


# instance fields
.field public lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

.field public rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->opcode:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p2, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast p3, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p3, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

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
    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/tree/TreeVisitor;->visitCompoundAssignment(Lorg/openjdk/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitAssignop(Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;)V

    return-void
.end method

.method public bridge synthetic getExpression()Lorg/openjdk/source/tree/ExpressionTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->getExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getKind()Lorg/openjdk/source/tree/Tree$Kind;
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->tagToKind(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v0

    return-object v0
.end method

.method public getOperand(Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression$OperandPos;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression$OperandPos;->LEFT:Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression$OperandPos;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getVariable()Lorg/openjdk/source/tree/ExpressionTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->getVariable()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getVariable()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method
