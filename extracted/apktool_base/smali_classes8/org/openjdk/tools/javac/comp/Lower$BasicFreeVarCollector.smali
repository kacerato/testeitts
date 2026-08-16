.class abstract Lorg/openjdk/tools/javac/comp/Lower$BasicFreeVarCollector;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Lower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BasicFreeVarCollector"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Lower;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Lower;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower$BasicFreeVarCollector;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addFreeVars(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
.end method

.method public visitApply(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower$BasicFreeVarCollector;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Lower;->access$000(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower$BasicFreeVarCollector;->addFreeVars(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitApply(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)V

    return-void
.end method

.method public visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower$BasicFreeVarCollector;->visitSymbol(Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method public visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower$BasicFreeVarCollector;->addFreeVars(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V

    return-void
.end method

.method public abstract visitSymbol(Lorg/openjdk/tools/javac/code/Symbol;)V
.end method
