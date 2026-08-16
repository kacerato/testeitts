.class public Lorg/eclipse/jdt/internal/eval/VariablesEvaluator;
.super Lorg/eclipse/jdt/internal/eval/Evaluator;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/eval/EvaluationConstants;


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

    invoke-direct/range {p0 .. p5}, Lorg/eclipse/jdt/internal/eval/Evaluator;-><init>(Lorg/eclipse/jdt/internal/eval/EvaluationContext;Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Ljava/util/Map;Lorg/eclipse/jdt/internal/eval/IRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    return-void
.end method

.method private numberOfCRs([C)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, p1

    if-lt v1, v4, :cond_0

    return v2

    :cond_0
    aget-char v4, p1, v1

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    const/16 v3, 0xd

    if-eq v4, v3, :cond_2

    :cond_1
    :goto_1
    move v3, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addEvaluationResultForCompilationProblem(Ljava/util/Map;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[C)V
    .locals 11
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

    invoke-interface {p2}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceLineNumber()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/eval/VariablesEvaluator;->getPackageName()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-lez v2, :cond_1

    if-ne v0, v5, :cond_0

    invoke-interface {p2, v5}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceLineNumber(I)V

    invoke-interface {p2, v3}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceStart(I)V

    array-length p3, v1

    sub-int/2addr p3, v5

    invoke-interface {p2, p3}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceEnd(I)V

    const/4 v4, 0x4

    move-object p3, v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->imports:[[C

    if-gt v1, v0, :cond_2

    array-length v6, v2

    add-int/2addr v6, v1

    if-ge v0, v6, :cond_2

    sub-int p3, v0, v1

    aget-object p3, v2, p3

    invoke-interface {p2, v5}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceLineNumber(I)V

    invoke-interface {p2, v3}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceStart(I)V

    array-length v4, p3

    sub-int/2addr v4, v5

    invoke-interface {p2, v4}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceEnd(I)V

    const/4 v4, 0x3

    :cond_2
    array-length v2, v2

    add-int/2addr v2, v5

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget v6, v2, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->variableCount:I

    if-gt v1, v0, :cond_4

    add-int v7, v1, v6

    if-ge v0, v7, :cond_4

    iget-object p3, v2, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->variables:[Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    sub-int v1, v0, v1

    aget-object p3, p3, v1

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->getName()[C

    move-result-object v1

    invoke-interface {p2}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v2

    iget v4, p3, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->declarationStart:I

    sub-int/2addr v2, v4

    invoke-interface {p2}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result v4

    iget v7, p3, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->declarationStart:I

    sub-int/2addr v4, v7

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->getTypeName()[C

    move-result-object p3

    array-length p3, p3

    if-ltz v2, :cond_3

    if-ge v4, p3, :cond_3

    const/4 p3, -0x1

    invoke-interface {p2, p3}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceLineNumber(I)V

    goto :goto_1

    :cond_3
    add-int/2addr p3, v5

    sub-int/2addr v2, p3

    sub-int/2addr v4, p3

    invoke-interface {p2, v3}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceLineNumber(I)V

    :goto_1
    invoke-interface {p2, v2}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceStart(I)V

    invoke-interface {p2, v4}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceEnd(I)V

    move-object p3, v1

    move v4, v5

    :cond_4
    move v1, v3

    :goto_2
    if-lt v1, v6, :cond_5

    move v5, v4

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->variables:[Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->getInitializer()[C

    move-result-object v7

    if-nez v7, :cond_6

    move v7, v3

    goto :goto_3

    :cond_6
    array-length v7, v7

    :goto_3
    iget v8, v2, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->initializerStart:I

    invoke-interface {p2}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v9

    if-gt v8, v9, :cond_7

    invoke-interface {p2}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result v8

    iget v9, v2, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->initializerStart:I

    iget-object v10, v2, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->name:[C

    array-length v10, v10

    add-int/2addr v9, v10

    if-ge v8, v9, :cond_7

    return-void

    :cond_7
    iget v8, v2, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->initExpressionStart:I

    invoke-interface {p2}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v9

    if-gt v8, v9, :cond_9

    invoke-interface {p2}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result v8

    iget v9, v2, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->initExpressionStart:I

    add-int/2addr v9, v7

    if-ge v8, v9, :cond_9

    iget-object p3, v2, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->name:[C

    iget v1, v2, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->initializerLineStart:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v5

    invoke-interface {p2, v0}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceLineNumber(I)V

    invoke-interface {p2}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v0

    iget v1, v2, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->initExpressionStart:I

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceStart(I)V

    invoke-interface {p2}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result v0

    iget v1, v2, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->initExpressionStart:I

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceEnd(I)V

    :goto_4
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;

    if-nez v0, :cond_8

    new-instance v0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;

    filled-new-array {p2}, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object p2

    invoke-direct {v0, p3, v5, p2}, Lorg/eclipse/jdt/internal/eval/EvaluationResult;-><init>([CI[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->addProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    :goto_5
    return-void

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public getClassName()[C
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->GLOBAL_VARS_CLASS_NAME_PREFIX:[C

    sget v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->VAR_CLASS_COUNTER:I

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
    .locals 5

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/eval/Evaluator;->getCompiler(Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;)Lorg/eclipse/jdt/internal/compiler/Compiler;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->getRootCodeSnippetBinary()Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->cacheBinaryType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->installedVars:Lorg/eclipse/jdt/internal/eval/VariablesInfo;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/eclipse/jdt/internal/eval/VariablesInfo;->classFiles:[Lorg/eclipse/jdt/internal/compiler/ClassFile;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_1

    goto :goto_2

    :cond_1
    aget-object v3, v0, v2

    :try_start_0
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->getBytes()[B

    move-result-object v3

    invoke-direct {v4, v3, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[C)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;->printStackTrace()V

    move-object v4, v1

    :goto_1
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v3, v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->cacheBinaryType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object p1
.end method

.method public getPackageName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->packageName:[C

    return-object v0
.end method

.method public getSource()[C
    .locals 13

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/eval/VariablesEvaluator;->getPackageName()[C

    move-result-object v1

    array-length v2, v1

    const/16 v3, 0x3b

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const-string v2, "package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->imports:[[C

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    array-length v7, v2

    if-lt v6, v7, :cond_8

    const-string v2, "public class "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/eval/VariablesEvaluator;->getClassName()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v2, " extends "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->PACKAGE_NAME:[C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->ROOT_CLASS_NAME:[C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v2, " {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr v1, v4

    iget-object v2, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v8, v2, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->variables:[Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    iget-object v9, v2, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->installedVars:Lorg/eclipse/jdt/internal/eval/VariablesInfo;

    move v2, v5

    :goto_2
    iget-object v6, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget v6, v6, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->variableCount:I

    if-lt v2, v6, :cond_7

    const-string v2, "\tstatic {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr v1, v4

    move v2, v5

    :goto_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget v4, v4, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->variableCount:I

    if-lt v2, v4, :cond_1

    const-string v1, "\t}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    new-array v2, v1, [C

    invoke-virtual {v0, v5, v1, v2, v5}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object v2

    :cond_1
    aget-object v4, v8, v2

    iget-object v6, v4, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->name:[C

    if-nez v9, :cond_2

    const/4 v10, 0x0

    goto :goto_4

    :cond_2
    invoke-virtual {v9, v6}, Lorg/eclipse/jdt/internal/eval/VariablesInfo;->varNamed([C)Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    move-result-object v10

    :goto_4
    const-string v11, "= "

    if-eqz v10, :cond_5

    iget-object v10, v10, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->typeName:[C

    iget-object v12, v4, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->typeName:[C

    invoke-static {v10, v12}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_5

    :cond_3
    const-string v4, "\t\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v9, Lorg/eclipse/jdt/internal/eval/VariablesInfo;->packageName:[C

    if-eqz v4, :cond_4

    array-length v10, v4

    if-eqz v10, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v4, v9, Lorg/eclipse/jdt/internal/eval/VariablesInfo;->className:[C

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_5
    :goto_5
    iget-object v10, v4, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->initializer:[C

    if-eqz v10, :cond_6

    const-string v12, "\t\ttry {"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v12, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v12, v12, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    iput v1, v4, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->initializerLineStart:I

    const-string v12, "\t\t\t"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    iput v12, v4, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->initializerStart:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    iput v6, v4, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->initExpressionStart:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-direct {p0, v10}, Lorg/eclipse/jdt/internal/eval/VariablesEvaluator;->numberOfCRs([C)I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\t\t} catch (Throwable e) {"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\t\t\te.printStackTrace();"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\t\t}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x4

    :cond_6
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_7
    aget-object v6, v8, v2

    const-string v10, "\tpublic static "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    iput v10, v6, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->declarationStart:I

    iget-object v10, v6, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->typeName:[C

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v10, " "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->name:[C

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_8
    const-string v7, "import "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v7, v2, v6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/eval/Evaluator;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1
.end method
