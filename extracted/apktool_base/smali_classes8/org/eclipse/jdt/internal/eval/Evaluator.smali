.class public abstract Lorg/eclipse/jdt/internal/eval/Evaluator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

.field environment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

.field options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field problemFactory:Lorg/eclipse/jdt/internal/compiler/IProblemFactory;

.field requestor:Lorg/eclipse/jdt/internal/eval/IRequestor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/eval/EvaluationContext;Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Ljava/util/Map;Lorg/eclipse/jdt/internal/eval/IRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/eval/EvaluationContext;",
            "Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/eclipse/jdt/internal/eval/IRequestor;",
            "Lorg/eclipse/jdt/internal/compiler/IProblemFactory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->environment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->options:Ljava/util/Map;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->requestor:Lorg/eclipse/jdt/internal/eval/IRequestor;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->problemFactory:Lorg/eclipse/jdt/internal/compiler/IProblemFactory;

    return-void
.end method


# virtual methods
.method public abstract addEvaluationResultForCompilationProblem(Ljava/util/Map;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[C)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "[C",
            "Lorg/eclipse/jdt/internal/eval/EvaluationResult;",
            ">;",
            "Lorg/eclipse/jdt/core/compiler/CategorizedProblem;",
            "[C)V"
        }
    .end annotation
.end method

.method public evaluationResultsForCompilationProblems(Lorg/eclipse/jdt/internal/compiler/CompilationResult;[C)[Lorg/eclipse/jdt/internal/eval/EvaluationResult;
    .locals 6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getAllProblems()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v4, v3, [Lorg/eclipse/jdt/internal/eval/EvaluationResult;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    if-lt v1, v3, :cond_0

    return-object v4

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/eval/EvaluationResult;

    aput-object p1, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    aget-object v3, p1, v2

    invoke-virtual {p0, v0, v3, p2}, Lorg/eclipse/jdt/internal/eval/Evaluator;->addEvaluationResultForCompilationProblem(Ljava/util/Map;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[C)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public abstract getClassName()[C
.end method

.method public getClasses()[Lorg/eclipse/jdt/internal/compiler/ClassFile;
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/eval/Evaluator;->getSource()[C

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/eclipse/jdt/internal/eval/Evaluator$1CompilerRequestor;

    invoke-direct {v2, p0, v0, v1}, Lorg/eclipse/jdt/internal/eval/Evaluator$1CompilerRequestor;-><init>(Lorg/eclipse/jdt/internal/eval/Evaluator;[CLjava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/eval/Evaluator;->getCompiler(Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;)Lorg/eclipse/jdt/internal/compiler/Compiler;

    move-result-object v3

    new-instance v4, Lorg/eclipse/jdt/internal/eval/Evaluator$1;

    invoke-direct {v4, p0, v0}, Lorg/eclipse/jdt/internal/eval/Evaluator$1;-><init>(Lorg/eclipse/jdt/internal/eval/Evaluator;[C)V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/Compiler;->compile([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)V

    iget-boolean v0, v2, Lorg/eclipse/jdt/internal/eval/Evaluator$1CompilerRequestor;->hasErrors:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ClassFile;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getCompiler(Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;)Lorg/eclipse/jdt/internal/compiler/Compiler;
    .locals 7

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->options:Ljava/util/Map;

    invoke-direct {v3, v0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x1

    iput-boolean v0, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->performMethodsFullRecovery:Z

    iput-boolean v0, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->performStatementsRecovery:Z

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/Compiler;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->environment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->exitAfterAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->problemFactory:Lorg/eclipse/jdt/internal/compiler/IProblemFactory;

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/Compiler;-><init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    return-object v6
.end method

.method public abstract getSource()[C
.end method
