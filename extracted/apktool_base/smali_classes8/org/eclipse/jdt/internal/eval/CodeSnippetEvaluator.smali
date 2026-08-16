.class public Lorg/eclipse/jdt/internal/eval/CodeSnippetEvaluator;
.super Lorg/eclipse/jdt/internal/eval/Evaluator;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/eval/EvaluationConstants;


# static fields
.field static final DEVELOPMENT_MODE:Z = false


# instance fields
.field codeSnippet:[C

.field mapper:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;


# direct methods
.method public constructor <init>([CLorg/eclipse/jdt/internal/eval/EvaluationContext;Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Ljava/util/Map;Lorg/eclipse/jdt/internal/eval/IRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
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

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/eval/Evaluator;-><init>(Lorg/eclipse/jdt/internal/eval/EvaluationContext;Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Ljava/util/Map;Lorg/eclipse/jdt/internal/eval/IRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetEvaluator;->codeSnippet:[C

    return-void
.end method

.method private getMapper()Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;
    .locals 14

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetEvaluator;->mapper:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->installedVars:Lorg/eclipse/jdt/internal/eval/VariablesInfo;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/eval/VariablesInfo;->packageName:[C

    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/eval/VariablesInfo;->className:[C

    const/16 v2, 0x2e

    invoke-static {v1, v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/eval/VariablesInfo;->className:[C

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetEvaluator;->codeSnippet:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->packageName:[C

    iget-object v4, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->imports:[[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetEvaluator;->getClassName()[C

    move-result-object v5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v7, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableNames:[[C

    iget-object v8, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableTypeNames:[[C

    iget-object v9, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableModifiers:[I

    iget-object v10, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->declaringTypeName:[C

    iget-object v11, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->lineSeparator:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->options:Ljava/util/Map;

    const-string v12, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v12

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;-><init>([C[C[[C[C[C[[C[[C[I[CLjava/lang/String;J)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetEvaluator;->mapper:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetEvaluator;->mapper:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    return-object v0
.end method

.method private getWrapperEnvironment()Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetEnvironment;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->environment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/eval/CodeSnippetEnvironment;-><init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/eval/EvaluationContext;)V

    return-object v0
.end method


# virtual methods
.method public addEvaluationResultForCompilationProblem(Ljava/util/Map;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[C)V
    .locals 6
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

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetEvaluator;->getMapper()Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    move-result-object v0

    invoke-interface {p2}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->getEvaluationType(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1

    const/4 v0, 0x4

    if-eq v2, v0, :cond_0

    const/4 v0, 0x5

    if-eq v2, v0, :cond_3

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->packageName:[C

    invoke-interface {p2, v5}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceLineNumber(I)V

    invoke-interface {p2, v4}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceStart(I)V

    array-length v0, p3

    sub-int/2addr v0, v5

    invoke-interface {p2, v0}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceEnd(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->getImport(I)[C

    move-result-object p3

    invoke-interface {p2, v5}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceLineNumber(I)V

    invoke-interface {p2, v4}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceStart(I)V

    array-length v0, p3

    sub-int/2addr v0, v5

    invoke-interface {p2, v0}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceEnd(I)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetEvaluator;->codeSnippet:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetEvaluator;->mapper:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    iget v0, v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->lineNumberOffset:I

    sub-int/2addr v1, v0

    invoke-interface {p2, v1}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceLineNumber(I)V

    invoke-interface {p2}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetEvaluator;->mapper:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    iget v1, v1, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->startPosOffset:I

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceStart(I)V

    invoke-interface {p2}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetEvaluator;->mapper:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    iget v1, v1, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->startPosOffset:I

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceEnd(I)V

    :cond_3
    :goto_0
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;

    if-nez v0, :cond_4

    new-instance v0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;

    filled-new-array {p2}, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object p2

    invoke-direct {v0, p3, v2, p2}, Lorg/eclipse/jdt/internal/eval/EvaluationResult;-><init>([CI[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->addProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    :goto_1
    return-void
.end method

.method public getClassName()[C
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->CODE_SNIPPET_CLASS_NAME_PREFIX:[C

    sget v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->CODE_SNIPPET_COUNTER:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    return-object v0
.end method

.method public getCompiler(Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;)Lorg/eclipse/jdt/internal/compiler/Compiler;
    .locals 10

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->options:Ljava/util/Map;

    invoke-direct {v3, v0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x1

    iput-boolean v0, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->performMethodsFullRecovery:Z

    iput-boolean v0, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->performStatementsRecovery:Z

    new-instance v9, Lorg/eclipse/jdt/internal/eval/CodeSnippetCompiler;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->environment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->exitAfterAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->problemFactory:Lorg/eclipse/jdt/internal/compiler/IProblemFactory;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetEvaluator;->getMapper()Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    move-result-object v4

    iget v7, v4, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->startPosOffset:I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetEvaluator;->getMapper()Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    move-result-object v4

    iget v4, v4, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->startPosOffset:I

    iget-object v8, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetEvaluator;->codeSnippet:[C

    array-length v8, v8

    add-int/2addr v4, v8

    add-int/lit8 v8, v4, -0x1

    move-object v0, v9

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/eval/CodeSnippetCompiler;-><init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Lorg/eclipse/jdt/internal/eval/EvaluationContext;II)V

    iget-object p1, v9, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    check-cast p1, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p1, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->lineSeparatorLength:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->getRootCodeSnippetBinary()Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, v9, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->cacheBinaryType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->installedVars:Lorg/eclipse/jdt/internal/eval/VariablesInfo;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lorg/eclipse/jdt/internal/eval/VariablesInfo;->classFiles:[Lorg/eclipse/jdt/internal/compiler/ClassFile;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[C)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;->printStackTrace()V

    move-object v2, v0

    :goto_1
    iget-object v3, v9, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v3, v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->cacheBinaryType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v9
.end method

.method public getSource()[C
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetEvaluator;->getMapper()Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->cuSource:[C

    return-object v0
.end method
