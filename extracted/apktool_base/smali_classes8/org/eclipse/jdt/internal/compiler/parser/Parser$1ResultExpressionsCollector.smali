.class Lorg/eclipse/jdt/internal/compiler/parser/Parser$1ResultExpressionsCollector;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/parser/Parser;->collectResultExpressions(Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultExpressionsCollector"
.end annotation


# instance fields
.field targetSwitchExpressions:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/parser/Parser;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1ResultExpressionsCollector;->this$0:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1ResultExpressionsCollector;->targetSwitchExpressions:Ljava/util/Stack;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1ResultExpressionsCollector;->targetSwitchExpressions:Ljava/util/Stack;

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1ResultExpressionsCollector;->targetSwitchExpressions:Ljava/util/Stack;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1ResultExpressionsCollector;->targetSwitchExpressions:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 1

    .line 11
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1ResultExpressionsCollector;->targetSwitchExpressions:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    .line 12
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_0

    .line 13
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1ResultExpressionsCollector;->targetSwitchExpressions:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    iput-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->switchExpression:Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    const/4 p2, 0x0

    .line 15
    iput-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->label:[C

    .line 16
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz p2, :cond_1

    .line 17
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->isLabel:Z

    goto :goto_0

    .line 18
    :cond_0
    iput-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->switchExpression:Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/DoStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 4
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 1

    .line 8
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    .line 10
    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1ResultExpressionsCollector;->targetSwitchExpressions:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 5
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 6
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 7
    const/4 p1, 0x0

    return p1
.end method
