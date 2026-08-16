.class Lorg/openjdk/tools/javac/comp/Flow$LambdaAssignAnalyzer;
.super Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LambdaAssignAnalyzer"
.end annotation


# instance fields
.field enclosedSymbols:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

.field inLambda:Z

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Flow;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$LambdaAssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;-><init>(Lorg/openjdk/tools/javac/comp/Flow;)V

    iget-object p1, p2, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$LambdaAssignAnalyzer;->enclosedSymbols:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    return-void
.end method


# virtual methods
.method public trackable(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$LambdaAssignAnalyzer;->enclosedSymbols:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Scope;->includes(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 0

    return-void
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow$LambdaAssignAnalyzer;->inLambda:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow$LambdaAssignAnalyzer;->inLambda:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow$LambdaAssignAnalyzer;->inLambda:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow$LambdaAssignAnalyzer;->inLambda:Z

    throw p1
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$LambdaAssignAnalyzer;->enclosedSymbols:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V

    return-void
.end method
