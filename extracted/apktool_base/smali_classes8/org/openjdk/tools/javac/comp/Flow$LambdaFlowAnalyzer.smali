.class Lorg/openjdk/tools/javac/comp/Flow$LambdaFlowAnalyzer;
.super Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LambdaFlowAnalyzer"
.end annotation


# instance fields
.field inLambda:Z

.field inferredThrownTypes:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Flow;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Flow;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$LambdaFlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;-><init>(Lorg/openjdk/tools/javac/comp/Flow;)V

    return-void
.end method


# virtual methods
.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 0

    return-void
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow$LambdaFlowAnalyzer;->inLambda:Z

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/openjdk/tools/javac/comp/Flow$LambdaFlowAnalyzer;->inLambda:Z

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$LambdaFlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v4}, Lorg/openjdk/tools/javac/comp/Flow;->access$800(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v4

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->throwableType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v4}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$LambdaFlowAnalyzer;->inferredThrownTypes:Lorg/openjdk/tools/javac/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    iput-boolean v3, p0, Lorg/openjdk/tools/javac/comp/Flow$LambdaFlowAnalyzer;->inLambda:Z

    return-void

    :catchall_0
    move-exception p1

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    iput-boolean v3, p0, Lorg/openjdk/tools/javac/comp/Flow$LambdaFlowAnalyzer;->inLambda:Z

    throw p1
.end method
