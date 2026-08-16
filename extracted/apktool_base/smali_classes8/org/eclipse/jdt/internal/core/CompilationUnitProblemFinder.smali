.class public Lorg/eclipse/jdt/internal/core/CompilationUnitProblemFinder;
.super Lorg/eclipse/jdt/internal/compiler/Compiler;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/eclipse/jdt/internal/compiler/Compiler;-><init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    return-void
.end method

.method public static getCompilerOptions(Ljava/util/Map;ZZ)Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    iput-boolean p2, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->performMethodsFullRecovery:Z

    iput-boolean p2, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->performStatementsRecovery:Z

    xor-int/lit8 p0, p1, 0x1

    iput-boolean p0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->parseLiteralExpressionsAsConstants:Z

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    iput-boolean p0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->storeAnnotations:Z

    :cond_0
    return-object v0
.end method

.method public static getHandlingPolicy()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->proceedWithAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static getRequestor()Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/CompilationUnitProblemFinder$1;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnitProblemFinder$1;-><init>()V

    return-object v0
.end method

.method private static isTestSource(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/ICompilationUnit;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p0, v1}, Lorg/eclipse/jdt/core/IJavaProject;->getResolvedClasspath(Z)[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    array-length v3, p0

    move v4, v0

    :goto_0
    if-lt v4, v3, :cond_0

    goto :goto_2

    :cond_0
    aget-object v5, p0, v4

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IClasspathEntry;->isTest()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v5
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    return v1

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while determining if compilation unit \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is test source"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_2
    return v0
.end method

.method public static process(Lorg/eclipse/jdt/internal/core/CompilationUnit;Lorg/eclipse/jdt/core/WorkingCopyOwner;Ljava/util/HashMap;ZILorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 47
    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/CompilationUnitProblemFinder;->process(Lorg/eclipse/jdt/internal/core/CompilationUnit;Lorg/eclipse/jdt/internal/compiler/SourceElementParser;Lorg/eclipse/jdt/core/WorkingCopyOwner;Ljava/util/HashMap;ZILorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static process(Lorg/eclipse/jdt/internal/core/CompilationUnit;Lorg/eclipse/jdt/internal/compiler/SourceElementParser;Lorg/eclipse/jdt/core/WorkingCopyOwner;Ljava/util/HashMap;ZILorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v1, p6

    .line 1
    const-string v10, "ms"

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaProject;

    .line 2
    :try_start_0
    new-instance v6, Lorg/eclipse/jdt/internal/core/CancelableNameEnvironment;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v3

    invoke-static {v3, v7}, Lorg/eclipse/jdt/internal/core/CompilationUnitProblemFinder;->isTestSource(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/ICompilationUnit;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    xor-int/2addr v3, v4

    move-object/from16 v12, p2

    invoke-direct {v6, v2, v12, v1, v3}, Lorg/eclipse/jdt/internal/core/CancelableNameEnvironment;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;Z)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 3
    :try_start_1
    new-instance v3, Lorg/eclipse/jdt/internal/core/CancelableProblemFactory;

    invoke-direct {v3, v1}, Lorg/eclipse/jdt/internal/core/CancelableProblemFactory;-><init>(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_1
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 4
    :try_start_2
    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object v2

    and-int/lit8 v12, p5, 0x2

    if-eqz v12, :cond_0

    move v12, v4

    goto :goto_0

    :cond_0
    move v12, v5

    :goto_0
    invoke-static {v2, v9, v12}, Lorg/eclipse/jdt/internal/core/CompilationUnitProblemFinder;->getCompilerOptions(Ljava/util/Map;ZZ)Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v15

    and-int/lit8 v2, p5, 0x8

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v5

    .line 5
    :goto_1
    iput-boolean v2, v15, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->ignoreMethodBodies:Z

    .line 6
    new-instance v14, Lorg/eclipse/jdt/internal/core/CompilationUnitProblemFinder;

    .line 7
    invoke-static {}, Lorg/eclipse/jdt/internal/core/CompilationUnitProblemFinder;->getHandlingPolicy()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v16

    .line 8
    invoke-static {}, Lorg/eclipse/jdt/internal/core/CompilationUnitProblemFinder;->getRequestor()Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;

    move-result-object v17

    move-object v12, v14

    move-object v13, v6

    move-object v11, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v3

    .line 9
    invoke-direct/range {v12 .. v17}, Lorg/eclipse/jdt/internal/core/CompilationUnitProblemFinder;-><init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V
    :try_end_2
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    xor-int/lit8 v12, v2, 0x1

    if-eqz v0, :cond_2

    .line 10
    :try_start_3
    iput-object v0, v11, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    .line 11
    invoke-virtual {v0, v7, v4, v1}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->parseCompilationUnit(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v13
    :try_end_3
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v4, 0x1

    move-object v1, v11

    move-object v2, v13

    move-object v14, v3

    move-object/from16 v3, p0

    move v15, v5

    move v5, v12

    move-object/from16 v18, v6

    move v6, v12

    .line 12
    :try_start_4
    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/Compiler;->resolve(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;ZZZ)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    :try_end_4
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v3, v14

    move-object/from16 v6, v18

    :goto_2
    move-object v14, v11

    goto/16 :goto_14

    :catch_0
    move-exception v0

    move-object v3, v14

    move-object/from16 v6, v18

    :goto_3
    move-object v14, v11

    goto/16 :goto_12

    :catch_1
    move-exception v0

    move-object v3, v14

    move-object/from16 v6, v18

    :goto_4
    move-object v14, v11

    goto/16 :goto_13

    :catch_2
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v14, v3

    move-object/from16 v18, v6

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v14, v3

    move-object/from16 v18, v6

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v14, v3

    move-object/from16 v18, v6

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v14, v3

    move v15, v5

    move-object/from16 v18, v6

    :goto_5
    const/4 v13, 0x0

    goto :goto_6

    :cond_2
    move-object v14, v3

    move v15, v5

    move-object/from16 v18, v6

    .line 13
    :try_start_5
    invoke-virtual {v11, v7, v4, v12, v12}, Lorg/eclipse/jdt/internal/compiler/Compiler;->resolve(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;ZZZ)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v13
    :try_end_5
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_5

    .line 14
    :goto_6
    :try_start_6
    invoke-virtual {v11, v0, v13}, Lorg/eclipse/jdt/internal/compiler/Compiler;->handleInternalException(Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    :goto_7
    if-eqz v13, :cond_7

    .line 15
    iget-object v0, v13, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    .line 16
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getCUProblems()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object v1

    if-nez v1, :cond_3

    move v5, v15

    goto :goto_8

    .line 17
    :cond_3
    array-length v5, v1
    :try_end_6
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_8
    if-lez v5, :cond_4

    .line 18
    :try_start_7
    new-array v2, v5, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    .line 19
    invoke-static {v1, v15, v2, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    const-string v1, "org.eclipse.jdt.core.problem"

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 21
    :cond_4
    :try_start_8
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getTasks()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object v0

    if-nez v0, :cond_5

    move v5, v15

    goto :goto_9

    .line 22
    :cond_5
    array-length v5, v0
    :try_end_8
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_9
    if-lez v5, :cond_6

    .line 23
    :try_start_9
    new-array v1, v5, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    .line 24
    invoke-static {v0, v15, v1, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    const-string v0, "org.eclipse.jdt.core.task"

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 26
    :cond_6
    :try_start_a
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z

    if-eqz v0, :cond_7

    .line 27
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " TIME SPENT in NameLoopkup#seekTypesInSourcePackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v2, v18

    :try_start_b
    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    iget-wide v3, v3, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInSourcePackage:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " TIME SPENT in NameLoopkup#seekTypesInBinaryPackage: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    iget-wide v3, v3, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInBinaryPackage:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_a
    const/4 v1, 0x0

    goto :goto_e

    :catchall_2
    move-exception v0

    :goto_b
    move-object v6, v2

    move-object v3, v14

    goto/16 :goto_2

    :catch_7
    move-exception v0

    :goto_c
    move-object v6, v2

    move-object v3, v14

    goto/16 :goto_3

    :catch_8
    move-exception v0

    :goto_d
    move-object v6, v2

    move-object v3, v14

    goto/16 :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v2, v18

    goto :goto_b

    :catch_9
    move-exception v0

    move-object/from16 v2, v18

    goto :goto_c

    :catch_a
    move-exception v0

    move-object/from16 v2, v18

    goto :goto_d

    :cond_7
    move-object/from16 v2, v18

    goto :goto_a

    .line 29
    :goto_e
    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/CancelableNameEnvironment;->setMonitor(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    .line 30
    iput-object v1, v14, Lorg/eclipse/jdt/internal/core/CancelableProblemFactory;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-nez v9, :cond_8

    .line 31
    iget-object v0, v11, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->reset()V

    :cond_8
    return-object v13

    :catchall_4
    move-exception v0

    move-object v14, v3

    move-object v2, v6

    :goto_f
    const/4 v14, 0x0

    goto :goto_14

    :catch_b
    move-exception v0

    move-object v14, v3

    move-object v2, v6

    :goto_10
    const/4 v14, 0x0

    goto :goto_12

    :catch_c
    move-exception v0

    move-object v14, v3

    move-object v2, v6

    :goto_11
    const/4 v14, 0x0

    goto :goto_13

    :catchall_5
    move-exception v0

    move-object v2, v6

    const/4 v3, 0x0

    goto :goto_f

    :catch_d
    move-exception v0

    move-object v2, v6

    const/4 v3, 0x0

    goto :goto_10

    :catch_e
    move-exception v0

    move-object v2, v6

    const/4 v3, 0x0

    goto :goto_11

    :catchall_6
    move-exception v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    goto :goto_f

    :catch_f
    move-exception v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    goto :goto_10

    :catch_10
    move-exception v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    goto :goto_11

    .line 32
    :goto_12
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/Openable;->findRecommendedLineSeparator()Ljava/lang/String;

    move-result-object v1

    .line 33
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "Exception occurred during problem detection:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    const-string v4, "----------------------------------- SOURCE BEGIN -------------------------------------"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    const-string v1, "----------------------------------- SOURCE END -------------------------------------"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 41
    new-instance v1, Lorg/eclipse/jdt/core/JavaModelException;

    const/16 v2, 0x3ed

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw v1

    :catchall_7
    move-exception v0

    goto :goto_14

    .line 42
    :goto_13
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :goto_14
    const/4 v1, 0x0

    if-eqz v6, :cond_9

    .line 43
    invoke-virtual {v6, v1}, Lorg/eclipse/jdt/internal/core/CancelableNameEnvironment;->setMonitor(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_9
    if-eqz v3, :cond_a

    .line 44
    iput-object v1, v3, Lorg/eclipse/jdt/internal/core/CancelableProblemFactory;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    :cond_a
    if-eqz v14, :cond_b

    if-nez v9, :cond_b

    .line 45
    iget-object v1, v14, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->reset()V

    .line 46
    :cond_b
    throw v0
.end method


# virtual methods
.method public accept(Lorg/eclipse/jdt/internal/compiler/env/IModule;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 11

    .line 20
    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 21
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->getHandle()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 22
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;->accept(Lorg/eclipse/jdt/internal/compiler/env/IModule;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-void

    .line 23
    :cond_1
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->MODULE_INFO_FILE_NAME:[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5, v5, v4}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>([CIII)V

    .line 24
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v6, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    .line 25
    iget-wide v3, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    if-nez p2, :cond_2

    .line 26
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 27
    :cond_2
    :try_start_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    .line 28
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    const-string v9, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v0, v9, v5}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    .line 29
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    const-string v9, "org.eclipse.jdt.core.compiler.source"

    invoke-interface {v0, v9, v5}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    .line 30
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    .line 31
    invoke-static {p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->buildModularCompilationUnit(Lorg/eclipse/jdt/internal/compiler/env/IModule;Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 32
    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    .line 33
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 34
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iput-wide v6, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    .line 35
    iput-wide v3, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    return-void

    .line 36
    :goto_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iput-wide v6, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    .line 37
    iput-wide v3, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    .line 38
    throw p1
.end method

.method public accept([Lorg/eclipse/jdt/internal/compiler/env/ISourceType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 10

    :goto_0
    const/4 v0, 0x0

    .line 1
    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;->getEnclosingType()Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v4, v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>([CIII)V

    .line 3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v5, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    .line 4
    iget-wide v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    .line 5
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    if-nez p2, :cond_0

    .line 6
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 7
    :cond_0
    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getHandle()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    .line 8
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    const-string v8, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v0, v8, v4}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    .line 9
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    const-string v8, "org.eclipse.jdt.core.compiler.source"

    invoke-interface {v0, v8, v4}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    .line 10
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    const/16 v4, 0x1f

    .line 11
    invoke-static {p1, v4, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->buildCompilationUnit([Lorg/eclipse/jdt/internal/compiler/env/ISourceType;ILorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    .line 13
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 14
    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iput-wide v5, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    .line 15
    iput-wide v2, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    return-void

    .line 16
    :goto_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iput-wide v5, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    .line 17
    iput-wide v2, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    .line 18
    throw p1

    .line 19
    :cond_2
    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;->getEnclosingType()Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    move-result-object v1

    aput-object v1, p1, v0

    goto :goto_0
.end method

.method public initializeParser()V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->parseLiteralExpressionsAsConstants:Z

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    return-void
.end method
