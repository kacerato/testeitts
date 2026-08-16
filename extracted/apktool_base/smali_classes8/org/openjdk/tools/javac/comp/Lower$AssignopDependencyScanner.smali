.class Lorg/openjdk/tools/javac/comp/Lower$AssignopDependencyScanner;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Lower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AssignopDependencyScanner"
.end annotation


# instance fields
.field dependencyFound:Z

.field sym:Lorg/openjdk/tools/javac/code/Symbol;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Lower;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower$AssignopDependencyScanner;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Lower$AssignopDependencyScanner;->dependencyFound:Z

    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower$AssignopDependencyScanner;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    return-void
.end method


# virtual methods
.method public scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower$AssignopDependencyScanner;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    :cond_0
    return-void
.end method

.method public visitAssignop(Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower$AssignopDependencyScanner;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Lower$AssignopDependencyScanner;->dependencyFound:Z

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitAssignop(Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;)V

    return-void
.end method

.method public visitUnary(Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower$AssignopDependencyScanner;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Lower$AssignopDependencyScanner;->dependencyFound:Z

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitUnary(Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;)V

    return-void
.end method
