.class public Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NoArgument:[Ljava/lang/String;


# instance fields
.field public final options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

.field public policy:Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

.field public final problemFactory:Lorg/eclipse/jdt/internal/compiler/IProblemFactory;

.field private rootPolicy:Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

.field protected suppressTagging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->NoArgument:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->suppressTagging:Z

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->policy:Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->problemFactory:Lorg/eclipse/jdt/internal/compiler/IProblemFactory;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    return-void
.end method


# virtual methods
.method public computeSeverity(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public createProblem([CI[Ljava/lang/String;I[Ljava/lang/String;IIIII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;
    .locals 12

    move-object v0, p0

    .line 2
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->problemFactory:Lorg/eclipse/jdt/internal/compiler/IProblemFactory;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-interface/range {v1 .. v11}, Lorg/eclipse/jdt/internal/compiler/IProblemFactory;->createProblem([CI[Ljava/lang/String;I[Ljava/lang/String;IIIII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object v1

    return-object v1
.end method

.method public createProblem([CI[Ljava/lang/String;[Ljava/lang/String;IIIII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;
    .locals 11

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->problemFactory:Lorg/eclipse/jdt/internal/compiler/IProblemFactory;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lorg/eclipse/jdt/internal/compiler/IProblemFactory;->createProblem([CI[Ljava/lang/String;[Ljava/lang/String;IIIII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object v1

    return-object v1
.end method

.method public handle(I[Ljava/lang/String;I[Ljava/lang/String;IIILorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 18

    move-object/from16 v11, p0

    move/from16 v2, p1

    move/from16 v12, p5

    move/from16 v7, p6

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    const/16 v0, 0x100

    if-ne v12, v0, :cond_0

    return-void

    :cond_0
    and-int/lit8 v0, v12, 0x21

    const/4 v15, 0x0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_1

    move v9, v10

    goto :goto_0

    :cond_1
    move v9, v15

    :goto_0
    and-int/lit16 v0, v12, 0x200

    const/4 v8, 0x0

    if-nez v0, :cond_5

    .line 1
    iget-object v0, v11, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->policy:Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;->ignoreAllErrors()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v13, :cond_3

    and-int/lit8 v0, v12, 0x1

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object v12, v8

    move v8, v13

    .line 2
    invoke-virtual/range {v0 .. v10}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->createProblem([CI[Ljava/lang/String;I[Ljava/lang/String;IIIII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object v0

    .line 3
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;

    invoke-direct {v1, v12, v0}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw v1

    :cond_3
    if-eqz v9, :cond_4

    .line 4
    invoke-interface {v13, v2}, Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;->tagAsHavingIgnoredMandatoryErrors(I)V

    :cond_4
    return-void

    :cond_5
    and-int/lit8 v0, v12, 0x20

    if-eqz v0, :cond_6

    const v0, 0x200001c2

    if-eq v2, v0, :cond_6

    .line 5
    iget-object v0, v11, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->ignoreSourceFolderWarningOption:Z

    if-nez v0, :cond_6

    .line 6
    invoke-virtual/range {p9 .. p9}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getCompilationUnit()Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 7
    :try_start_0
    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->ignoreOptionalProblems()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_6

    return-void

    :catch_0
    :cond_6
    if-nez v13, :cond_8

    and-int/lit8 v0, v12, 0x1

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object v12, v8

    move v8, v13

    .line 8
    invoke-virtual/range {v0 .. v10}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->createProblem([CI[Ljava/lang/String;I[Ljava/lang/String;IIIII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object v0

    .line 9
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;

    invoke-direct {v1, v12, v0}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw v1

    :cond_8
    if-ltz v7, :cond_9

    .line 10
    invoke-virtual/range {p9 .. p9}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object v0

    array-length v1, v0

    sub-int/2addr v1, v10

    invoke-static {v7, v0, v15, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v0

    move v8, v0

    goto :goto_1

    :cond_9
    move v8, v15

    :goto_1
    if-ltz v7, :cond_a

    .line 11
    invoke-virtual/range {p9 .. p9}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object v0

    invoke-static {v0, v8, v7}, Lorg/eclipse/jdt/internal/compiler/util/Util;->searchColumnNumber([III)I

    move-result v0

    move/from16 v16, v0

    goto :goto_2

    :cond_a
    move/from16 v16, v15

    .line 12
    :goto_2
    invoke-virtual/range {p9 .. p9}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getFileName()[C

    move-result-object v1

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v17, v8

    move/from16 v8, p7

    move v15, v9

    move/from16 v9, v17

    move v11, v10

    move/from16 v10, v16

    .line 13
    invoke-virtual/range {v0 .. v10}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->createProblem([CI[Ljava/lang/String;I[Ljava/lang/String;IIIII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_11

    if-eq v1, v11, :cond_c

    move-object/from16 v1, p0

    goto :goto_4

    :cond_c
    move-object/from16 v1, p0

    .line 14
    invoke-virtual {v1, v0, v14, v13, v15}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->record(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Z)V

    and-int/lit16 v2, v12, 0x80

    if-eqz v2, :cond_12

    .line 15
    invoke-interface/range {p8 .. p8}, Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;->hasErrors()Z

    move-result v2

    if-nez v2, :cond_d

    if-nez v15, :cond_d

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->suppressOptionalErrors:Z

    if-eqz v2, :cond_d

    .line 16
    invoke-interface/range {p8 .. p8}, Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;->getCompilationUnitDeclaration()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 17
    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isSuppressed(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)Z

    move-result v2

    if-eqz v2, :cond_d

    return-void

    .line 18
    :cond_d
    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->suppressTagging:Z

    if-eqz v2, :cond_e

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->treatOptionalErrorAsFatal:Z

    if-eqz v2, :cond_f

    .line 19
    :cond_e
    invoke-interface/range {p8 .. p8}, Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;->tagAsHavingErrors()V

    .line 20
    :cond_f
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->policy:Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;->stopOnFirstError()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x2

    goto :goto_3

    :cond_10
    and-int/lit8 v2, v12, 0x1e

    :goto_3
    if-eqz v2, :cond_12

    .line 21
    invoke-interface {v13, v2, v0}, Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;->abort(ILorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    goto :goto_4

    :cond_11
    const/4 v2, 0x0

    move-object/from16 v1, p0

    .line 22
    invoke-virtual {v1, v0, v14, v13, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->record(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Z)V

    :cond_12
    :goto_4
    return-void
.end method

.method public handle(I[Ljava/lang/String;[Ljava/lang/String;IILorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 10

    const/4 v3, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->computeSeverity(I)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 24
    invoke-virtual/range {v0 .. v9}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->handle(I[Ljava/lang/String;I[Ljava/lang/String;IIILorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    return-void
.end method

.method public record(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Z)V
    .locals 0

    invoke-virtual {p2, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->record(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Z)V

    return-void
.end method

.method public resumeTempErrorHandlingPolicy(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->policy:Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    return-void
.end method

.method public suspendTempErrorHandlingPolicy()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->policy:Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->rootPolicy:Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->policy:Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    :cond_0
    return-object v0
.end method

.method public switchErrorHandlingPolicy(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;)Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->rootPolicy:Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->policy:Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->rootPolicy:Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->policy:Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->policy:Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    return-object v0
.end method
