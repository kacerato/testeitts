.class Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;
.super Lorg/openjdk/tools/javac/tree/JCTree$Visitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/CRTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SourceComputer"
.end annotation


# instance fields
.field result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/CRTable;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/CRTable;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->this$0:Lorg/openjdk/tools/javac/jvm/CRTable;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;-><init>()V

    return-void
.end method


# virtual methods
.method public csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->this$0:Lorg/openjdk/tools/javac/jvm/CRTable;

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/CRTable;->access$000(Lorg/openjdk/tools/javac/jvm/CRTable;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-object p1
.end method

.method public csp(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>()V

    move-object v1, p1

    .line 7
    :goto_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    .line 9
    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->this$0:Lorg/openjdk/tools/javac/jvm/CRTable;

    invoke-static {v1}, Lorg/openjdk/tools/javac/jvm/CRTable;->access$000(Lorg/openjdk/tools/javac/jvm/CRTable;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public cspCases(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCase;",
            ">;)",
            "Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>()V

    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->this$0:Lorg/openjdk/tools/javac/jvm/CRTable;

    invoke-static {v1}, Lorg/openjdk/tools/javac/jvm/CRTable;->access$000(Lorg/openjdk/tools/javac/jvm/CRTable;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public cspCatchers(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;",
            ">;)",
            "Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>()V

    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->this$0:Lorg/openjdk/tools/javac/jvm/CRTable;

    invoke-static {v1}, Lorg/openjdk/tools/javac/jvm/CRTable;->access$000(Lorg/openjdk/tools/javac/jvm/CRTable;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->this$0:Lorg/openjdk/tools/javac/jvm/CRTable;

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/CRTable;->access$100(Lorg/openjdk/tools/javac/jvm/CRTable;)Lorg/openjdk/tools/javac/tree/EndPosTable;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p1

    return p1
.end method

.method public startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p1

    return p1
.end method

.method public visitApply(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitAssert(Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->detail:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitAssign(Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitAssignop(Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitBinary(Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitBlock(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitBreak(Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;)V
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitCase(Lorg/openjdk/tools/javac/tree/JCTree$JCCase;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->pat:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitCatch(Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->param:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitConditional(Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitContinue(Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;)V
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitDoLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitErroneous(Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitExec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitForLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->init:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->step:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitForeachLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitIf(Lorg/openjdk/tools/javac/tree/JCTree$JCIf;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->thenpart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->elsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitIndexed(Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->index:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitLabelled(Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitLetExpr(Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitLiteral(Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;)V
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitNewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->dims:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elems:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitParens(Lorg/openjdk/tools/javac/tree/JCTree$JCParens;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitReturn(Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitSkip(Lorg/openjdk/tools/javac/tree/JCTree$JCSkip;)V
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitSwitch(Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->cases:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->cspCases(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitSynchronized(Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;->lock:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitThrow(Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    return-void
.end method

.method public visitTry(Lorg/openjdk/tools/javac/tree/JCTree$JCTry;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->resources:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->catchers:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->cspCatchers(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitTypeApply(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitTypeArray(Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitTypeCast(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitTypeIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;)V
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitTypeParameter(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitTypeTest(Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitTypeUnion(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;->alternatives:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitUnary(Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitWhileLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method

.method public visitWildcard(Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->result:Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    return-void
.end method
