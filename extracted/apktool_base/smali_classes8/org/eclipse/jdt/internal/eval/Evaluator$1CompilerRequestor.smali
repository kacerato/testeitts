.class Lorg/eclipse/jdt/internal/eval/Evaluator$1CompilerRequestor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/eval/Evaluator;->getClasses()[Lorg/eclipse/jdt/internal/compiler/ClassFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompilerRequestor"
.end annotation


# instance fields
.field hasErrors:Z

.field final synthetic this$0:Lorg/eclipse/jdt/internal/eval/Evaluator;

.field private final synthetic val$classDefinitions:Ljava/util/ArrayList;

.field private final synthetic val$source:[C


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/eval/Evaluator;[CLjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/Evaluator$1CompilerRequestor;->this$0:Lorg/eclipse/jdt/internal/eval/Evaluator;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/eval/Evaluator$1CompilerRequestor;->val$source:[C

    iput-object p3, p0, Lorg/eclipse/jdt/internal/eval/Evaluator$1CompilerRequestor;->val$classDefinitions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/eval/Evaluator$1CompilerRequestor;->hasErrors:Z

    return-void
.end method


# virtual methods
.method public acceptResult(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 10

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasProblems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/Evaluator$1CompilerRequestor;->this$0:Lorg/eclipse/jdt/internal/eval/Evaluator;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/eval/Evaluator$1CompilerRequestor;->val$source:[C

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/eval/Evaluator;->evaluationResultsForCompilationProblems(Lorg/eclipse/jdt/internal/compiler/CompilationResult;[C)[Lorg/eclipse/jdt/internal/eval/EvaluationResult;

    move-result-object v0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    goto :goto_2

    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->getProblems()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object v4

    move v5, v1

    :goto_1
    array-length v6, v4

    if-lt v5, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lorg/eclipse/jdt/internal/eval/Evaluator$1CompilerRequestor;->this$0:Lorg/eclipse/jdt/internal/eval/Evaluator;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/eval/Evaluator;->requestor:Lorg/eclipse/jdt/internal/eval/IRequestor;

    aget-object v7, v4, v5

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->getEvaluationID()[C

    move-result-object v8

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->getEvaluationType()I

    move-result v9

    invoke-interface {v6, v7, v8, v9}, Lorg/eclipse/jdt/internal/eval/IRequestor;->acceptProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[CI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/eval/Evaluator$1CompilerRequestor;->hasErrors:Z

    goto :goto_4

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getClassFiles()[Lorg/eclipse/jdt/internal/compiler/ClassFile;

    move-result-object p1

    :goto_3
    array-length v0, p1

    if-lt v1, v0, :cond_4

    :goto_4
    return-void

    :cond_4
    aget-object v0, p1, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/eval/Evaluator$1CompilerRequestor;->val$classDefinitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
