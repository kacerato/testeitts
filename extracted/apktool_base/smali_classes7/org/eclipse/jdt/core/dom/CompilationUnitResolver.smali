.class Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;
.super Lorg/eclipse/jdt/internal/compiler/Compiler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$IntArrayList;
    }
.end annotation


# static fields
.field public static final BINDING_RECOVERY:I = 0x10

.field public static final IGNORE_METHOD_BODIES:I = 0x8

.field public static final INCLUDE_RUNNING_VM_BOOTCLASSPATH:I = 0x20

.field public static final PARTIAL:I = 0x2

.field public static final RESOLVE_BINDING:I = 0x1

.field public static final STATEMENT_RECOVERY:I = 0x4


# instance fields
.field abortProblem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

.field bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

.field fromJavaProject:Z

.field hasCompilationAborted:Z

.field private monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

.field requestedKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

.field requestedSources:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Lorg/eclipse/core/runtime/IProgressMonitor;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/eclipse/jdt/internal/compiler/Compiler;-><init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->hasCompilationAborted:Z

    iput-object p6, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    iput-boolean p7, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->fromJavaProject:Z

    return-void
.end method

.method public static convert(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;[CILjava/util/Map;ZLorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;ILorg/eclipse/core/runtime/IProgressMonitor;Z)Lorg/eclipse/jdt/core/dom/CompilationUnit;
    .locals 12

    move-object v0, p0

    move-object v1, p3

    move/from16 v2, p4

    move/from16 v3, p7

    invoke-static {p2}, Lorg/eclipse/jdt/core/dom/AST;->newAST(I)Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v4

    const-string v5, "org.eclipse.jdt.core.compiler.source"

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    const-wide/32 v5, 0x2f0000

    :cond_0
    iget-object v9, v4, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-wide v5, v9, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    const-string v9, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {p3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v7, v9, v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    move-wide v5, v9

    :goto_0
    iget-object v7, v4, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-wide v5, v7, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/core/dom/AST;->setDefaultNodeFlag(I)V

    new-instance v5, Lorg/eclipse/jdt/core/dom/ASTConverter;

    move-object/from16 v6, p8

    invoke-direct {v5, p3, v2, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;-><init>(Ljava/util/Map;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    const/4 v1, 0x0

    if-eqz v2, :cond_3

    new-instance v2, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    move v10, v6

    goto :goto_1

    :cond_2
    move v10, v1

    :goto_1
    move-object v6, v2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v11, p9

    invoke-direct/range {v6 .. v11}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;ZZ)V

    const/high16 v6, -0x80000000

    or-int/2addr v3, v6

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/core/dom/AST;->setFlag(I)V

    goto :goto_2

    :cond_3
    new-instance v2, Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-direct {v2}, Lorg/eclipse/jdt/core/dom/BindingResolver;-><init>()V

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/core/dom/AST;->setFlag(I)V

    :goto_2
    invoke-virtual {v4, v2}, Lorg/eclipse/jdt/core/dom/AST;->setBindingResolver(Lorg/eclipse/jdt/core/dom/BindingResolver;)V

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setAST(Lorg/eclipse/jdt/core/dom/AST;)V

    move-object v2, p1

    invoke-virtual {v5, p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;[C)Lorg/eclipse/jdt/core/dom/CompilationUnit;

    move-result-object v2

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setLineEndTable([I)V

    invoke-virtual {v4, v1}, Lorg/eclipse/jdt/core/dom/AST;->setDefaultNodeFlag(I)V

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/AST;->modificationCount()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lorg/eclipse/jdt/core/dom/AST;->setOriginalModificationCount(J)V

    return-object v2
.end method

.method public static getCompilerOptions(Ljava/util/Map;Z)Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    iput-boolean p1, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->performMethodsFullRecovery:Z

    iput-boolean p1, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->performStatementsRecovery:Z

    const/4 p0, 0x0

    iput-boolean p0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->parseLiteralExpressionsAsConstants:Z

    const/4 p0, 0x1

    iput-boolean p0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->storeAnnotations:Z

    iput-boolean p0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->ignoreSourceFolderWarningOption:Z

    return-object v0
.end method

.method public static getHandlingPolicy()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$1;

    invoke-direct {v0}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$1;-><init>()V

    return-object v0
.end method

.method public static getRequestor()Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$2;

    invoke-direct {v0}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$2;-><init>()V

    return-object v0
.end method

.method public static parse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/core/dom/NodeSearcher;Ljava/util/Map;I)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 5

    if-eqz p0, :cond_b

    .line 51
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v0, p2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    and-int/lit8 p2, p3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    .line 52
    :goto_0
    iput-boolean p2, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->performMethodsFullRecovery:Z

    .line 53
    iput-boolean p2, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->performStatementsRecovery:Z

    and-int/lit8 p2, p3, 0x8

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v2

    .line 54
    :goto_1
    iput-boolean p2, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->ignoreMethodBodies:Z

    .line 55
    new-instance p2, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;

    .line 56
    new-instance p3, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    .line 57
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->proceedWithAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v3

    .line 58
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>()V

    .line 59
    invoke-direct {p3, v3, v0, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    .line 60
    invoke-direct {p2, p3, v2}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    .line 61
    new-instance p3, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    invoke-direct {p3, p0, v2, v2, v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    .line 62
    invoke-virtual {p2, p0, p3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p0

    .line 63
    iget-boolean p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->ignoreMethodBodies:Z

    if-eqz p3, :cond_2

    .line 64
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->ignoreFurtherInvestigation:Z

    return-object p0

    :cond_2
    if-eqz p1, :cond_8

    .line 65
    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getSource()[C

    move-result-object p3

    .line 66
    iget v0, p1, Lorg/eclipse/jdt/core/dom/NodeSearcher;->position:I

    if-ltz v0, :cond_7

    .line 67
    array-length p3, p3

    if-le v0, p3, :cond_3

    goto :goto_2

    .line 68
    :cond_3
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    .line 69
    iget-object p3, p1, Lorg/eclipse/jdt/core/dom/NodeSearcher;->found:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-nez p3, :cond_4

    return-object p0

    .line 70
    :cond_4
    iget-object p1, p1, Lorg/eclipse/jdt/core/dom/NodeSearcher;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 71
    instance-of v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v0, :cond_5

    .line 72
    check-cast p3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {p3, p2, p0}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->parseStatements(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_a

    .line 73
    instance-of v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    if-eqz v0, :cond_6

    .line 74
    check-cast p3, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    invoke-virtual {p3, p2, p1, p0}, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->parseStatements(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    goto :goto_4

    .line 75
    :cond_6
    instance-of p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz p1, :cond_a

    .line 76
    check-cast p3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {p3, p2, p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->parseMethods(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    goto :goto_4

    :cond_7
    :goto_2
    return-object p0

    .line 77
    :cond_8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz p1, :cond_a

    .line 78
    array-length p3, p1

    :goto_3
    if-lt v2, p3, :cond_9

    goto :goto_4

    .line 79
    :cond_9
    aget-object v0, p1, v2

    invoke-virtual {v0, p2, p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->parseMethods(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    return-object p0

    .line 80
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static parse([Ljava/lang/String;[Ljava/lang/String;Lorg/eclipse/jdt/core/dom/FileASTRequestor;ILjava/util/Map;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 20

    move-object/from16 v0, p0

    .line 27
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-object/from16 v12, p4

    invoke-direct {v1, v12}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    and-int/lit8 v2, p5, 0x8

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v2, :cond_0

    move v2, v13

    goto :goto_0

    :cond_0
    move v2, v14

    .line 28
    :goto_0
    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->ignoreMethodBodies:Z

    .line 29
    new-instance v15, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;

    .line 30
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    .line 31
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->proceedWithAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v3

    .line 32
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>()V

    .line 33
    invoke-direct {v2, v3, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    .line 34
    invoke-direct {v15, v2, v14}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    .line 35
    array-length v11, v0

    move-object/from16 v2, p6

    .line 36
    invoke-static {v2, v11}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v10

    move v9, v14

    :goto_1
    if-lt v9, v11, :cond_1

    return-void

    .line 37
    :cond_1
    invoke-virtual {v10, v13}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v16

    const/4 v8, 0x0

    if-eqz p1, :cond_2

    .line 38
    aget-object v2, p1, v9

    goto :goto_2

    :cond_2
    move-object v2, v8

    .line 39
    :goto_2
    :try_start_0
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v9

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getFileCharContent(Ljava/io/File;Ljava/lang/String;)[C

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_3

    :catch_0
    :goto_3
    move-object/from16 v4, p2

    move/from16 v17, v9

    move-object/from16 v19, v10

    move/from16 v16, v11

    goto :goto_6

    .line 40
    :cond_3
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;

    aget-object v5, v0, v9

    invoke-direct {v4, v3, v5, v2}, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;-><init>([CLjava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    invoke-direct {v2, v4, v14, v14, v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    .line 42
    invoke-virtual {v15, v4, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v2

    .line 43
    iget-boolean v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->ignoreMethodBodies:Z

    if-eqz v3, :cond_4

    .line 44
    iput-boolean v13, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->ignoreFurtherInvestigation:Z

    goto :goto_3

    .line 45
    :cond_4
    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v3, :cond_6

    .line 46
    array-length v4, v3

    move v5, v14

    :goto_4
    if-lt v5, v4, :cond_5

    goto :goto_5

    .line 47
    :cond_5
    aget-object v6, v3, v5

    invoke-virtual {v6, v15, v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->parseMethods(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 48
    :cond_6
    :goto_5
    iget-object v3, v15, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getSource()[C

    move-result-object v3

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object v13, v8

    move-object/from16 v8, v17

    move/from16 v17, v9

    move/from16 v9, p5

    move-object/from16 v19, v10

    move-object/from16 v10, v16

    move/from16 v16, v11

    move/from16 v11, v18

    invoke-static/range {v2 .. v11}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->convert(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;[CILjava/util/Map;ZLorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;ILorg/eclipse/core/runtime/IProgressMonitor;Z)Lorg/eclipse/jdt/core/dom/CompilationUnit;

    move-result-object v2

    .line 49
    invoke-virtual {v2, v13}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setTypeRoot(Lorg/eclipse/jdt/core/ITypeRoot;)V

    .line 50
    aget-object v3, v0, v17

    move-object/from16 v4, p2

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/core/dom/FileASTRequestor;->acceptAST(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/CompilationUnit;)V

    :goto_6
    add-int/lit8 v9, v17, 0x1

    move/from16 v11, v16

    move-object/from16 v10, v19

    const/4 v13, 0x1

    goto/16 :goto_1
.end method

.method public static parse([Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/dom/ASTRequestor;ILjava/util/Map;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-object/from16 v12, p3

    invoke-direct {v1, v12}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    and-int/lit8 v2, p4, 0x8

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v2, :cond_0

    move v2, v13

    goto :goto_0

    :cond_0
    move v2, v14

    .line 2
    :goto_0
    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->ignoreMethodBodies:Z

    .line 3
    new-instance v15, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;

    .line 4
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    .line 5
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->proceedWithAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v3

    .line 6
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>()V

    .line 7
    invoke-direct {v2, v3, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    .line 8
    invoke-direct {v15, v2, v14}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    .line 9
    array-length v11, v0

    .line 10
    invoke-static/range {p5 .. p5}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v10

    move v9, v14

    :goto_1
    if-lt v9, v11, :cond_1

    return-void

    :cond_1
    sub-int v2, v11, v9

    .line 11
    invoke-virtual {v10, v2}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    .line 12
    aget-object v2, v0, v9

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    .line 13
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    .line 14
    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    .line 15
    invoke-direct {v3, v2, v14, v14, v4}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    .line 16
    invoke-virtual {v15, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v2

    .line 17
    iget-boolean v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->ignoreMethodBodies:Z

    if-eqz v3, :cond_2

    .line 18
    iput-boolean v13, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->ignoreFurtherInvestigation:Z

    move-object/from16 v4, p1

    move/from16 v18, v9

    move-object/from16 v19, v10

    move/from16 v16, v11

    goto :goto_4

    .line 19
    :cond_2
    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v3, :cond_4

    .line 20
    array-length v4, v3

    move v5, v14

    :goto_2
    if-lt v5, v4, :cond_3

    goto :goto_3

    .line 21
    :cond_3
    aget-object v6, v3, v5

    invoke-virtual {v6, v15, v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->parseMethods(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 22
    :cond_4
    :goto_3
    iget-object v3, v15, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getSource()[C

    move-result-object v3

    .line 23
    invoke-virtual {v10, v13}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v16

    const/16 v17, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v18, v9

    move/from16 v9, p4

    move-object/from16 v19, v10

    move-object/from16 v10, v16

    move/from16 v16, v11

    move/from16 v11, v17

    .line 24
    invoke-static/range {v2 .. v11}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->convert(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;[CILjava/util/Map;ZLorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;ILorg/eclipse/core/runtime/IProgressMonitor;Z)Lorg/eclipse/jdt/core/dom/CompilationUnit;

    move-result-object v2

    .line 25
    aget-object v3, v0, v18

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setTypeRoot(Lorg/eclipse/jdt/core/ITypeRoot;)V

    .line 26
    aget-object v3, v0, v18

    move-object/from16 v4, p1

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/core/dom/ASTRequestor;->acceptAST(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/dom/CompilationUnit;)V

    :goto_4
    add-int/lit8 v9, v18, 0x1

    move/from16 v11, v16

    move-object/from16 v10, v19

    goto :goto_1
.end method

.method private removeUnresolvedBindings(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V
    .locals 8

    .line 4
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    array-length v2, v0

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->removeUnresolvedBindings(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    if-eqz v0, :cond_2

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 8
    iput-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 9
    :cond_2
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v0, :cond_5

    .line 10
    array-length v4, v0

    move v5, v1

    :goto_2
    if-lt v5, v4, :cond_3

    goto :goto_3

    .line 11
    :cond_3
    aget-object v6, v0, v5

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v7, :cond_4

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_4

    .line 12
    iput-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 13
    :cond_5
    :goto_3
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz p1, :cond_8

    .line 14
    array-length v0, p1

    :goto_4
    if-lt v1, v0, :cond_6

    goto :goto_5

    .line 15
    :cond_6
    aget-object v4, p1, v1

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v5, :cond_7

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_7

    .line 16
    iput-object v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    return-void
.end method

.method private reportBinding(Ljava/lang/Object;Lorg/eclipse/jdt/core/dom/ASTRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 8

    .line 1
    check-cast p1, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;

    .line 2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->getCompilerBinding()Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v7, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;

    iget-object v2, p4, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->fromJavaProject:Z

    move-object v1, v7

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;ZZ)V

    .line 4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->getAnnotationBinding()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {v7, p3}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getAnnotationInstance(Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object p3

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/core/dom/IBinding;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/core/dom/ASTRequestor;->acceptBinding(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/IBinding;)V

    :cond_1
    return-void
.end method

.method private reportBinding(Ljava/lang/Object;Lorg/eclipse/jdt/core/dom/FileASTRequestor;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 8

    .line 8
    check-cast p1, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;

    .line 9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->getCompilerBinding()Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    new-instance v7, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;

    iget-object v2, p3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->fromJavaProject:Z

    const/4 v3, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;ZZ)V

    .line 11
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->getAnnotationBinding()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 12
    invoke-virtual {v7, p3}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getAnnotationInstance(Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object p3

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/core/dom/IBinding;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_1

    .line 14
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/core/dom/FileASTRequestor;->acceptBinding(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/IBinding;)V

    :cond_1
    return-void
.end method

.method private resolve(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/core/dom/NodeSearcher;ZZZ)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 239
    :try_start_0
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parseThreshold:I

    .line 240
    new-array v3, v0, [Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    aput-object p2, v3, v1

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/Compiler;->beginToCompile([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)V

    .line 241
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    move v4, v1

    :goto_0
    if-lt v4, v3, :cond_0

    goto :goto_1

    .line 242
    :cond_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aget-object v5, v5, v4

    if-eqz v5, :cond_1

    .line 243
    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    if-ne v6, p2, :cond_1

    move-object p1, v5

    :goto_1
    if-nez p1, :cond_3

    .line 244
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aget-object p1, v0, v1

    goto :goto_2

    :catch_0
    move-exception p2

    goto/16 :goto_8

    :catch_1
    move-exception p2

    goto/16 :goto_9

    :catch_2
    move-exception p2

    goto/16 :goto_a

    :cond_1
    add-int/2addr v4, v0

    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    .line 246
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings()V

    :cond_3
    :goto_2
    if-nez p3, :cond_4

    .line 247
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getMethodBodies(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    goto :goto_4

    .line 248
    :cond_4
    iget v0, p3, Lorg/eclipse/jdt/core/dom/NodeSearcher;->position:I

    .line 249
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getContents()[C

    move-result-object p2

    .line 250
    array-length v3, p2

    if-ltz v0, :cond_8

    if-gt v0, v3, :cond_8

    .line 251
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {p1, p3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    .line 252
    iget-object v0, p3, Lorg/eclipse/jdt/core/dom/NodeSearcher;->found:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_8

    .line 253
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    .line 254
    iget v5, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    .line 255
    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v3, p2, v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([CLorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    .line 256
    iget-object p2, p3, Lorg/eclipse/jdt/core/dom/NodeSearcher;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 257
    instance-of p3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz p3, :cond_5

    .line 258
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->parseStatements(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_7

    .line 259
    instance-of p3, v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    if-eqz p3, :cond_6

    .line 260
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v0, p3, p2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->parseStatements(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    goto :goto_3

    .line 261
    :cond_6
    instance-of p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz p2, :cond_7

    .line 262
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->parseMethods(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    .line 263
    :cond_7
    :goto_3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-object v4, p2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    .line 264
    iput v5, p2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    .line 265
    :cond_8
    :goto_4
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz p2, :cond_c

    .line 266
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    .line 267
    iput-object p1, p3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :try_start_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->faultInTypes()V

    .line 269
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz p2, :cond_9

    if-eqz p4, :cond_9

    .line 270
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->methodVerifier()Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->verifyMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;)V

    goto :goto_5

    :catchall_0
    move-exception p2

    goto :goto_6

    .line 271
    :cond_9
    :goto_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->resolve()V

    if-eqz p5, :cond_a

    .line 272
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->analyseCode()V

    :cond_a
    if-eqz p6, :cond_b

    .line 273
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->generateCode()V

    .line 274
    :cond_b
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->finalizeProblems()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    :try_start_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    goto :goto_7

    :goto_6
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    .line 276
    throw p2

    .line 277
    :cond_c
    :goto_7
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-eqz p2, :cond_d

    aput-object v2, p2, v1

    .line 278
    :cond_d
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->requestor:Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;

    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->tagAsAccepted()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;->acceptResult(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    .line 279
    :goto_8
    invoke-virtual {p0, p2, p1, v2}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->handleInternalException(Ljava/lang/Throwable;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    .line 280
    throw p2

    .line 281
    :goto_9
    invoke-virtual {p0, p2, p1, v2}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->handleInternalException(Ljava/lang/Throwable;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    .line 282
    throw p2

    .line 283
    :goto_a
    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->handleInternalException(Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    if-nez p1, :cond_e

    .line 284
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aget-object p1, p1, v1

    :cond_e
    return-object p1
.end method

.method public static resolve(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/core/IJavaProject;Ljava/util/List;Lorg/eclipse/jdt/core/dom/NodeSearcher;Ljava/util/Map;Lorg/eclipse/jdt/core/WorkingCopyOwner;ILorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v0, p4

    move/from16 v1, p6

    move-object/from16 v8, p7

    .line 41
    const-string v10, "ms"

    const/4 v11, 0x0

    if-nez p1, :cond_0

    .line 42
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    move-object/from16 v3, p2

    .line 43
    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 44
    new-instance v3, Lorg/eclipse/jdt/core/dom/NameEnvironmentWithProgress;

    invoke-direct {v3, v2, v11, v8}, Lorg/eclipse/jdt/core/dom/NameEnvironmentWithProgress;-><init>([Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;[Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :goto_0
    move-object v12, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v12, v11

    move-object v13, v12

    goto/16 :goto_6

    .line 45
    :cond_0
    new-instance v3, Lorg/eclipse/jdt/internal/core/CancelableNameEnvironment;

    move-object/from16 v2, p1

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaProject;

    move-object/from16 v4, p5

    invoke-direct {v3, v2, v4, v8}, Lorg/eclipse/jdt/internal/core/CancelableNameEnvironment;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 46
    :goto_1
    :try_start_1
    new-instance v13, Lorg/eclipse/jdt/internal/core/CancelableProblemFactory;

    invoke-direct {v13, v8}, Lorg/eclipse/jdt/internal/core/CancelableProblemFactory;-><init>(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    and-int/lit8 v2, v1, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v2, :cond_1

    move v2, v14

    goto :goto_2

    :cond_1
    move v2, v15

    .line 47
    :goto_2
    :try_start_2
    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->getCompilerOptions(Ljava/util/Map;Z)Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v5

    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_2

    move v9, v14

    goto :goto_3

    :cond_2
    move v9, v15

    .line 48
    :goto_3
    iput-boolean v9, v5, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->ignoreMethodBodies:Z

    .line 49
    new-instance v7, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;

    .line 50
    invoke-static {}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->getHandlingPolicy()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v4

    .line 51
    invoke-static {}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->getRequestor()Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;

    move-result-object v6

    if-eqz p1, :cond_3

    move/from16 v16, v14

    goto :goto_4

    :cond_3
    move/from16 v16, v15

    :goto_4
    move-object v2, v7

    move-object v3, v12

    move-object/from16 p1, v7

    move-object v7, v13

    move-object/from16 v8, p7

    move/from16 v17, v9

    move/from16 v9, v16

    .line 52
    invoke-direct/range {v2 .. v9}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;-><init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Lorg/eclipse/core/runtime/IProgressMonitor;Z)V

    xor-int/lit8 v22, v17, 0x1

    const/16 v17, 0x0

    const/16 v20, 0x1

    move-object/from16 v16, p1

    move-object/from16 v18, p0

    move-object/from16 v19, p3

    move/from16 v21, v22

    .line 53
    invoke-direct/range {v16 .. v22}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->resolve(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/core/dom/NodeSearcher;ZZZ)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v2

    move-object/from16 v3, p1

    .line 54
    iget-boolean v4, v3, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->hasCompilationAborted:Z

    if-eqz v4, :cond_6

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    .line 55
    invoke-static {v4, v5, v0, v1}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->parse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/core/dom/NodeSearcher;Ljava/util/Map;I)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    if-eqz v2, :cond_4

    .line 56
    iget-object v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    if-eqz v2, :cond_5

    .line 57
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    new-array v4, v2, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iput-object v4, v3, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    .line 58
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-static {v1, v15, v4, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    .line 60
    :cond_4
    iget-object v1, v3, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->abortProblem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-eqz v1, :cond_5

    .line 61
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iput v14, v2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    .line 62
    filled-new-array {v1}, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object v1

    iput-object v1, v2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    :cond_5
    :goto_5
    invoke-interface {v12, v11}, Lorg/eclipse/jdt/internal/core/INameEnvironmentWithProgress;->setMonitor(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    .line 64
    iput-object v11, v13, Lorg/eclipse/jdt/internal/core/CancelableProblemFactory;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    return-object v0

    .line 65
    :cond_6
    :try_start_3
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z

    if-eqz v0, :cond_7

    instance-of v0, v12, Lorg/eclipse/jdt/internal/core/CancelableNameEnvironment;

    if-eqz v0, :cond_7

    .line 66
    move-object v0, v12

    check-cast v0, Lorg/eclipse/jdt/internal/core/CancelableNameEnvironment;

    .line 67
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " TIME SPENT in NameLoopkup#seekTypesInSourcePackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    iget-wide v4, v4, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInSourcePackage:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " TIME SPENT in NameLoopkup#seekTypesInBinaryPackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    iget-wide v4, v0, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInBinaryPackage:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    :cond_7
    invoke-interface {v12, v11}, Lorg/eclipse/jdt/internal/core/INameEnvironmentWithProgress;->setMonitor(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    .line 70
    iput-object v11, v13, Lorg/eclipse/jdt/internal/core/CancelableProblemFactory;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    return-object v2

    :catchall_2
    move-exception v0

    move-object v13, v11

    :goto_6
    if-eqz v12, :cond_8

    .line 71
    invoke-interface {v12, v11}, Lorg/eclipse/jdt/internal/core/INameEnvironmentWithProgress;->setMonitor(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_8
    if-eqz v13, :cond_9

    .line 72
    iput-object v11, v13, Lorg/eclipse/jdt/internal/core/CancelableProblemFactory;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    .line 73
    :cond_9
    throw v0
.end method

.method private resolve([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lorg/eclipse/jdt/core/dom/FileASTRequestor;ILjava/util/Map;I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    .line 169
    iput-object v1, v2, Lorg/eclipse/jdt/core/dom/FileASTRequestor;->compilationUnitResolver:Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;

    .line 170
    new-instance v3, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    invoke-direct {v3}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;-><init>()V

    iput-object v3, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    const/4 v3, 0x0

    .line 171
    :try_start_0
    array-length v4, v0

    .line 172
    new-array v5, v4, [Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    if-lt v7, v4, :cond_e

    if-ge v8, v4, :cond_0

    .line 173
    new-array v0, v8, [Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    .line 174
    invoke-static {v5, v6, v0, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v9, p3

    move-object v5, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_16

    :catch_0
    move-exception v0

    move-object v4, v3

    goto/16 :goto_11

    :catch_1
    move-exception v0

    move-object v4, v3

    goto/16 :goto_12

    :catch_2
    move-exception v0

    move-object v4, v3

    goto/16 :goto_13

    :catch_3
    move-exception v0

    goto/16 :goto_15

    :cond_0
    move-object/from16 v9, p3

    .line 175
    :goto_1
    invoke-virtual {v1, v5, v9}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->beginToCompile([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    move v0, v6

    .line 176
    :goto_2
    :try_start_1
    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    const/4 v7, 0x1

    if-lt v0, v5, :cond_1

    goto :goto_4

    .line 177
    :cond_1
    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->resolvedRequestedSourcesAndKeys(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 178
    :goto_3
    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    if-lt v0, v5, :cond_6

    .line 179
    :goto_4
    new-instance v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;

    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v11, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    and-int/lit8 v5, p7, 0x4

    if-eqz v5, :cond_2

    move v12, v7

    goto :goto_5

    :cond_2
    move v12, v6

    :goto_5
    const/4 v13, 0x1

    const/4 v10, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;ZZ)V

    .line 180
    iget-object v5, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->valueTable:[Ljava/lang/Object;

    .line 181
    array-length v8, v5
    :try_end_1
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    if-lt v6, v8, :cond_3

    .line 182
    :goto_7
    iput-object v3, v2, Lorg/eclipse/jdt/core/dom/FileASTRequestor;->compilationUnitResolver:Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;

    goto/16 :goto_14

    .line 183
    :cond_3
    :try_start_2
    aget-object v9, v5, v6

    check-cast v9, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;

    if-nez v9, :cond_4

    goto :goto_9

    .line 184
    :cond_4
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->getCompilerBinding()Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v9

    if-nez v9, :cond_5

    move-object v9, v3

    goto :goto_8

    .line 185
    :cond_5
    invoke-virtual {v0, v9}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/core/dom/IBinding;

    move-result-object v9

    .line 186
    :goto_8
    iget-object v10, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v10, v10, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->valueTable:[Ljava/lang/Object;

    aget-object v10, v10, v6

    check-cast v10, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10, v9}, Lorg/eclipse/jdt/core/dom/FileASTRequestor;->acceptBinding(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/IBinding;)V

    .line 187
    invoke-direct {v1, v7}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->worked(I)V

    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :catch_4
    move-exception v0

    goto/16 :goto_11

    :catch_5
    move-exception v0

    goto/16 :goto_12

    :catch_6
    move-exception v0

    goto/16 :goto_13

    .line 188
    :cond_6
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->cleanUp()V

    .line 189
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aput-object v3, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 190
    :cond_7
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aget-object v4, v5, v0
    :try_end_2
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    :try_start_3
    invoke-super {v1, v4, v0}, Lorg/eclipse/jdt/internal/compiler/Compiler;->process(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;I)V

    .line 192
    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getFileName()[C

    move-result-object v5

    .line 193
    iget-object v8, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedSources:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    if-eqz v8, :cond_9

    .line 194
    iget-object v9, v4, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    .line 195
    iget-object v10, v9, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    .line 196
    invoke-interface {v10}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getContents()[C

    move-result-object v10

    .line 197
    invoke-static/range {p5 .. p5}, Lorg/eclipse/jdt/core/dom/AST;->newAST(I)Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v11

    const/high16 v12, -0x80000000

    or-int v12, p7, v12

    .line 198
    invoke-virtual {v11, v12}, Lorg/eclipse/jdt/core/dom/AST;->setFlag(I)V

    const/4 v12, 0x2

    .line 199
    invoke-virtual {v11, v12}, Lorg/eclipse/jdt/core/dom/AST;->setDefaultNodeFlag(I)V

    .line 200
    new-instance v12, Lorg/eclipse/jdt/core/dom/ASTConverter;

    iget-object v13, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    move-object/from16 v14, p6

    invoke-direct {v12, v14, v7, v13}, Lorg/eclipse/jdt/core/dom/ASTConverter;-><init>(Ljava/util/Map;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    .line 201
    new-instance v13, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;

    iget-object v15, v4, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v7, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    and-int/lit8 v16, p7, 0x4

    if-eqz v16, :cond_8

    const/16 v19, 0x1

    goto :goto_a

    :cond_8
    move/from16 v19, v6

    :goto_a
    iget-boolean v6, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->fromJavaProject:Z

    const/16 v17, 0x0

    move-object/from16 v16, v15

    move-object v15, v13

    move-object/from16 v18, v7

    move/from16 v20, v6

    invoke-direct/range {v15 .. v20}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;ZZ)V

    .line 202
    invoke-virtual {v11, v13}, Lorg/eclipse/jdt/core/dom/AST;->setBindingResolver(Lorg/eclipse/jdt/core/dom/BindingResolver;)V

    .line 203
    invoke-virtual {v12, v11}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setAST(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 204
    invoke-virtual {v12, v4, v10}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;[C)Lorg/eclipse/jdt/core/dom/CompilationUnit;

    move-result-object v6

    .line 205
    invoke-virtual {v6, v3}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setTypeRoot(Lorg/eclipse/jdt/core/ITypeRoot;)V

    .line 206
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setLineEndTable([I)V

    const/4 v10, 0x0

    .line 207
    invoke-virtual {v11, v10}, Lorg/eclipse/jdt/core/dom/AST;->setDefaultNodeFlag(I)V

    .line 208
    invoke-virtual {v11}, Lorg/eclipse/jdt/core/dom/AST;->modificationCount()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lorg/eclipse/jdt/core/dom/AST;->setOriginalModificationCount(J)V

    .line 209
    new-instance v7, Ljava/lang/String;

    invoke-interface {v8}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v7, v6}, Lorg/eclipse/jdt/core/dom/FileASTRequestor;->acceptAST(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/CompilationUnit;)V

    const/4 v6, 0x1

    .line 210
    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->worked(I)V

    .line 211
    iget-object v6, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedSources:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v6, v5, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :catchall_1
    move-exception v0

    goto :goto_e

    :cond_9
    move-object/from16 v14, p6

    move v10, v6

    .line 212
    :goto_b
    iget-object v6, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 213
    instance-of v7, v6, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;

    if-eqz v7, :cond_a

    .line 214
    invoke-direct {v1, v6, v2, v4}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->reportBinding(Ljava/lang/Object;Lorg/eclipse/jdt/core/dom/FileASTRequestor;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    const/4 v6, 0x1

    .line 215
    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->worked(I)V

    goto :goto_d

    .line 216
    :cond_a
    instance-of v7, v6, Ljava/util/ArrayList;

    if-eqz v7, :cond_c

    .line 217
    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 218
    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_d

    .line 219
    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v1, v7, v2, v4}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->reportBinding(Ljava/lang/Object;Lorg/eclipse/jdt/core/dom/FileASTRequestor;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    const/4 v7, 0x1

    .line 220
    invoke-direct {v1, v7}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->worked(I)V

    goto :goto_c

    .line 221
    :cond_c
    :goto_d
    iget-object v6, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v6, v5, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 222
    :cond_d
    :try_start_4
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->cleanUp()V

    .line 223
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aput-object v3, v5, v0

    .line 224
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->requestor:Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;

    iget-object v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->tagAsAccepted()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;->acceptResult(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    add-int/lit8 v0, v0, 0x1

    move v6, v10

    goto/16 :goto_2

    .line 225
    :goto_e
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->cleanUp()V

    .line 226
    throw v0
    :try_end_4
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_e
    move-object/from16 v9, p3

    move-object/from16 v14, p6

    move v10, v6

    if-eqz p2, :cond_f

    .line 227
    :try_start_5
    aget-object v6, p2, v7

    goto :goto_f

    :cond_f
    move-object v6, v3

    .line 228
    :goto_f
    aget-object v11, v0, v7
    :try_end_5
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 229
    :try_start_6
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v6}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getFileCharContent(Ljava/io/File;Ljava/lang/String;)[C

    move-result-object v12
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v12, :cond_10

    goto :goto_10

    :cond_10
    add-int/lit8 v13, v8, 0x1

    .line 230
    :try_start_7
    new-instance v15, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;

    invoke-direct {v15, v12, v11, v6}, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;-><init>([CLjava/lang/String;Ljava/lang/String;)V

    aput-object v15, v5, v8
    :try_end_7
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v8, v13

    :catch_7
    :goto_10
    add-int/lit8 v7, v7, 0x1

    move v6, v10

    goto/16 :goto_0

    .line 231
    :goto_11
    :try_start_8
    invoke-virtual {v1, v0, v4, v3}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->handleInternalException(Ljava/lang/Throwable;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    .line 232
    throw v0

    .line 233
    :goto_12
    invoke-virtual {v1, v0, v4, v3}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->handleInternalException(Ljava/lang/Throwable;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    .line 234
    throw v0

    .line 235
    :goto_13
    invoke-virtual {v1, v0, v4}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->handleInternalException(Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    goto/16 :goto_7

    :goto_14
    return-void

    .line 236
    :goto_15
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 237
    :goto_16
    iput-object v3, v2, Lorg/eclipse/jdt/core/dom/FileASTRequestor;->compilationUnitResolver:Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;

    .line 238
    throw v0
.end method

.method public static resolve([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lorg/eclipse/jdt/core/dom/FileASTRequestor;ILjava/util/Map;Ljava/util/List;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 18

    const/4 v9, 0x0

    move-object/from16 v0, p0

    .line 22
    :try_start_0
    array-length v1, v0

    move-object/from16 v4, p2

    array-length v2, v4

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    move-object/from16 v2, p8

    .line 23
    invoke-static {v2, v1}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    .line 24
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    move-object/from16 v3, p6

    .line 25
    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 26
    new-instance v8, Lorg/eclipse/jdt/core/dom/NameEnvironmentWithProgress;

    invoke-direct {v8, v2, v9, v1}, Lorg/eclipse/jdt/core/dom/NameEnvironmentWithProgress;-><init>([Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;[Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 27
    :try_start_1
    new-instance v7, Lorg/eclipse/jdt/internal/core/CancelableProblemFactory;

    invoke-direct {v7, v1}, Lorg/eclipse/jdt/internal/core/CancelableProblemFactory;-><init>(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    and-int/lit8 v2, p7, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object/from16 v6, p5

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v3

    .line 28
    :goto_0
    :try_start_2
    invoke-static {v6, v2}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->getCompilerOptions(Ljava/util/Map;Z)Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v13

    and-int/lit8 v2, p7, 0x8

    if-eqz v2, :cond_1

    move v3, v5

    .line 29
    :cond_1
    iput-boolean v3, v13, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->ignoreMethodBodies:Z

    .line 30
    new-instance v2, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;

    .line 31
    invoke-static {}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->getHandlingPolicy()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v12

    .line 32
    invoke-static {}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->getRequestor()Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;

    move-result-object v14

    const/16 v17, 0x0

    move-object v10, v2

    move-object v11, v8

    move-object v15, v7

    move-object/from16 v16, v1

    .line 33
    invoke-direct/range {v10 .. v17}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;-><init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Lorg/eclipse/core/runtime/IProgressMonitor;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object v10, v7

    move-object/from16 v7, p5

    move-object v11, v8

    move/from16 v8, p7

    .line 34
    :try_start_3
    invoke-direct/range {v1 .. v8}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->resolve([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lorg/eclipse/jdt/core/dom/FileASTRequestor;ILjava/util/Map;I)V

    .line 35
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    invoke-interface {v11, v9}, Lorg/eclipse/jdt/internal/core/INameEnvironmentWithProgress;->setMonitor(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    .line 37
    iput-object v9, v10, Lorg/eclipse/jdt/internal/core/CancelableProblemFactory;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    return-void

    :catchall_0
    move-exception v0

    move-object v7, v10

    move-object v8, v11

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v10, v7

    move-object v11, v8

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v11, v8

    move-object v7, v9

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v7, v9

    move-object v8, v7

    :goto_1
    if-eqz v8, :cond_2

    .line 38
    invoke-interface {v8, v9}, Lorg/eclipse/jdt/internal/core/INameEnvironmentWithProgress;->setMonitor(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_2
    if-eqz v7, :cond_3

    .line 39
    iput-object v9, v7, Lorg/eclipse/jdt/internal/core/CancelableProblemFactory;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    .line 40
    :cond_3
    throw v0
.end method

.method public static resolve([Lorg/eclipse/jdt/core/ICompilationUnit;[Ljava/lang/String;Lorg/eclipse/jdt/core/dom/ASTRequestor;ILjava/util/Map;Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 21

    .line 1
    const-string v0, "ms"

    const/4 v9, 0x0

    move-object/from16 v10, p0

    .line 2
    :try_start_0
    array-length v1, v10

    move-object/from16 v3, p1

    array-length v2, v3
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    move-object/from16 v11, p8

    .line 3
    :try_start_1
    invoke-static {v11, v1}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    .line 4
    new-instance v8, Lorg/eclipse/jdt/internal/core/CancelableNameEnvironment;

    move-object/from16 v2, p5

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaProject;

    move-object/from16 v7, p6

    invoke-direct {v8, v2, v7, v1}, Lorg/eclipse/jdt/internal/core/CancelableNameEnvironment;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 5
    :try_start_2
    new-instance v6, Lorg/eclipse/jdt/internal/core/CancelableProblemFactory;

    invoke-direct {v6, v1}, Lorg/eclipse/jdt/internal/core/CancelableProblemFactory;-><init>(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    and-int/lit8 v2, p7, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    move-object/from16 v2, p4

    move v12, v5

    goto :goto_0

    :cond_0
    move-object/from16 v2, p4

    move v12, v4

    .line 6
    :goto_0
    :try_start_3
    invoke-static {v2, v12}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->getCompilerOptions(Ljava/util/Map;Z)Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v15

    and-int/lit8 v12, p7, 0x8

    if-eqz v12, :cond_1

    move v12, v5

    goto :goto_1

    :cond_1
    move v12, v4

    .line 7
    :goto_1
    iput-boolean v12, v15, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->ignoreMethodBodies:Z

    .line 8
    new-instance v20, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;

    .line 9
    invoke-static {}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->getHandlingPolicy()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v14

    .line 10
    invoke-static {}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->getRequestor()Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;

    move-result-object v16

    if-eqz p5, :cond_2

    move/from16 v19, v5

    goto :goto_2

    :cond_2
    move/from16 v19, v4

    :goto_2
    move-object/from16 v12, v20

    move-object v13, v8

    move-object/from16 v17, v6

    move-object/from16 v18, v1

    .line 11
    invoke-direct/range {v12 .. v19}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;-><init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Lorg/eclipse/core/runtime/IProgressMonitor;Z)V
    :try_end_3
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object v12, v6

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    move-object v13, v8

    move/from16 v8, p7

    .line 12
    :try_start_4
    invoke-direct/range {v1 .. v8}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->resolve([Lorg/eclipse/jdt/core/ICompilationUnit;[Ljava/lang/String;Lorg/eclipse/jdt/core/dom/ASTRequestor;ILjava/util/Map;Lorg/eclipse/jdt/core/WorkingCopyOwner;I)V

    .line 13
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z

    if-eqz v1, :cond_3

    .line 14
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " TIME SPENT in NameLoopkup#seekTypesInSourcePackage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    iget-wide v3, v3, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInSourcePackage:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " TIME SPENT in NameLoopkup#seekTypesInBinaryPackage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    iget-wide v3, v3, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInBinaryPackage:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v6, v12

    move-object v8, v13

    goto :goto_8

    .line 16
    :cond_3
    :goto_3
    invoke-virtual {v13, v9}, Lorg/eclipse/jdt/internal/core/CancelableNameEnvironment;->setMonitor(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    .line 17
    :goto_4
    iput-object v9, v12, Lorg/eclipse/jdt/internal/core/CancelableProblemFactory;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v12, v6

    move-object v13, v8

    goto :goto_8

    :catch_0
    move-object v12, v6

    move-object v13, v8

    :catch_1
    :goto_5
    move-object v8, v13

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v13, v8

    move-object v6, v9

    goto :goto_8

    :catch_2
    move-object v13, v8

    move-object v12, v9

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v6, v9

    move-object v8, v6

    goto :goto_8

    :catch_3
    move-object/from16 v11, p8

    :catch_4
    move-object v8, v9

    move-object v12, v8

    :goto_6
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p7

    move-object/from16 v6, p8

    .line 18
    :try_start_5
    invoke-static/range {v1 .. v6}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->parse([Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/dom/ASTRequestor;ILjava/util/Map;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v8, :cond_4

    .line 19
    invoke-virtual {v8, v9}, Lorg/eclipse/jdt/internal/core/CancelableNameEnvironment;->setMonitor(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_4
    if-eqz v12, :cond_5

    goto :goto_4

    :cond_5
    :goto_7
    return-void

    :catchall_4
    move-exception v0

    move-object v6, v12

    :goto_8
    if-eqz v8, :cond_6

    invoke-virtual {v8, v9}, Lorg/eclipse/jdt/internal/core/CancelableNameEnvironment;->setMonitor(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_6
    if-eqz v6, :cond_7

    .line 20
    iput-object v9, v6, Lorg/eclipse/jdt/internal/core/CancelableProblemFactory;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    .line 21
    :cond_7
    throw v0
.end method

.method private resolve([Lorg/eclipse/jdt/core/ICompilationUnit;[Ljava/lang/String;Lorg/eclipse/jdt/core/dom/ASTRequestor;ILjava/util/Map;Lorg/eclipse/jdt/core/WorkingCopyOwner;I)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v9, p6

    .line 103
    iput-object v1, v2, Lorg/eclipse/jdt/core/dom/ASTRequestor;->compilationUnitResolver:Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;

    .line 104
    new-instance v3, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    invoke-direct {v3}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;-><init>()V

    iput-object v3, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    const/4 v10, 0x0

    .line 105
    :try_start_0
    array-length v3, v0
    :try_end_0
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 106
    :try_start_1
    new-array v4, v3, [Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    const/4 v11, 0x0

    .line 107
    invoke-static {v0, v11, v4, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p2

    .line 108
    invoke-virtual {v1, v4, v0}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->beginToCompile([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;[Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v12, v10

    move v0, v11

    .line 109
    :goto_0
    :try_start_2
    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    const/4 v13, 0x1

    if-lt v0, v3, :cond_0

    goto :goto_2

    .line 110
    :cond_0
    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->resolvedRequestedSourcesAndKeys(I)Z

    move-result v3
    :try_end_2
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_6

    .line 111
    :goto_1
    :try_start_3
    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    if-lt v0, v3, :cond_5

    .line 112
    :goto_2
    new-instance v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v6, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    and-int/lit8 v3, p7, 0x4

    if-eqz v3, :cond_1

    move v7, v13

    goto :goto_3

    :cond_1
    move v7, v11

    :goto_3
    const/4 v8, 0x1

    move-object v3, v0

    move-object/from16 v5, p6

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;ZZ)V

    .line 113
    iget-object v3, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->valueTable:[Ljava/lang/Object;

    .line 114
    array-length v4, v3
    :try_end_3
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    if-lt v11, v4, :cond_2

    .line 115
    iput-object v10, v2, Lorg/eclipse/jdt/core/dom/ASTRequestor;->compilationUnitResolver:Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;

    goto/16 :goto_f

    .line 116
    :cond_2
    :try_start_4
    aget-object v5, v3, v11

    check-cast v5, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;

    if-nez v5, :cond_3

    goto :goto_6

    .line 117
    :cond_3
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->getCompilerBinding()Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v5

    if-nez v5, :cond_4

    move-object v5, v10

    goto :goto_5

    .line 118
    :cond_4
    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/core/dom/IBinding;

    move-result-object v5

    .line 119
    :goto_5
    iget-object v6, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->valueTable:[Ljava/lang/Object;

    aget-object v6, v6, v11

    check-cast v6, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Lorg/eclipse/jdt/core/dom/ASTRequestor;->acceptBinding(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/IBinding;)V

    .line 120
    invoke-direct {v1, v13}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->worked(I)V

    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v3, v10

    goto/16 :goto_11

    :catch_0
    move-exception v0

    move-object v3, v10

    goto/16 :goto_c

    :catch_1
    move-exception v0

    move-object v3, v10

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move-object v3, v10

    goto/16 :goto_e

    :catch_3
    move-exception v0

    move-object v3, v10

    goto/16 :goto_10

    .line 121
    :cond_5
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->cleanUp()V

    .line 122
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aput-object v10, v3, v0
    :try_end_4
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    :cond_6
    :try_start_5
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aget-object v12, v3, v0
    :try_end_5
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 124
    :try_start_6
    invoke-super {v1, v12, v0}, Lorg/eclipse/jdt/internal/compiler/Compiler;->process(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;I)V

    .line 125
    iget-object v3, v12, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getFileName()[C

    move-result-object v14

    .line 126
    iget-object v3, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedSources:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v3, v14}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lorg/eclipse/jdt/core/ICompilationUnit;

    if-eqz v15, :cond_8

    .line 127
    iget-object v8, v12, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    .line 128
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    .line 129
    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getContents()[C

    move-result-object v7

    .line 130
    invoke-static/range {p4 .. p4}, Lorg/eclipse/jdt/core/dom/AST;->newAST(I)Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v6

    const/high16 v3, -0x80000000

    or-int v3, p7, v3

    .line 131
    invoke-virtual {v6, v3}, Lorg/eclipse/jdt/core/dom/AST;->setFlag(I)V

    const/4 v3, 0x2

    .line 132
    invoke-virtual {v6, v3}, Lorg/eclipse/jdt/core/dom/AST;->setDefaultNodeFlag(I)V

    .line 133
    new-instance v5, Lorg/eclipse/jdt/core/dom/ASTConverter;

    iget-object v3, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    move-object/from16 v4, p5

    invoke-direct {v5, v4, v13, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;-><init>(Ljava/util/Map;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    .line 134
    new-instance v3, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;

    iget-object v10, v12, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v13, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    and-int/lit8 v16, p7, 0x4

    if-eqz v16, :cond_7

    const/16 v16, 0x1

    goto :goto_7

    :cond_7
    move/from16 v16, v11

    :goto_7
    iget-boolean v11, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->fromJavaProject:Z

    move-object/from16 p2, v3

    move-object/from16 v3, p2

    move-object v4, v10

    move-object v10, v5

    move-object/from16 v5, p6

    move/from16 v17, v0

    move-object v0, v6

    move-object v6, v13

    move-object v13, v7

    move/from16 v7, v16

    move-object/from16 v16, v8

    move v8, v11

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;ZZ)V

    .line 135
    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/core/dom/AST;->setBindingResolver(Lorg/eclipse/jdt/core/dom/BindingResolver;)V

    .line 136
    invoke-virtual {v10, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setAST(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 137
    invoke-virtual {v10, v12, v13}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;[C)Lorg/eclipse/jdt/core/dom/CompilationUnit;

    move-result-object v3

    .line 138
    invoke-virtual {v3, v15}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setTypeRoot(Lorg/eclipse/jdt/core/ITypeRoot;)V

    .line 139
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setLineEndTable([I)V

    const/4 v4, 0x0

    .line 140
    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/core/dom/AST;->setDefaultNodeFlag(I)V

    .line 141
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->modificationCount()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lorg/eclipse/jdt/core/dom/AST;->setOriginalModificationCount(J)V

    .line 142
    invoke-virtual {v2, v15, v3}, Lorg/eclipse/jdt/core/dom/ASTRequestor;->acceptAST(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/dom/CompilationUnit;)V

    const/4 v0, 0x1

    .line 143
    invoke-direct {v1, v0}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->worked(I)V

    .line 144
    iget-object v0, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedSources:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    const/4 v3, 0x0

    invoke-virtual {v0, v14, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_b

    :cond_8
    move/from16 v17, v0

    move v4, v11

    .line 145
    :goto_8
    iget-object v0, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 146
    instance-of v3, v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;

    if-eqz v3, :cond_9

    .line 147
    invoke-direct {v1, v0, v2, v9, v12}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->reportBinding(Ljava/lang/Object;Lorg/eclipse/jdt/core/dom/ASTRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    const/4 v0, 0x1

    .line 148
    invoke-direct {v1, v0}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->worked(I)V

    goto :goto_a

    .line 149
    :cond_9
    instance-of v3, v0, Ljava/util/ArrayList;

    if-eqz v3, :cond_b

    .line 150
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 151
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_a

    .line 152
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v3, v2, v9, v12}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->reportBinding(Ljava/lang/Object;Lorg/eclipse/jdt/core/dom/ASTRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    const/4 v3, 0x1

    .line 153
    invoke-direct {v1, v3}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->worked(I)V

    goto :goto_9

    .line 154
    :cond_b
    :goto_a
    iget-object v0, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    const/4 v3, 0x0

    invoke-virtual {v0, v14, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 155
    :cond_c
    :try_start_7
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->cleanUp()V

    .line 156
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    const/4 v3, 0x0

    aput-object v3, v0, v17

    .line 157
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->requestor:Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;

    iget-object v3, v12, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->tagAsAccepted()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;->acceptResult(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    add-int/lit8 v0, v17, 0x1

    move v11, v4

    const/4 v10, 0x0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    const/4 v3, 0x0

    goto :goto_11

    :catch_4
    move-exception v0

    const/4 v3, 0x0

    goto :goto_c

    :catch_5
    move-exception v0

    const/4 v3, 0x0

    goto :goto_d

    :catch_6
    move-exception v0

    const/4 v3, 0x0

    goto :goto_e

    :catch_7
    move-exception v0

    const/4 v3, 0x0

    goto :goto_10

    .line 158
    :goto_b
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->cleanUp()V

    .line 159
    throw v0
    :try_end_7
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_8
    move-exception v0

    const/4 v3, 0x0

    const/4 v12, 0x0

    goto :goto_c

    :catch_9
    move-exception v0

    const/4 v3, 0x0

    const/4 v12, 0x0

    goto :goto_d

    :catch_a
    move-exception v0

    const/4 v3, 0x0

    const/4 v12, 0x0

    goto :goto_e

    .line 160
    :goto_c
    :try_start_8
    invoke-virtual {v1, v0, v12, v3}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->handleInternalException(Ljava/lang/Throwable;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    .line 161
    throw v0

    :catchall_3
    move-exception v0

    goto :goto_11

    :catch_b
    move-exception v0

    move-object v3, v10

    move-object v12, v3

    .line 162
    :goto_d
    invoke-virtual {v1, v0, v12, v3}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->handleInternalException(Ljava/lang/Throwable;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    .line 163
    throw v0

    :catch_c
    move-exception v0

    move-object v3, v10

    move-object v12, v3

    .line 164
    :goto_e
    invoke-virtual {v1, v0, v12}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->handleInternalException(Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 165
    iput-object v3, v2, Lorg/eclipse/jdt/core/dom/ASTRequestor;->compilationUnitResolver:Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;

    :goto_f
    return-void

    .line 166
    :goto_10
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 167
    :goto_11
    iput-object v3, v2, Lorg/eclipse/jdt/core/dom/ASTRequestor;->compilationUnitResolver:Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;

    .line 168
    throw v0
.end method

.method public static resolve([Lorg/eclipse/jdt/core/IJavaElement;ILjava/util/Map;Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;ILorg/eclipse/core/runtime/IProgressMonitor;)[Lorg/eclipse/jdt/core/dom/IBinding;
    .locals 15

    move-object v0, p0

    .line 74
    array-length v1, v0

    .line 75
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 76
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v4, v1, :cond_0

    .line 77
    new-array v6, v5, [Lorg/eclipse/jdt/core/ICompilationUnit;

    .line 78
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 79
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->size()I

    move-result v4

    .line 80
    new-array v7, v4, [Ljava/lang/String;

    .line 81
    invoke-virtual {v3, v7}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->keysToArray([Ljava/lang/Object;)V

    .line 82
    new-instance v4, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$1Requestor;

    invoke-direct {v4, v1, v2, p0, v3}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$1Requestor;-><init>(ILjava/util/HashMap;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;)V

    move-object v8, v4

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p6

    .line 83
    invoke-static/range {v6 .. v14}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->resolve([Lorg/eclipse/jdt/core/ICompilationUnit;[Ljava/lang/String;Lorg/eclipse/jdt/core/dom/ASTRequestor;ILjava/util/Map;Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    .line 84
    iget-object v0, v4, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$1Requestor;->bindings:[Lorg/eclipse/jdt/core/dom/IBinding;

    return-object v0

    .line 85
    :cond_0
    aget-object v6, v0, v4

    .line 86
    instance-of v7, v6, Lorg/eclipse/jdt/internal/core/SourceRefElement;

    if-eqz v7, :cond_7

    const/4 v7, 0x5

    .line 87
    invoke-interface {v6, v7}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 88
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$IntArrayList;

    if-nez v6, :cond_1

    .line 89
    new-instance v6, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$IntArrayList;

    invoke-direct {v6}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$IntArrayList;-><init>()V

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    .line 90
    :cond_1
    invoke-virtual {v6, v4}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$IntArrayList;->add(I)V

    goto :goto_2

    .line 91
    :cond_2
    :try_start_0
    instance-of v7, v6, Lorg/eclipse/jdt/internal/core/BinaryMember;

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    .line 92
    move-object v7, v6

    check-cast v7, Lorg/eclipse/jdt/internal/core/BinaryMember;

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/core/BinaryMember;->getKey(Z)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    .line 93
    :cond_3
    instance-of v7, v6, Lorg/eclipse/jdt/internal/core/LocalVariable;

    if-eqz v7, :cond_4

    .line 94
    move-object v7, v6

    check-cast v7, Lorg/eclipse/jdt/internal/core/LocalVariable;

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/core/LocalVariable;->getKey(Z)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 95
    :cond_4
    instance-of v7, v6, Lorg/eclipse/jdt/internal/core/TypeParameter;

    if-eqz v7, :cond_5

    .line 96
    move-object v7, v6

    check-cast v7, Lorg/eclipse/jdt/internal/core/TypeParameter;

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/core/TypeParameter;->getKey(Z)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 97
    :cond_5
    instance-of v7, v6, Lorg/eclipse/jdt/internal/core/BinaryModule;

    if-eqz v7, :cond_6

    .line 98
    move-object v7, v6

    check-cast v7, Lorg/eclipse/jdt/internal/core/BinaryModule;

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/core/BinaryModule;->getKey(Z)Ljava/lang/String;

    move-result-object v7

    .line 99
    :goto_1
    invoke-virtual {v3, v7, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 100
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has an unexpected type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 102
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not part of a compilation unit or class file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private worked(I)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    invoke-interface {v0, p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->worked(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized accept(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 0

    monitor-enter p0

    .line 3
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/Compiler;->accept(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public accept([Lorg/eclipse/jdt/internal/compiler/env/ISourceType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    aget-object p1, p1, p2

    check-cast p1, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    .line 2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getHandle()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->accept(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    return-void
.end method

.method public beginToCompile([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;[Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    array-length v3, v2

    array-length v4, v0

    add-int v5, v3, v4

    const/4 v6, 0x0

    iput v6, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    new-array v7, v5, [Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v7, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-direct {v7}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>()V

    iput-object v7, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedSources:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    move v7, v6

    move v8, v7

    :goto_0
    const/4 v10, 0x1

    if-lt v7, v3, :cond_7

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>()V

    iput-object v2, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    :goto_1
    if-lt v6, v4, :cond_0

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings()V

    return-void

    :cond_0
    new-instance v2, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;

    aget-object v3, v0, v6

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v2, v3, v1, v5}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;-><init>(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/Compiler;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    invoke-virtual {v2, v10}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parse(Z)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->hasTypeName()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->getCompilationUnitDeclaration()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v3

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getFileName()[C

    move-result-object v3

    iget-object v5, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v5, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v5, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v5, v3, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_2
    instance-of v7, v5, Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v2, v3, v7}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->hasTypeName()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->hasModuleName()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->moduleName()[C

    move-result-object v3

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->compoundName()[[C

    move-result-object v3

    const/16 v5, 0x2e

    invoke-static {v3, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v3

    :goto_3
    iget-object v5, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v5, v3, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    :goto_4
    invoke-direct {v1, v10}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->worked(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    aget-object v11, v2, v7

    new-instance v12, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    add-int/lit8 v13, v8, 0x1

    iget-object v14, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v14, v14, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    invoke-direct {v12, v11, v8, v5, v14}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    :try_start_0
    iget-object v14, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v14, v14, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->verbose:Z

    if-eqz v14, :cond_8

    iget-object v13, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->out:Ljava/io/PrintWriter;

    sget-object v14, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_request:Ljava/lang/String;

    add-int/lit8 v8, v8, 0x2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/lang/String;

    invoke-interface {v11}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v15, v6, v10}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_7

    :cond_8
    move v8, v13

    :goto_5
    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    instance-of v9, v6, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;

    if-eqz v9, :cond_9

    check-cast v6, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->resetComments()V

    :cond_9
    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->parseThreshold:I

    if-ge v6, v9, :cond_a

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v6, v11, v12}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v6

    goto :goto_6

    :cond_a
    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v6, v11, v12}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v6

    :goto_6
    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    invoke-virtual {v1, v11, v6}, Lorg/eclipse/jdt/internal/compiler/Compiler;->addCompilationUnit(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    iget-object v6, v1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedSources:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getFileName()[C

    move-result-object v9

    invoke-virtual {v6, v9, v11}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->worked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    aput-object v6, v2, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :goto_7
    aput-object v3, v2, v7

    throw v0
.end method

.method public createBinding(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/IBinding;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v0, p1, p0, v1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;-><init>(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/Compiler;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;->getCompilerBinding()Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v6, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->fromJavaProject:Z

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;ZZ)V

    invoke-virtual {v6, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/core/dom/IBinding;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot be called outside ASTParser#createASTs(...)"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public handleInternalException(Ljava/lang/Throwable;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/Compiler;->handleInternalException(Ljava/lang/Throwable;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->removeUnresolvedBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    :cond_0
    return-void
.end method

.method public handleInternalException(Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/Compiler;->handleInternalException(Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->removeUnresolvedBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    :cond_0
    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->hasCompilationAborted:Z

    .line 6
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->abortProblem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    return-void
.end method

.method public initializeParser()V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    return-void
.end method

.method public process(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;I)V
    .locals 2

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getFileName()[C

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedSources:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/Compiler;->process(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;I)V

    :cond_0
    return-void
.end method

.method public removeUnresolvedBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 3

    .line 1
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz p1, :cond_1

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->removeUnresolvedBindings(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;ZZZ)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 286
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->resolve(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/core/dom/NodeSearcher;ZZZ)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;ZZZ)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 285
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->resolve(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/core/dom/NodeSearcher;ZZZ)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public resolvedRequestedSourcesAndKeys(I)Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedSources:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedSources:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->valueTable:[Ljava/lang/Object;

    array-length v0, p1

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->requestedKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->valueTable:[Ljava/lang/Object;

    array-length v4, v3

    move p1, v1

    :goto_1
    if-lt p1, v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    aget-object v0, v3, p1

    if-eqz v0, :cond_2

    return v1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    aget-object v3, p1, v2

    if-eqz v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
