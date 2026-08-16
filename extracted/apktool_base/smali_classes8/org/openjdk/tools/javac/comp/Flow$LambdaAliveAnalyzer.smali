.class Lorg/openjdk/tools/javac/comp/Flow$LambdaAliveAnalyzer;
.super Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LambdaAliveAnalyzer"
.end annotation


# instance fields
.field inLambda:Z

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Flow;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Flow;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$LambdaAliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;-><init>(Lorg/openjdk/tools/javac/comp/Flow;)V

    return-void
.end method


# virtual methods
.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 0

    return-void
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 2

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow$LambdaAliveAnalyzer;->inLambda:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->getBodyKind()Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;->EXPRESSION:Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow$LambdaAliveAnalyzer;->inLambda:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow$LambdaAliveAnalyzer;->inLambda:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow$LambdaAliveAnalyzer;->inLambda:Z

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public visitReturn(Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;)V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;-><init>(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->recordExit(Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;)V

    return-void
.end method
