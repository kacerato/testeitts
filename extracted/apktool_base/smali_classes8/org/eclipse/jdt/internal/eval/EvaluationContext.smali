.class public Lorg/eclipse/jdt/internal/eval/EvaluationContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/eval/EvaluationConstants;
.implements Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;


# static fields
.field static CODE_SNIPPET_COUNTER:I

.field static VAR_CLASS_COUNTER:I


# instance fields
.field codeSnippetBinary:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

.field declaringTypeName:[C

.field imports:[[C

.field installedVars:Lorg/eclipse/jdt/internal/eval/VariablesInfo;

.field isConstructorCall:Z

.field isStatic:Z

.field lineSeparator:Ljava/lang/String;

.field localVariableModifiers:[I

.field localVariableNames:[[C

.field localVariableTypeNames:[[C

.field packageName:[C

.field variableCount:I

.field variables:[Lorg/eclipse/jdt/internal/eval/GlobalVariable;

.field varsChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->variables:[Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->variableCount:I

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->imports:[[C

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->packageName:[C

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->varsChanged:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->isStatic:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->isConstructorCall:Z

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->LINE_SEPARATOR:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->lineSeparator:Ljava/lang/String;

    return-void
.end method

.method private deployCodeSnippetClassIfNeeded(Lorg/eclipse/jdt/internal/eval/IRequestor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/eval/InstallException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->codeSnippetBinary:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    if-nez v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/eval/EvaluationContext$3;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/eval/EvaluationContext$3;-><init>(Lorg/eclipse/jdt/internal/eval/EvaluationContext;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/ClassFile;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, Lorg/eclipse/jdt/internal/eval/IRequestor;->acceptClassFiles([Lorg/eclipse/jdt/internal/compiler/ClassFile;[C)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/eval/InstallException;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/eval/InstallException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static getCodeSnippetSource()Ljava/lang/String;
    .locals 1

    const-string v0, "package org.eclipse.jdt.internal.eval.target;\n\n/*\n * (c) Copyright IBM Corp. 2000, 2001.\n * All Rights Reserved.\n */\n/**\n * The root of all code snippet classes. Code snippet classes\n * are supposed to overide the run() method.\n * <p>\n * IMPORTANT NOTE:\n * All methods in this class must be public since this class is going to be loaded by the\n * bootstrap class loader, and the other code snippet support classes might be loaded by \n * another class loader (so their runtime packages are going to be different).\n */\npublic class CodeSnippet {\n\tprivate Class resultType = void.class;\n\tprivate Object resultValue = null;\n/**\n * Returns the result type of the code snippet evaluation.\n */\npublic Class getResultType() {\n\treturn this.resultType;\n}\n/**\n * Returns the result value of the code snippet evaluation.\n */\npublic Object getResultValue() {\n\treturn this.resultValue;\n}\n/**\n * The code snippet. Subclasses must override this method with a transformed code snippet\n * that stores the result using setResult(Class, Object).\n */\npublic void run() {\n}\n/**\n * Stores the result type and value of the code snippet evaluation.\n */\npublic void setResult(Object someResultValue, Class someResultType) {\n\tthis.resultValue = someResultValue;\n\tthis.resultType = someResultType;\n}\n}\n"

    return-object v0
.end method


# virtual methods
.method public allVariables()[Lorg/eclipse/jdt/internal/eval/GlobalVariable;
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->variableCount:I

    new-array v1, v0, [Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->variables:[Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public complete([CILorg/eclipse/jdt/internal/core/SearchableEnvironment;Lorg/eclipse/jdt/core/CompletionRequestor;Ljava/util/Map;Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CI",
            "Lorg/eclipse/jdt/internal/core/SearchableEnvironment;",
            "Lorg/eclipse/jdt/core/CompletionRequestor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            "Lorg/eclipse/jdt/core/WorkingCopyOwner;",
            "Lorg/eclipse/core/runtime/IProgressMonitor;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p5

    :try_start_0
    new-instance v2, Lorg/eclipse/jdt/internal/eval/EvaluationContext$1;

    invoke-direct {v2, v1}, Lorg/eclipse/jdt/internal/eval/EvaluationContext$1;-><init>(Lorg/eclipse/jdt/internal/eval/EvaluationContext;)V

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>(Ljava/util/Locale;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/eval/InstallException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v4, p3

    :try_start_1
    invoke-virtual {v1, v4, v0, v2, v3}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->evaluateVariables(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Ljava/util/Map;Lorg/eclipse/jdt/internal/eval/IRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/eval/InstallException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object/from16 v4, p3

    :catch_1
    :goto_0
    const-string v2, "CodeSnippetCompletion"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v16

    new-instance v3, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    iget-object v7, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->packageName:[C

    iget-object v8, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->imports:[[C

    iget-object v5, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->installedVars:Lorg/eclipse/jdt/internal/eval/VariablesInfo;

    const/4 v15, 0x0

    if-nez v5, :cond_0

    move-object v10, v15

    goto :goto_1

    :cond_0
    iget-object v5, v5, Lorg/eclipse/jdt/internal/eval/VariablesInfo;->className:[C

    move-object v10, v5

    :goto_1
    iget-object v11, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableNames:[[C

    iget-object v12, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableTypeNames:[[C

    iget-object v13, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableModifiers:[I

    iget-object v14, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->declaringTypeName:[C

    iget-object v9, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->lineSeparator:Ljava/lang/String;

    move-object v5, v3

    move-object/from16 v6, p1

    move-object/from16 v18, v9

    move-object v9, v2

    move-object/from16 v15, v18

    invoke-direct/range {v5 .. v17}, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;-><init>([C[C[[C[C[C[[C[[C[I[CLjava/lang/String;J)V

    new-instance v9, Lorg/eclipse/jdt/internal/eval/EvaluationContext$2;

    invoke-direct {v9, v1, v2, v3}, Lorg/eclipse/jdt/internal/eval/EvaluationContext$2;-><init>(Lorg/eclipse/jdt/internal/eval/EvaluationContext;[CLorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;)V

    new-instance v10, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    move-object/from16 v2, p4

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->getCompletionRequestor(Lorg/eclipse/jdt/core/CompletionRequestor;)Lorg/eclipse/jdt/core/CompletionRequestor;

    move-result-object v5

    move-object v2, v10

    move-object v11, v3

    move-object/from16 v3, p3

    move-object v4, v5

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v2 .. v8}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;-><init>(Lorg/eclipse/jdt/internal/core/SearchableEnvironment;Lorg/eclipse/jdt/core/CompletionRequestor;Ljava/util/Map;Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    iget-object v0, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->installedVars:Lorg/eclipse/jdt/internal/eval/VariablesInfo;

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->getRootCodeSnippetBinary()Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v10, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->cacheBinaryType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    iget-object v0, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->installedVars:Lorg/eclipse/jdt/internal/eval/VariablesInfo;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/eval/VariablesInfo;->classFiles:[Lorg/eclipse/jdt/internal/compiler/ClassFile;

    const/4 v0, 0x0

    move v4, v0

    :goto_3
    array-length v0, v2

    if-lt v4, v0, :cond_2

    goto :goto_5

    :cond_2
    aget-object v0, v2, v4

    :try_start_2
    new-instance v15, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->getBytes()[B

    move-result-object v0

    invoke-direct {v15, v0, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[C)V
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;->printStackTrace()V

    move-object v15, v3

    :goto_4
    iget-object v0, v10, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v15, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->cacheBinaryType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_5
    iget v0, v11, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->startPosOffset:I

    add-int v2, v0, p2

    invoke-virtual {v10, v9, v2, v0, v3}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->complete(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;IILorg/eclipse/jdt/core/ITypeRoot;)V

    return-void
.end method

.method public deleteVariable(Lorg/eclipse/jdt/internal/eval/GlobalVariable;)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->variables:[Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->variableCount:I

    const/4 v3, -0x1

    if-lt v1, v2, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    if-ne v1, v3, :cond_1

    return-void

    :cond_1
    iget p1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->variableCount:I

    add-int/lit8 v2, p1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->variableCount:I

    sub-int/2addr p1, v1

    const/4 v3, 0x1

    sub-int/2addr p1, v3

    if-lez p1, :cond_2

    add-int/lit8 v4, v1, 0x1

    invoke-static {v0, v4, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    const/4 p1, 0x0

    aput-object p1, v0, v2

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->varsChanged:Z

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public evaluate([CLorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Ljava/util/Map;Lorg/eclipse/jdt/internal/eval/IRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/eval/InstallException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 35
    invoke-virtual/range {v0 .. v11}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->evaluate([C[[C[[C[I[CZZLorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Ljava/util/Map;Lorg/eclipse/jdt/internal/eval/IRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    return-void
.end method

.method public evaluate([C[[C[[C[I[CZZLorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Ljava/util/Map;Lorg/eclipse/jdt/internal/eval/IRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C[[C[[C[I[CZZ",
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/eval/InstallException;
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v0, p10

    move-object v1, p2

    .line 1
    iput-object v1, v8, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableTypeNames:[[C

    move-object/from16 v1, p3

    .line 2
    iput-object v1, v8, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableNames:[[C

    move-object/from16 v1, p4

    .line 3
    iput-object v1, v8, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableModifiers:[I

    move-object/from16 v1, p5

    .line 4
    iput-object v1, v8, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->declaringTypeName:[C

    move/from16 v1, p6

    .line 5
    iput-boolean v1, v8, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->isStatic:Z

    move/from16 v1, p7

    .line 6
    iput-boolean v1, v8, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->isConstructorCall:Z

    .line 7
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->deployCodeSnippetClassIfNeeded(Lorg/eclipse/jdt/internal/eval/IRequestor;)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 8
    :try_start_0
    new-instance v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext$1ForwardingRequestor;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jdt/internal/eval/EvaluationContext$1ForwardingRequestor;-><init>(Lorg/eclipse/jdt/internal/eval/EvaluationContext;Lorg/eclipse/jdt/internal/eval/IRequestor;)V

    .line 9
    iget-boolean v2, v8, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->varsChanged:Z

    if-eqz v2, :cond_0

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v7, p11

    .line 10
    invoke-virtual {p0, v4, v5, v1, v7}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->evaluateVariables(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Ljava/util/Map;Lorg/eclipse/jdt/internal/eval/IRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v7, p11

    .line 11
    :goto_0
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext$1ForwardingRequestor;->hasErrors:Z

    if-nez v1, :cond_3

    .line 12
    new-instance v12, Lorg/eclipse/jdt/internal/eval/CodeSnippetEvaluator;

    move-object v1, v12

    move-object v2, p1

    move-object v3, p0

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/eval/CodeSnippetEvaluator;-><init>([CLorg/eclipse/jdt/internal/eval/EvaluationContext;Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Ljava/util/Map;Lorg/eclipse/jdt/internal/eval/IRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    .line 13
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/eval/Evaluator;->getClasses()[Lorg/eclipse/jdt/internal/compiler/ClassFile;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 14
    array-length v2, v1

    if-lez v2, :cond_3

    .line 15
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/eval/Evaluator;->getClassName()[C

    move-result-object v2

    .line 16
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->getPackageName()[C

    move-result-object v3

    .line 17
    array-length v4, v3

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x2e

    .line 18
    invoke-static {v3, v2, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v2

    .line 19
    :goto_1
    sget v3, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->CODE_SNIPPET_COUNTER:I

    add-int/2addr v3, v10

    sput v3, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->CODE_SNIPPET_COUNTER:I

    .line 20
    invoke-interface {v0, v1, v2}, Lorg/eclipse/jdt/internal/eval/IRequestor;->acceptClassFiles([Lorg/eclipse/jdt/internal/compiler/ClassFile;[C)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 21
    :cond_2
    new-instance v0, Lorg/eclipse/jdt/internal/eval/InstallException;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/eval/InstallException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_3
    :goto_2
    iput-object v11, v8, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableTypeNames:[[C

    .line 23
    iput-object v11, v8, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableNames:[[C

    .line 24
    iput-object v11, v8, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableModifiers:[I

    .line 25
    iput-object v11, v8, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->declaringTypeName:[C

    .line 26
    iput-boolean v10, v8, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->isStatic:Z

    .line 27
    iput-boolean v9, v8, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->isConstructorCall:Z

    return-void

    .line 28
    :goto_3
    iput-object v11, v8, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableTypeNames:[[C

    .line 29
    iput-object v11, v8, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableNames:[[C

    .line 30
    iput-object v11, v8, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableModifiers:[I

    .line 31
    iput-object v11, v8, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->declaringTypeName:[C

    .line 32
    iput-boolean v10, v8, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->isStatic:Z

    .line 33
    iput-boolean v9, v8, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->isConstructorCall:Z

    .line 34
    throw v0
.end method

.method public evaluateImports(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/eval/IRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V
    .locals 16

    move-object/from16 v0, p1

    const/4 v1, 0x0

    move-object/from16 v2, p0

    move v13, v1

    :goto_0
    iget-object v3, v2, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->imports:[[C

    array-length v4, v3

    if-lt v13, v4, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x1

    new-array v14, v4, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    aget-object v15, v3, v13

    const/16 v3, 0x2e

    invoke-static {v3, v15}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v3

    array-length v5, v3

    if-lez v5, :cond_4

    add-int/lit8 v6, v5, -0x1

    aget-object v6, v3, v6

    array-length v7, v6

    if-ne v7, v4, :cond_3

    aget-char v7, v6, v1

    const/16 v8, 0x2a

    if-ne v7, v8, :cond_3

    const/4 v7, 0x0

    if-eq v5, v4, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    add-int/lit8 v5, v5, -0x2

    invoke-static {v3, v1, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v7

    aget-object v6, v3, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, -0x2

    aget-object v6, v3, v5

    :cond_2
    :goto_1
    invoke-interface {v0, v7, v6}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;->isPackage([[C[C)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v15}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    array-length v3, v15

    add-int/lit8 v10, v3, -0x1

    const/4 v12, 0x0

    const v5, 0x10000186

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p3

    move-object v4, v15

    move-object v6, v7

    move v11, v13

    invoke-interface/range {v3 .. v12}, Lorg/eclipse/jdt/internal/compiler/IProblemFactory;->createProblem([CI[Ljava/lang/String;[Ljava/lang/String;IIIII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object v3

    aput-object v3, v14, v1

    goto :goto_2

    :cond_3
    invoke-interface {v0, v3}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;->findType([[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v15}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    array-length v3, v15

    add-int/lit8 v10, v3, -0x1

    const/4 v12, 0x0

    const v5, 0x10000186

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p3

    move-object v4, v15

    move-object v6, v7

    move v11, v13

    invoke-interface/range {v3 .. v12}, Lorg/eclipse/jdt/internal/compiler/IProblemFactory;->createProblem([CI[Ljava/lang/String;[Ljava/lang/String;IIIII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object v3

    aput-object v3, v14, v1

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v15}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    array-length v3, v15

    add-int/lit8 v10, v3, -0x1

    const/4 v12, 0x0

    const v5, 0x10000186

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p3

    move-object v4, v15

    move-object v6, v7

    move v11, v13

    invoke-interface/range {v3 .. v12}, Lorg/eclipse/jdt/internal/compiler/IProblemFactory;->createProblem([CI[Ljava/lang/String;[Ljava/lang/String;IIIII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object v3

    aput-object v3, v14, v1

    :cond_5
    :goto_2
    aget-object v3, v14, v1

    if-eqz v3, :cond_6

    const/4 v4, 0x3

    move-object/from16 v5, p2

    invoke-interface {v5, v3, v15, v4}, Lorg/eclipse/jdt/internal/eval/IRequestor;->acceptProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[CI)V

    goto :goto_3

    :cond_6
    move-object/from16 v5, p2

    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0
.end method

.method public evaluateVariable(Lorg/eclipse/jdt/internal/eval/GlobalVariable;Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Ljava/util/Map;Lorg/eclipse/jdt/internal/eval/IRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/eval/GlobalVariable;",
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/eval/InstallException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->getName()[C

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->evaluate([CLorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Ljava/util/Map;Lorg/eclipse/jdt/internal/eval/IRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    return-void
.end method

.method public evaluateVariables(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Ljava/util/Map;Lorg/eclipse/jdt/internal/eval/IRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/eval/InstallException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->deployCodeSnippetClassIfNeeded(Lorg/eclipse/jdt/internal/eval/IRequestor;)V

    new-instance v6, Lorg/eclipse/jdt/internal/eval/VariablesEvaluator;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/eval/VariablesEvaluator;-><init>(Lorg/eclipse/jdt/internal/eval/EvaluationContext;Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Ljava/util/Map;Lorg/eclipse/jdt/internal/eval/IRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/eval/Evaluator;->getClasses()[Lorg/eclipse/jdt/internal/compiler/ClassFile;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length p1, v3

    const/4 p2, 0x0

    if-lez p1, :cond_1

    new-instance p1, Lorg/eclipse/jdt/internal/eval/EvaluationContext$4;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/eval/EvaluationContext$4;-><init>(Lorg/eclipse/jdt/internal/eval/EvaluationContext;)V

    invoke-static {v3, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->sort([Ljava/lang/Object;Lorg/eclipse/jdt/internal/core/util/Util$Comparer;)V

    const/4 p1, 0x0

    invoke-interface {p3, v3, p1}, Lorg/eclipse/jdt/internal/eval/IRequestor;->acceptClassFiles([Lorg/eclipse/jdt/internal/compiler/ClassFile;[C)Z

    move-result p1

    if-eqz p1, :cond_0

    iget v5, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->variableCount:I

    new-array v4, v5, [Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->variables:[Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    invoke-static {p1, p2, v4, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lorg/eclipse/jdt/internal/eval/VariablesInfo;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/eval/VariablesEvaluator;->getPackageName()[C

    move-result-object v1

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/eval/VariablesEvaluator;->getClassName()[C

    move-result-object v2

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/eval/VariablesInfo;-><init>([C[C[Lorg/eclipse/jdt/internal/compiler/ClassFile;[Lorg/eclipse/jdt/internal/eval/GlobalVariable;I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->installedVars:Lorg/eclipse/jdt/internal/eval/VariablesInfo;

    sget p1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->VAR_CLASS_COUNTER:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->VAR_CLASS_COUNTER:I

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/eval/InstallException;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/eval/InstallException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->varsChanged:Z

    :cond_2
    return-void
.end method

.method public getCodeSnippetBytes()[B
    .locals 25

    const/16 v0, 0x2f1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x36

    aput-byte v2, v0, v1

    const/4 v1, -0x2

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/16 v1, -0x46

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    const/16 v1, -0x42

    const/4 v4, 0x3

    aput-byte v1, v0, v4

    const/4 v1, 0x5

    aput-byte v4, v0, v1

    const/4 v1, 0x7

    const/16 v5, 0x2d

    aput-byte v5, v0, v1

    const/16 v1, 0x9

    const/16 v5, 0x23

    aput-byte v5, v0, v1

    const/16 v1, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v5, 0xc

    aput-byte v1, v0, v5

    const/16 v1, 0xd

    const/16 v6, 0x6f

    aput-byte v6, v0, v1

    const/16 v1, 0xe

    const/16 v6, 0x72

    aput-byte v6, v0, v1

    const/16 v1, 0xf

    const/16 v7, 0x67

    aput-byte v7, v0, v1

    const/16 v1, 0x10

    const/16 v8, 0x2f

    aput-byte v8, v0, v1

    const/16 v1, 0x11

    const/16 v9, 0x65

    aput-byte v9, v0, v1

    const/16 v1, 0x12

    const/16 v10, 0x63

    aput-byte v10, v0, v1

    const/16 v1, 0x13

    const/16 v11, 0x6c

    aput-byte v11, v0, v1

    const/16 v1, 0x14

    const/16 v12, 0x69

    aput-byte v12, v0, v1

    const/16 v1, 0x15

    const/16 v13, 0x70

    aput-byte v13, v0, v1

    const/16 v1, 0x16

    const/16 v14, 0x73

    aput-byte v14, v0, v1

    const/16 v1, 0x17

    aput-byte v9, v0, v1

    const/16 v1, 0x18

    aput-byte v8, v0, v1

    const/16 v1, 0x19

    const/16 v15, 0x6a

    aput-byte v15, v0, v1

    const/16 v1, 0x1a

    const/16 v16, 0x64

    aput-byte v16, v0, v1

    const/16 v1, 0x1b

    const/16 v16, 0x74

    aput-byte v16, v0, v1

    const/16 v1, 0x1c

    aput-byte v8, v0, v1

    const/16 v1, 0x1d

    aput-byte v12, v0, v1

    const/16 v1, 0x1e

    const/16 v17, 0x6e

    aput-byte v17, v0, v1

    const/16 v1, 0x1f

    aput-byte v16, v0, v1

    const/16 v1, 0x20

    aput-byte v9, v0, v1

    const/16 v1, 0x21

    aput-byte v6, v0, v1

    const/16 v1, 0x22

    aput-byte v17, v0, v1

    const/16 v1, 0x23

    const/16 v18, 0x61

    aput-byte v18, v0, v1

    const/16 v1, 0x24

    aput-byte v11, v0, v1

    const/16 v1, 0x25

    aput-byte v8, v0, v1

    const/16 v1, 0x26

    aput-byte v9, v0, v1

    const/16 v1, 0x27

    const/16 v19, 0x76

    aput-byte v19, v0, v1

    const/16 v1, 0x28

    aput-byte v18, v0, v1

    const/16 v1, 0x29

    aput-byte v11, v0, v1

    const/16 v1, 0x2a

    aput-byte v8, v0, v1

    const/16 v20, 0x2b

    aput-byte v16, v0, v20

    const/16 v20, 0x2c

    aput-byte v18, v0, v20

    const/16 v20, 0x2d

    aput-byte v6, v0, v20

    const/16 v20, 0x2e

    aput-byte v7, v0, v20

    aput-byte v9, v0, v8

    const/16 v20, 0x30

    aput-byte v16, v0, v20

    const/16 v20, 0x31

    aput-byte v8, v0, v20

    const/16 v20, 0x32

    const/16 v21, 0x43

    aput-byte v21, v0, v20

    const/16 v20, 0x33

    const/16 v21, 0x6f

    aput-byte v21, v0, v20

    const/16 v20, 0x34

    const/16 v21, 0x64

    aput-byte v21, v0, v20

    const/16 v20, 0x35

    aput-byte v9, v0, v20

    const/16 v20, 0x36

    const/16 v21, 0x53

    aput-byte v21, v0, v20

    const/16 v20, 0x37

    aput-byte v17, v0, v20

    const/16 v20, 0x38

    aput-byte v12, v0, v20

    const/16 v20, 0x39

    aput-byte v13, v0, v20

    const/16 v20, 0x3a

    aput-byte v13, v0, v20

    const/16 v20, 0x3b

    aput-byte v9, v0, v20

    const/16 v20, 0x3c

    aput-byte v16, v0, v20

    const/16 v20, 0x3d

    const/16 v21, 0x7

    aput-byte v21, v0, v20

    const/16 v20, 0x3f

    aput-byte v2, v0, v20

    const/16 v20, 0x40

    aput-byte v2, v0, v20

    const/16 v20, 0x42

    const/16 v21, 0x10

    aput-byte v21, v0, v20

    const/16 v20, 0x43

    aput-byte v15, v0, v20

    const/16 v20, 0x44

    aput-byte v18, v0, v20

    const/16 v20, 0x45

    aput-byte v19, v0, v20

    const/16 v20, 0x46

    aput-byte v18, v0, v20

    const/16 v20, 0x47

    aput-byte v8, v0, v20

    const/16 v20, 0x48

    aput-byte v11, v0, v20

    const/16 v20, 0x49

    aput-byte v18, v0, v20

    const/16 v20, 0x4a

    aput-byte v17, v0, v20

    const/16 v20, 0x4b

    aput-byte v7, v0, v20

    const/16 v20, 0x4c

    aput-byte v8, v0, v20

    const/16 v21, 0x4d

    const/16 v22, 0x4f

    aput-byte v22, v0, v21

    const/16 v21, 0x4e

    const/16 v22, 0x62

    aput-byte v22, v0, v21

    const/16 v21, 0x4f

    aput-byte v15, v0, v21

    const/16 v21, 0x50

    aput-byte v9, v0, v21

    const/16 v21, 0x51

    aput-byte v10, v0, v21

    const/16 v21, 0x52

    aput-byte v16, v0, v21

    const/16 v21, 0x53

    const/16 v22, 0x7

    aput-byte v22, v0, v21

    const/16 v21, 0x55

    aput-byte v4, v0, v21

    const/16 v21, 0x56

    aput-byte v2, v0, v21

    const/16 v21, 0x58

    const/16 v22, 0xa

    aput-byte v22, v0, v21

    const/16 v21, 0x59

    aput-byte v6, v0, v21

    const/16 v21, 0x5a

    aput-byte v9, v0, v21

    const/16 v21, 0x5b

    aput-byte v14, v0, v21

    const/16 v21, 0x5c

    const/16 v22, 0x75

    aput-byte v22, v0, v21

    const/16 v21, 0x5d

    aput-byte v11, v0, v21

    const/16 v21, 0x5e

    aput-byte v16, v0, v21

    const/16 v21, 0x5f

    const/16 v23, 0x54

    aput-byte v23, v0, v21

    const/16 v21, 0x60

    const/16 v23, 0x79

    aput-byte v23, v0, v21

    aput-byte v13, v0, v18

    const/16 v21, 0x62

    aput-byte v9, v0, v21

    aput-byte v2, v0, v10

    const/16 v21, 0x11

    aput-byte v21, v0, v9

    const/16 v21, 0x66

    aput-byte v20, v0, v21

    aput-byte v15, v0, v7

    const/16 v21, 0x68

    aput-byte v18, v0, v21

    aput-byte v19, v0, v12

    aput-byte v18, v0, v15

    const/16 v21, 0x6b

    aput-byte v8, v0, v21

    aput-byte v11, v0, v11

    const/16 v21, 0x6d

    aput-byte v18, v0, v21

    aput-byte v17, v0, v17

    const/16 v21, 0x6f

    aput-byte v7, v0, v21

    aput-byte v8, v0, v13

    const/16 v21, 0x71

    const/16 v23, 0x43

    aput-byte v23, v0, v21

    aput-byte v11, v0, v6

    aput-byte v18, v0, v14

    aput-byte v14, v0, v16

    aput-byte v14, v0, v22

    const/16 v21, 0x3b

    aput-byte v21, v0, v19

    const/16 v21, 0x77

    aput-byte v2, v0, v21

    const/16 v21, 0x79

    const/16 v23, 0xb

    aput-byte v23, v0, v21

    const/16 v21, 0x7a

    aput-byte v6, v0, v21

    const/16 v21, 0x7b

    aput-byte v9, v0, v21

    const/16 v21, 0x7c

    aput-byte v14, v0, v21

    const/16 v21, 0x7d

    aput-byte v22, v0, v21

    const/16 v21, 0x7e

    aput-byte v11, v0, v21

    const/16 v21, 0x7f

    aput-byte v16, v0, v21

    const/16 v21, 0x80

    const/16 v23, 0x56

    aput-byte v23, v0, v21

    const/16 v21, 0x81

    aput-byte v18, v0, v21

    const/16 v21, 0x82

    aput-byte v11, v0, v21

    const/16 v21, 0x83

    aput-byte v22, v0, v21

    const/16 v21, 0x84

    aput-byte v9, v0, v21

    const/16 v21, 0x85

    aput-byte v2, v0, v21

    const/16 v21, 0x87

    const/16 v23, 0x12

    aput-byte v23, v0, v21

    const/16 v21, 0x88

    aput-byte v20, v0, v21

    const/16 v21, 0x89

    aput-byte v15, v0, v21

    const/16 v21, 0x8a

    aput-byte v18, v0, v21

    const/16 v21, 0x8b

    aput-byte v19, v0, v21

    const/16 v21, 0x8c

    aput-byte v18, v0, v21

    const/16 v21, 0x8d

    aput-byte v8, v0, v21

    const/16 v21, 0x8e

    aput-byte v11, v0, v21

    const/16 v21, 0x8f

    aput-byte v18, v0, v21

    const/16 v21, 0x90

    aput-byte v17, v0, v21

    const/16 v21, 0x91

    aput-byte v7, v0, v21

    const/16 v21, 0x92

    aput-byte v8, v0, v21

    const/16 v21, 0x93

    const/16 v23, 0x4f

    aput-byte v23, v0, v21

    const/16 v21, 0x94

    const/16 v23, 0x62

    aput-byte v23, v0, v21

    const/16 v21, 0x95

    aput-byte v15, v0, v21

    const/16 v21, 0x96

    aput-byte v9, v0, v21

    const/16 v21, 0x97

    aput-byte v10, v0, v21

    const/16 v21, 0x98

    aput-byte v16, v0, v21

    const/16 v21, 0x99

    const/16 v23, 0x3b

    aput-byte v23, v0, v21

    const/16 v21, 0x9a

    aput-byte v2, v0, v21

    const/16 v21, 0x9c

    const/16 v23, 0x7

    aput-byte v23, v0, v21

    const/16 v21, 0x9d

    aput-byte v10, v0, v21

    const/16 v21, 0x9e

    aput-byte v11, v0, v21

    const/16 v21, 0x9f

    aput-byte v18, v0, v21

    const/16 v21, 0xa0

    aput-byte v14, v0, v21

    const/16 v21, 0xa1

    aput-byte v14, v0, v21

    const/16 v21, 0xa2

    const/16 v23, 0x24

    aput-byte v23, v0, v21

    const/16 v21, 0xa3

    const/16 v23, 0x30

    aput-byte v23, v0, v21

    const/16 v21, 0xa4

    aput-byte v2, v0, v21

    const/16 v21, 0xa6

    const/16 v23, 0x9

    aput-byte v23, v0, v21

    const/16 v21, 0xa7

    const/16 v23, 0x53

    aput-byte v23, v0, v21

    const/16 v21, 0xa8

    const/16 v23, 0x79

    aput-byte v23, v0, v21

    const/16 v21, 0xa9

    aput-byte v17, v0, v21

    const/16 v21, 0xaa

    aput-byte v16, v0, v21

    const/16 v21, 0xab

    const/16 v23, 0x68

    aput-byte v23, v0, v21

    const/16 v21, 0xac

    aput-byte v9, v0, v21

    const/16 v21, 0xad

    aput-byte v16, v0, v21

    const/16 v21, 0xae

    aput-byte v12, v0, v21

    const/16 v21, 0xaf

    aput-byte v10, v0, v21

    const/16 v21, 0xb0

    aput-byte v2, v0, v21

    const/16 v21, 0xb2

    const/16 v23, 0x6

    aput-byte v23, v0, v21

    const/16 v21, 0xb3

    const/16 v24, 0x3c

    aput-byte v24, v0, v21

    const/16 v21, 0xb4

    aput-byte v12, v0, v21

    const/16 v21, 0xb5

    aput-byte v17, v0, v21

    const/16 v21, 0xb6

    aput-byte v12, v0, v21

    const/16 v21, 0xb7

    aput-byte v16, v0, v21

    const/16 v21, 0xb8

    const/16 v24, 0x3e

    aput-byte v24, v0, v21

    const/16 v21, 0xb9

    aput-byte v2, v0, v21

    const/16 v21, 0xbb

    aput-byte v4, v0, v21

    const/16 v21, 0xbc

    const/16 v24, 0x28

    aput-byte v24, v0, v21

    const/16 v21, 0xbd

    const/16 v24, 0x29

    aput-byte v24, v0, v21

    const/16 v21, 0xbe

    const/16 v24, 0x56

    aput-byte v24, v0, v21

    const/16 v21, 0xbf

    aput-byte v2, v0, v21

    const/16 v21, 0xc1

    const/16 v24, 0x4

    aput-byte v24, v0, v21

    const/16 v21, 0xc2

    const/16 v24, 0x43

    aput-byte v24, v0, v21

    const/16 v21, 0xc3

    const/16 v24, 0x6f

    aput-byte v24, v0, v21

    const/16 v21, 0xc4

    const/16 v24, 0x64

    aput-byte v24, v0, v21

    const/16 v21, 0xc5

    aput-byte v9, v0, v21

    const/16 v21, 0xc6

    aput-byte v5, v0, v21

    const/16 v21, 0xc8

    const/16 v24, 0xb

    aput-byte v24, v0, v21

    const/16 v21, 0xca

    aput-byte v5, v0, v21

    const/16 v21, 0xcb

    const/16 v24, 0xa

    aput-byte v24, v0, v21

    const/16 v21, 0xcd

    const/16 v24, 0x4

    aput-byte v24, v0, v21

    const/16 v21, 0xcf

    const/16 v24, 0xe

    aput-byte v24, v0, v21

    const/16 v21, 0xd0

    aput-byte v2, v0, v21

    const/16 v21, 0xd2

    aput-byte v24, v0, v21

    const/16 v21, 0xd3

    aput-byte v15, v0, v21

    const/16 v21, 0xd4

    aput-byte v18, v0, v21

    const/16 v21, 0xd5

    aput-byte v19, v0, v21

    const/16 v21, 0xd6

    aput-byte v18, v0, v21

    const/16 v21, 0xd7

    aput-byte v8, v0, v21

    const/16 v21, 0xd8

    aput-byte v11, v0, v21

    const/16 v21, 0xd9

    aput-byte v18, v0, v21

    const/16 v21, 0xda

    aput-byte v17, v0, v21

    const/16 v21, 0xdb

    aput-byte v7, v0, v21

    const/16 v21, 0xdc

    aput-byte v8, v0, v21

    const/16 v21, 0xdd

    const/16 v24, 0x56

    aput-byte v24, v0, v21

    const/16 v21, 0xde

    const/16 v24, 0x6f

    aput-byte v24, v0, v21

    const/16 v21, 0xdf

    aput-byte v12, v0, v21

    const/16 v21, 0xe0

    const/16 v24, 0x64

    aput-byte v24, v0, v21

    const/16 v21, 0xe1

    const/16 v24, 0x7

    aput-byte v24, v0, v21

    const/16 v21, 0xe3

    const/16 v24, 0x10

    aput-byte v24, v0, v21

    const/16 v21, 0xe4

    aput-byte v2, v0, v21

    const/16 v21, 0xe6

    const/16 v24, 0x4

    aput-byte v24, v0, v21

    const/16 v21, 0xe7

    const/16 v24, 0x54

    aput-byte v24, v0, v21

    const/16 v21, 0xe8

    const/16 v24, 0x59

    aput-byte v24, v0, v21

    const/16 v21, 0xe9

    const/16 v24, 0x50

    aput-byte v24, v0, v21

    const/16 v21, 0xea

    const/16 v24, 0x45

    aput-byte v24, v0, v21

    const/16 v21, 0xeb

    aput-byte v5, v0, v21

    const/16 v21, 0xed

    const/16 v24, 0x12

    aput-byte v24, v0, v21

    const/16 v21, 0xef

    aput-byte v23, v0, v21

    const/16 v21, 0xf0

    const/16 v24, 0x9

    aput-byte v24, v0, v21

    const/16 v21, 0xf2

    const/16 v24, 0x11

    aput-byte v24, v0, v21

    const/16 v21, 0xf4

    const/16 v24, 0x13

    aput-byte v24, v0, v21

    const/16 v21, 0xf5

    aput-byte v5, v0, v21

    const/16 v21, 0xf7

    const/16 v24, 0x5

    aput-byte v24, v0, v21

    const/16 v21, 0xf9

    aput-byte v23, v0, v21

    const/16 v21, 0xfa

    const/16 v24, 0x9

    aput-byte v24, v0, v21

    const/16 v21, 0xfc

    aput-byte v3, v0, v21

    const/16 v21, 0xfe

    const/16 v24, 0x15

    aput-byte v24, v0, v21

    const/16 v21, 0xff

    aput-byte v5, v0, v21

    const/16 v21, 0x101

    const/16 v24, 0x7

    aput-byte v24, v0, v21

    const/16 v21, 0x103

    const/16 v24, 0x8

    aput-byte v24, v0, v21

    const/16 v21, 0x104

    const/16 v24, 0x9

    aput-byte v24, v0, v21

    const/16 v21, 0x106

    aput-byte v3, v0, v21

    const/16 v21, 0x108

    const/16 v24, 0x17

    aput-byte v24, v0, v21

    const/16 v21, 0x109

    aput-byte v2, v0, v21

    const/16 v21, 0x10b

    const/16 v24, 0xf

    aput-byte v24, v0, v21

    const/16 v21, 0x10c

    aput-byte v20, v0, v21

    const/16 v21, 0x10d

    aput-byte v12, v0, v21

    const/16 v21, 0x10e

    aput-byte v17, v0, v21

    const/16 v21, 0x10f

    aput-byte v9, v0, v21

    const/16 v21, 0x110

    const/16 v24, 0x4e

    aput-byte v24, v0, v21

    const/16 v21, 0x111

    aput-byte v22, v0, v21

    const/16 v21, 0x112

    const/16 v24, 0x6d

    aput-byte v24, v0, v21

    const/16 v21, 0x113

    const/16 v24, 0x62

    aput-byte v24, v0, v21

    const/16 v21, 0x114

    aput-byte v9, v0, v21

    const/16 v21, 0x115

    aput-byte v6, v0, v21

    const/16 v21, 0x116

    const/16 v24, 0x54

    aput-byte v24, v0, v21

    const/16 v21, 0x117

    aput-byte v18, v0, v21

    const/16 v21, 0x118

    const/16 v24, 0x62

    aput-byte v24, v0, v21

    const/16 v21, 0x119

    aput-byte v11, v0, v21

    const/16 v21, 0x11a

    aput-byte v9, v0, v21

    const/16 v21, 0x11b

    aput-byte v2, v0, v21

    const/16 v21, 0x11d

    const/16 v24, 0xd

    aput-byte v24, v0, v21

    const/16 v21, 0x11e

    aput-byte v7, v0, v21

    const/16 v21, 0x11f

    aput-byte v9, v0, v21

    const/16 v21, 0x120

    aput-byte v16, v0, v21

    const/16 v21, 0x121

    const/16 v24, 0x52

    aput-byte v24, v0, v21

    const/16 v21, 0x122

    aput-byte v9, v0, v21

    const/16 v21, 0x123

    aput-byte v14, v0, v21

    const/16 v21, 0x124

    aput-byte v22, v0, v21

    const/16 v21, 0x125

    aput-byte v11, v0, v21

    const/16 v21, 0x126

    aput-byte v16, v0, v21

    const/16 v21, 0x127

    const/16 v24, 0x54

    aput-byte v24, v0, v21

    const/16 v21, 0x128

    const/16 v24, 0x79

    aput-byte v24, v0, v21

    const/16 v21, 0x129

    aput-byte v13, v0, v21

    const/16 v21, 0x12a

    aput-byte v9, v0, v21

    const/16 v21, 0x12b

    aput-byte v2, v0, v21

    const/16 v21, 0x12d

    const/16 v24, 0x13

    aput-byte v24, v0, v21

    const/16 v21, 0x12e

    const/16 v24, 0x28

    aput-byte v24, v0, v21

    const/16 v21, 0x12f

    const/16 v24, 0x29

    aput-byte v24, v0, v21

    const/16 v21, 0x130

    aput-byte v20, v0, v21

    const/16 v21, 0x131

    aput-byte v15, v0, v21

    const/16 v21, 0x132

    aput-byte v18, v0, v21

    const/16 v21, 0x133

    aput-byte v19, v0, v21

    const/16 v21, 0x134

    aput-byte v18, v0, v21

    const/16 v21, 0x135

    aput-byte v8, v0, v21

    const/16 v21, 0x136

    aput-byte v11, v0, v21

    const/16 v21, 0x137

    aput-byte v18, v0, v21

    const/16 v21, 0x138

    aput-byte v17, v0, v21

    const/16 v21, 0x139

    aput-byte v7, v0, v21

    const/16 v21, 0x13a

    aput-byte v8, v0, v21

    const/16 v21, 0x13b

    const/16 v24, 0x43

    aput-byte v24, v0, v21

    const/16 v21, 0x13c

    aput-byte v11, v0, v21

    const/16 v21, 0x13d

    aput-byte v18, v0, v21

    const/16 v21, 0x13e

    aput-byte v14, v0, v21

    const/16 v21, 0x13f

    aput-byte v14, v0, v21

    const/16 v21, 0x140

    const/16 v24, 0x3b

    aput-byte v24, v0, v21

    const/16 v21, 0x141

    aput-byte v2, v0, v21

    const/16 v21, 0x143

    const/16 v24, 0xe

    aput-byte v24, v0, v21

    const/16 v21, 0x144

    aput-byte v7, v0, v21

    const/16 v21, 0x145

    aput-byte v9, v0, v21

    const/16 v21, 0x146

    aput-byte v16, v0, v21

    const/16 v21, 0x147

    const/16 v24, 0x52

    aput-byte v24, v0, v21

    const/16 v21, 0x148

    aput-byte v9, v0, v21

    const/16 v21, 0x149

    aput-byte v14, v0, v21

    const/16 v21, 0x14a

    aput-byte v22, v0, v21

    const/16 v21, 0x14b

    aput-byte v11, v0, v21

    const/16 v21, 0x14c

    aput-byte v16, v0, v21

    const/16 v21, 0x14d

    const/16 v24, 0x56

    aput-byte v24, v0, v21

    const/16 v21, 0x14e

    aput-byte v18, v0, v21

    const/16 v21, 0x14f

    aput-byte v11, v0, v21

    const/16 v21, 0x150

    aput-byte v22, v0, v21

    const/16 v21, 0x151

    aput-byte v9, v0, v21

    const/16 v21, 0x152

    aput-byte v2, v0, v21

    const/16 v21, 0x154

    const/16 v24, 0x14

    aput-byte v24, v0, v21

    const/16 v21, 0x155

    const/16 v24, 0x28

    aput-byte v24, v0, v21

    const/16 v21, 0x156

    const/16 v24, 0x29

    aput-byte v24, v0, v21

    const/16 v21, 0x157

    aput-byte v20, v0, v21

    const/16 v21, 0x158

    aput-byte v15, v0, v21

    const/16 v21, 0x159

    aput-byte v18, v0, v21

    const/16 v21, 0x15a

    aput-byte v19, v0, v21

    const/16 v21, 0x15b

    aput-byte v18, v0, v21

    const/16 v21, 0x15c

    aput-byte v8, v0, v21

    const/16 v21, 0x15d

    aput-byte v11, v0, v21

    const/16 v21, 0x15e

    aput-byte v18, v0, v21

    const/16 v21, 0x15f

    aput-byte v17, v0, v21

    const/16 v21, 0x160

    aput-byte v7, v0, v21

    const/16 v21, 0x161

    aput-byte v8, v0, v21

    const/16 v21, 0x162

    const/16 v24, 0x4f

    aput-byte v24, v0, v21

    const/16 v21, 0x163

    const/16 v24, 0x62

    aput-byte v24, v0, v21

    const/16 v21, 0x164

    aput-byte v15, v0, v21

    const/16 v21, 0x165

    aput-byte v9, v0, v21

    const/16 v21, 0x166

    aput-byte v10, v0, v21

    const/16 v21, 0x167

    aput-byte v16, v0, v21

    const/16 v21, 0x168

    const/16 v24, 0x3b

    aput-byte v24, v0, v21

    const/16 v21, 0x169

    aput-byte v2, v0, v21

    const/16 v21, 0x16b

    aput-byte v4, v0, v21

    const/16 v21, 0x16c

    aput-byte v6, v0, v21

    const/16 v21, 0x16d

    aput-byte v22, v0, v21

    const/16 v21, 0x16e

    aput-byte v17, v0, v21

    const/16 v21, 0x16f

    aput-byte v2, v0, v21

    const/16 v21, 0x171

    const/16 v24, 0x9

    aput-byte v24, v0, v21

    const/16 v21, 0x172

    aput-byte v14, v0, v21

    const/16 v21, 0x173

    aput-byte v9, v0, v21

    const/16 v21, 0x174

    aput-byte v16, v0, v21

    const/16 v21, 0x175

    const/16 v24, 0x52

    aput-byte v24, v0, v21

    const/16 v21, 0x176

    aput-byte v9, v0, v21

    const/16 v21, 0x177

    aput-byte v14, v0, v21

    const/16 v21, 0x178

    aput-byte v22, v0, v21

    const/16 v21, 0x179

    aput-byte v11, v0, v21

    const/16 v21, 0x17a

    aput-byte v16, v0, v21

    const/16 v21, 0x17b

    aput-byte v2, v0, v21

    const/16 v21, 0x17d

    const/16 v24, 0x26

    aput-byte v24, v0, v21

    const/16 v21, 0x17e

    const/16 v24, 0x28

    aput-byte v24, v0, v21

    const/16 v21, 0x17f

    aput-byte v20, v0, v21

    const/16 v21, 0x180

    aput-byte v15, v0, v21

    const/16 v21, 0x181

    aput-byte v18, v0, v21

    const/16 v21, 0x182

    aput-byte v19, v0, v21

    const/16 v21, 0x183

    aput-byte v18, v0, v21

    const/16 v21, 0x184

    aput-byte v8, v0, v21

    const/16 v21, 0x185

    aput-byte v11, v0, v21

    const/16 v21, 0x186

    aput-byte v18, v0, v21

    const/16 v21, 0x187

    aput-byte v17, v0, v21

    const/16 v21, 0x188

    aput-byte v7, v0, v21

    const/16 v21, 0x189

    aput-byte v8, v0, v21

    const/16 v21, 0x18a

    const/16 v24, 0x4f

    aput-byte v24, v0, v21

    const/16 v21, 0x18b

    const/16 v24, 0x62

    aput-byte v24, v0, v21

    const/16 v21, 0x18c

    aput-byte v15, v0, v21

    const/16 v21, 0x18d

    aput-byte v9, v0, v21

    const/16 v21, 0x18e

    aput-byte v10, v0, v21

    const/16 v21, 0x18f

    aput-byte v16, v0, v21

    const/16 v21, 0x190

    const/16 v24, 0x3b

    aput-byte v24, v0, v21

    const/16 v21, 0x191

    aput-byte v20, v0, v21

    const/16 v20, 0x192

    aput-byte v15, v0, v20

    const/16 v20, 0x193

    aput-byte v18, v0, v20

    const/16 v20, 0x194

    aput-byte v19, v0, v20

    const/16 v20, 0x195

    aput-byte v18, v0, v20

    const/16 v20, 0x196

    aput-byte v8, v0, v20

    const/16 v20, 0x197

    aput-byte v11, v0, v20

    const/16 v20, 0x198

    aput-byte v18, v0, v20

    const/16 v20, 0x199

    aput-byte v17, v0, v20

    const/16 v20, 0x19a

    aput-byte v7, v0, v20

    const/16 v7, 0x19b

    aput-byte v8, v0, v7

    const/16 v7, 0x19c

    const/16 v8, 0x43

    aput-byte v8, v0, v7

    const/16 v7, 0x19d

    aput-byte v11, v0, v7

    const/16 v7, 0x19e

    aput-byte v18, v0, v7

    const/16 v7, 0x19f

    aput-byte v14, v0, v7

    const/16 v7, 0x1a0

    aput-byte v14, v0, v7

    const/16 v7, 0x1a1

    const/16 v8, 0x3b

    aput-byte v8, v0, v7

    const/16 v7, 0x1a2

    const/16 v8, 0x29

    aput-byte v8, v0, v7

    const/16 v7, 0x1a3

    const/16 v8, 0x56

    aput-byte v8, v0, v7

    const/16 v7, 0x1a4

    aput-byte v2, v0, v7

    const/16 v7, 0x1a6

    const/16 v8, 0xa

    aput-byte v8, v0, v7

    const/16 v7, 0x1a7

    const/16 v8, 0x53

    aput-byte v8, v0, v7

    const/16 v7, 0x1a8

    const/16 v8, 0x6f

    aput-byte v8, v0, v7

    const/16 v7, 0x1a9

    aput-byte v22, v0, v7

    const/16 v7, 0x1aa

    aput-byte v6, v0, v7

    const/16 v6, 0x1ab

    aput-byte v10, v0, v6

    const/16 v6, 0x1ac

    aput-byte v9, v0, v6

    const/16 v6, 0x1ad

    const/16 v7, 0x46

    aput-byte v7, v0, v6

    const/16 v6, 0x1ae

    aput-byte v12, v0, v6

    const/16 v6, 0x1af

    aput-byte v11, v0, v6

    const/16 v6, 0x1b0

    aput-byte v9, v0, v6

    const/16 v6, 0x1b1

    aput-byte v2, v0, v6

    const/16 v6, 0x1b3

    const/16 v7, 0x10

    aput-byte v7, v0, v6

    const/16 v6, 0x1b4

    const/16 v7, 0x43

    aput-byte v7, v0, v6

    const/16 v6, 0x1b5

    const/16 v7, 0x6f

    aput-byte v7, v0, v6

    const/16 v6, 0x1b6

    const/16 v7, 0x64

    aput-byte v7, v0, v6

    const/16 v6, 0x1b7

    aput-byte v9, v0, v6

    const/16 v6, 0x1b8

    const/16 v7, 0x53

    aput-byte v7, v0, v6

    const/16 v6, 0x1b9

    aput-byte v17, v0, v6

    const/16 v6, 0x1ba

    aput-byte v12, v0, v6

    const/16 v6, 0x1bb

    aput-byte v13, v0, v6

    const/16 v6, 0x1bc

    aput-byte v13, v0, v6

    const/16 v6, 0x1bd

    aput-byte v9, v0, v6

    const/16 v6, 0x1be

    aput-byte v16, v0, v6

    const/16 v6, 0x1bf

    const/16 v7, 0x2e

    aput-byte v7, v0, v6

    const/16 v6, 0x1c0

    aput-byte v15, v0, v6

    const/16 v6, 0x1c1

    aput-byte v18, v0, v6

    const/16 v6, 0x1c2

    aput-byte v19, v0, v6

    const/16 v6, 0x1c3

    aput-byte v18, v0, v6

    const/16 v6, 0x1c5

    const/16 v7, 0x21

    aput-byte v7, v0, v6

    const/16 v6, 0x1c7

    aput-byte v3, v0, v6

    const/16 v6, 0x1c9

    const/4 v7, 0x4

    aput-byte v7, v0, v6

    const/16 v6, 0x1cd

    aput-byte v4, v0, v6

    const/16 v6, 0x1cf

    aput-byte v3, v0, v6

    const/16 v6, 0x1d1

    const/4 v7, 0x5

    aput-byte v7, v0, v6

    const/16 v6, 0x1d3

    aput-byte v23, v0, v6

    const/16 v6, 0x1d7

    aput-byte v3, v0, v6

    const/16 v6, 0x1d9

    const/4 v7, 0x7

    aput-byte v7, v0, v6

    const/16 v6, 0x1db

    const/16 v7, 0x8

    aput-byte v7, v0, v6

    const/16 v6, 0x1df

    aput-byte v7, v0, v6

    const/16 v6, 0x1e1

    const/16 v7, 0x9

    aput-byte v7, v0, v6

    const/16 v6, 0x1e3

    aput-byte v23, v0, v6

    const/16 v6, 0x1e5

    aput-byte v2, v0, v6

    const/16 v6, 0x1e7

    const/16 v7, 0xa

    aput-byte v7, v0, v6

    const/16 v6, 0x1ed

    const/4 v7, 0x5

    aput-byte v7, v0, v6

    const/16 v6, 0x1ef

    aput-byte v2, v0, v6

    const/16 v6, 0x1f1

    const/16 v7, 0xb

    aput-byte v7, v0, v6

    const/16 v6, 0x1f3

    aput-byte v5, v0, v6

    const/16 v6, 0x1f5

    aput-byte v2, v0, v6

    const/16 v6, 0x1f7

    const/16 v7, 0xd

    aput-byte v7, v0, v6

    const/16 v6, 0x1fb

    const/16 v7, 0x35

    aput-byte v7, v0, v6

    const/16 v6, 0x1fd

    aput-byte v3, v0, v6

    const/16 v6, 0x1ff

    aput-byte v2, v0, v6

    const/16 v6, 0x203

    const/16 v7, 0x11

    aput-byte v7, v0, v6

    const/16 v6, 0x204

    aput-byte v1, v0, v6

    const/16 v6, 0x205

    const/16 v7, -0x49

    aput-byte v7, v0, v6

    const/16 v6, 0x207

    const/16 v7, 0xf

    aput-byte v7, v0, v6

    const/16 v6, 0x208

    aput-byte v1, v0, v6

    const/16 v6, 0x209

    const/16 v7, -0x4e

    aput-byte v7, v0, v6

    const/16 v6, 0x20b

    const/16 v7, 0x14

    aput-byte v7, v0, v6

    const/16 v6, 0x20c

    const/16 v7, -0x4b

    aput-byte v7, v0, v6

    const/16 v6, 0x20e

    const/16 v7, 0x16

    aput-byte v7, v0, v6

    const/16 v6, 0x20f

    aput-byte v1, v0, v6

    const/16 v6, 0x210

    aput-byte v2, v0, v6

    const/16 v6, 0x211

    const/16 v7, -0x4b

    aput-byte v7, v0, v6

    const/16 v6, 0x213

    const/16 v7, 0x18

    aput-byte v7, v0, v6

    const/16 v6, 0x214

    const/16 v7, -0x4f

    aput-byte v7, v0, v6

    const/16 v6, 0x218

    aput-byte v2, v0, v6

    const/16 v6, 0x21a

    const/16 v7, 0x19

    aput-byte v7, v0, v6

    const/16 v6, 0x21e

    const/16 v7, 0x12

    aput-byte v7, v0, v6

    const/16 v6, 0x220

    const/4 v7, 0x4

    aput-byte v7, v0, v6

    const/16 v6, 0x224

    const/16 v7, 0x11

    aput-byte v7, v0, v6

    const/16 v6, 0x226

    const/4 v7, 0x4

    aput-byte v7, v0, v6

    const/16 v6, 0x228

    const/16 v7, 0x12

    aput-byte v7, v0, v6

    const/16 v6, 0x22a

    const/16 v7, 0xb

    aput-byte v7, v0, v6

    const/16 v6, 0x22c

    const/16 v7, 0x13

    aput-byte v7, v0, v6

    const/16 v6, 0x22e

    const/16 v7, 0x10

    aput-byte v7, v0, v6

    const/16 v6, 0x230

    const/16 v7, 0x11

    aput-byte v7, v0, v6

    const/16 v6, 0x232

    aput-byte v2, v0, v6

    const/16 v6, 0x234

    const/16 v7, 0x1a

    aput-byte v7, v0, v6

    const/16 v6, 0x236

    const/16 v7, 0x1b

    aput-byte v7, v0, v6

    const/16 v6, 0x238

    aput-byte v2, v0, v6

    const/16 v6, 0x23a

    const/16 v7, 0xd

    aput-byte v7, v0, v6

    const/16 v6, 0x23e

    const/16 v7, 0x1d

    aput-byte v7, v0, v6

    const/16 v6, 0x240

    aput-byte v2, v0, v6

    const/16 v6, 0x242

    aput-byte v2, v0, v6

    const/16 v6, 0x246

    const/4 v7, 0x5

    aput-byte v7, v0, v6

    const/16 v6, 0x247

    aput-byte v1, v0, v6

    const/16 v6, 0x248

    const/16 v7, -0x4c

    aput-byte v7, v0, v6

    const/16 v6, 0x24a

    const/16 v7, 0x16

    aput-byte v7, v0, v6

    const/16 v6, 0x24b

    const/16 v7, -0x50

    aput-byte v7, v0, v6

    const/16 v6, 0x24f

    aput-byte v2, v0, v6

    const/16 v6, 0x251

    const/16 v7, 0x19

    aput-byte v7, v0, v6

    const/16 v6, 0x255

    aput-byte v23, v0, v6

    const/16 v6, 0x257

    aput-byte v2, v0, v6

    const/16 v6, 0x25b

    const/16 v7, 0x18

    aput-byte v7, v0, v6

    const/16 v6, 0x25d

    aput-byte v2, v0, v6

    const/16 v6, 0x25f

    const/16 v7, 0x1c

    aput-byte v7, v0, v6

    const/16 v6, 0x261

    const/16 v7, 0x1d

    aput-byte v7, v0, v6

    const/16 v6, 0x263

    aput-byte v2, v0, v6

    const/16 v6, 0x265

    const/16 v7, 0xd

    aput-byte v7, v0, v6

    const/16 v6, 0x269

    const/16 v7, 0x1d

    aput-byte v7, v0, v6

    const/16 v6, 0x26b

    aput-byte v2, v0, v6

    const/16 v6, 0x26d

    aput-byte v2, v0, v6

    const/16 v6, 0x271

    const/4 v7, 0x5

    aput-byte v7, v0, v6

    const/16 v6, 0x272

    aput-byte v1, v0, v6

    const/16 v6, 0x273

    const/16 v7, -0x4c

    aput-byte v7, v0, v6

    const/16 v6, 0x275

    const/16 v7, 0x18

    aput-byte v7, v0, v6

    const/16 v6, 0x276

    const/16 v7, -0x50

    aput-byte v7, v0, v6

    const/16 v6, 0x27a

    aput-byte v2, v0, v6

    const/16 v6, 0x27c

    const/16 v7, 0x19

    aput-byte v7, v0, v6

    const/16 v6, 0x280

    aput-byte v23, v0, v6

    const/16 v6, 0x282

    aput-byte v2, v0, v6

    const/16 v6, 0x286

    const/16 v7, 0x1e

    aput-byte v7, v0, v6

    const/16 v6, 0x288

    aput-byte v2, v0, v6

    const/16 v6, 0x28a

    aput-byte v7, v0, v6

    const/16 v6, 0x28c

    aput-byte v5, v0, v6

    const/16 v5, 0x28e

    aput-byte v2, v0, v5

    const/16 v5, 0x290

    const/16 v6, 0xd

    aput-byte v6, v0, v5

    const/16 v5, 0x294

    const/16 v6, 0x19

    aput-byte v6, v0, v5

    const/16 v5, 0x298

    aput-byte v2, v0, v5

    const/16 v5, 0x29c

    aput-byte v2, v0, v5

    const/16 v5, 0x29d

    const/16 v6, -0x4f

    aput-byte v6, v0, v5

    const/16 v5, 0x2a1

    aput-byte v2, v0, v5

    const/16 v5, 0x2a3

    const/16 v6, 0x19

    aput-byte v6, v0, v5

    const/16 v5, 0x2a7

    aput-byte v23, v0, v5

    const/16 v5, 0x2a9

    aput-byte v2, v0, v5

    const/16 v5, 0x2ad

    const/16 v6, 0x24

    aput-byte v6, v0, v5

    const/16 v5, 0x2af

    aput-byte v2, v0, v5

    const/16 v5, 0x2b1

    const/16 v6, 0x1f

    aput-byte v6, v0, v5

    const/16 v5, 0x2b3

    const/16 v6, 0x20

    aput-byte v6, v0, v5

    const/16 v5, 0x2b5

    aput-byte v2, v0, v5

    const/16 v5, 0x2b7

    const/16 v6, 0xd

    aput-byte v6, v0, v5

    const/16 v5, 0x2bb

    const/16 v6, 0x2b

    aput-byte v6, v0, v5

    const/16 v5, 0x2bd

    aput-byte v3, v0, v5

    const/16 v5, 0x2bf

    aput-byte v4, v0, v5

    const/16 v5, 0x2c3

    const/16 v6, 0xb

    aput-byte v6, v0, v5

    const/16 v5, 0x2c4

    aput-byte v1, v0, v5

    const/16 v5, 0x2c5

    const/16 v6, 0x2b

    aput-byte v6, v0, v5

    const/16 v5, 0x2c6

    const/16 v6, -0x4b

    aput-byte v6, v0, v5

    const/16 v5, 0x2c8

    const/16 v6, 0x18

    aput-byte v6, v0, v5

    const/16 v5, 0x2c9

    aput-byte v1, v0, v5

    const/16 v5, 0x2ca

    const/16 v6, 0x2c

    aput-byte v6, v0, v5

    const/16 v5, 0x2cb

    const/16 v6, -0x4b

    aput-byte v6, v0, v5

    const/16 v5, 0x2cd

    const/16 v6, 0x16

    aput-byte v6, v0, v5

    const/16 v5, 0x2ce

    const/16 v6, -0x4f

    aput-byte v6, v0, v5

    const/16 v5, 0x2d2

    aput-byte v2, v0, v5

    const/16 v5, 0x2d4

    const/16 v6, 0x19

    aput-byte v6, v0, v5

    const/16 v5, 0x2d8

    const/16 v6, 0xe

    aput-byte v6, v0, v5

    const/16 v5, 0x2da

    aput-byte v4, v0, v5

    const/16 v4, 0x2de

    aput-byte v1, v0, v4

    const/16 v1, 0x2e0

    const/4 v4, 0x5

    aput-byte v4, v0, v1

    const/16 v1, 0x2e2

    const/16 v4, 0x2b

    aput-byte v4, v0, v1

    const/16 v1, 0x2e4

    const/16 v4, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0x2e6

    const/16 v4, 0x29

    aput-byte v4, v0, v1

    const/16 v1, 0x2e8

    aput-byte v2, v0, v1

    const/16 v1, 0x2ea

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x2ee

    aput-byte v3, v0, v1

    const/16 v1, 0x2f0

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public getImports()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->imports:[[C

    return-object v0
.end method

.method public getPackageName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->packageName:[C

    return-object v0
.end method

.method public getRootCodeSnippetBinary()Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->codeSnippetBinary:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSkeleton;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSkeleton;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->codeSnippetBinary:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->codeSnippetBinary:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    return-object v0
.end method

.method public getVarClassName()[C
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->installedVars:Lorg/eclipse/jdt/internal/eval/VariablesInfo;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    return-object v0

    :cond_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/eval/VariablesInfo;->packageName:[C

    iget-object v0, v0, Lorg/eclipse/jdt/internal/eval/VariablesInfo;->className:[C

    const/16 v2, 0x2e

    invoke-static {v1, v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v0

    return-object v0
.end method

.method public newVariable([C[C[C)Lorg/eclipse/jdt/internal/eval/GlobalVariable;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/eval/GlobalVariable;-><init>([C[C[C)V

    iget p1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->variableCount:I

    iget-object p2, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->variables:[Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    array-length p3, p2

    if-lt p1, p3, :cond_0

    mul-int/lit8 p3, p1, 0x2

    new-array p3, p3, [Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->variables:[Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    const/4 v1, 0x0

    invoke-static {p2, v1, p3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->variables:[Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    iget p2, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->variableCount:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->variableCount:I

    aput-object v0, p1, p2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->varsChanged:Z

    return-object v0
.end method

.method public select([CIILorg/eclipse/jdt/internal/core/SearchableEnvironment;Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;Ljava/util/Map;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Lorg/eclipse/jdt/internal/core/SearchableEnvironment;",
            "Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/eclipse/jdt/core/WorkingCopyOwner;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    const-string v2, "CodeSnippetSelection"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v14

    new-instance v13, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->packageName:[C

    iget-object v6, v0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->imports:[[C

    iget-object v3, v0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->installedVars:Lorg/eclipse/jdt/internal/eval/VariablesInfo;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v8, v3

    goto :goto_1

    :cond_0
    iget-object v3, v3, Lorg/eclipse/jdt/internal/eval/VariablesInfo;->className:[C

    goto :goto_0

    :goto_1
    iget-object v9, v0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableNames:[[C

    iget-object v10, v0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableTypeNames:[[C

    iget-object v11, v0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableModifiers:[I

    iget-object v12, v0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->declaringTypeName:[C

    iget-object v7, v0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->lineSeparator:Ljava/lang/String;

    move-object v3, v13

    move-object/from16 v4, p1

    move-object/from16 v16, v7

    move-object v7, v2

    move-object v1, v13

    move-object/from16 v13, v16

    invoke-direct/range {v3 .. v15}, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;-><init>([C[C[[C[C[C[[C[[C[I[CLjava/lang/String;J)V

    new-instance v3, Lorg/eclipse/jdt/internal/eval/EvaluationContext$5;

    invoke-direct {v3, v0, v2, v1}, Lorg/eclipse/jdt/internal/eval/EvaluationContext$5;-><init>(Lorg/eclipse/jdt/internal/eval/EvaluationContext;[CLorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;)V

    new-instance v2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;

    move-object/from16 v4, p5

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->getSelectionRequestor(Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;)Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    move-result-object v4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v7, v1

    move-object/from16 v1, p4

    invoke-direct {v2, v1, v4, v5, v6}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;-><init>(Lorg/eclipse/jdt/internal/core/SearchableEnvironment;Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;Ljava/util/Map;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    iget v1, v7, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->startPosOffset:I

    add-int v4, v1, p2

    add-int v1, v1, p3

    invoke-virtual {v2, v3, v4, v1}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->select(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;II)V

    return-void
.end method

.method public setImports([[C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->imports:[[C

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->varsChanged:Z

    return-void
.end method

.method public setLineSeparator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->lineSeparator:Ljava/lang/String;

    return-void
.end method

.method public setPackageName([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->packageName:[C

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->varsChanged:Z

    return-void
.end method
