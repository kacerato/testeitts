.class public Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ignoreMethodBodies:Z

.field public recordedParsingInformation:Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;->ignoreMethodBodies:Z

    return-void
.end method

.method private getRecordedParsingInformation(Lorg/eclipse/jdt/internal/compiler/CompilationResult;[[I)Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;
    .locals 4

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    if-eqz v0, :cond_1

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    array-length v2, v1

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-array v2, v0, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;-><init>([Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[I[[I)V

    return-object v0
.end method


# virtual methods
.method public parseClassBodyDeclarations([CIILjava/util/Map;ZZ)[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)[",
            "Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v0, p4}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    .line 3
    iget-boolean p4, p0, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;->ignoreMethodBodies:Z

    iput-boolean p4, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->ignoreMethodBodies:Z

    .line 4
    new-instance p4, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    .line 5
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->proceedWithAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v1

    .line 6
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>(Ljava/util/Locale;)V

    .line 7
    invoke-direct {p4, v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    .line 8
    new-instance v1, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;

    const/4 v2, 0x0

    invoke-direct {v1, p4, v2}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    .line 9
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->setMethodsFullRecovery(Z)V

    .line 10
    invoke-virtual {v1, p6}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->setStatementsRecovery(Z)V

    .line 11
    new-instance p6, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;

    .line 12
    const-string v3, ""

    .line 13
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->defaultEncoding:Ljava/lang/String;

    .line 14
    invoke-direct {p6, p1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;-><init>([CLjava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    invoke-direct {v3, p6, v2, v2, v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    .line 16
    new-instance p6, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    array-length v0, p1

    invoke-direct {p6, p4, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;I)V

    .line 17
    invoke-virtual {v1, p1, p2, p3, p6}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parseClassBodyDeclarations([CIILorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object p1

    if-eqz p5, :cond_0

    .line 18
    iget-object p2, p6, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->comments:[[I

    invoke-direct {p0, v3, p2}, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;->getRecordedParsingInformation(Lorg/eclipse/jdt/internal/compiler/CompilationResult;[[I)Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;->recordedParsingInformation:Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;

    :cond_0
    return-object p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public parseClassBodyDeclarations([CLjava/util/Map;Z)[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)[",
            "Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;"
        }
    .end annotation

    .line 1
    array-length v3, p1

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;->parseClassBodyDeclarations([CIILjava/util/Map;ZZ)[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public parseCompilationUnit([CLjava/util/Map;Z)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;"
        }
    .end annotation

    if-eqz p1, :cond_5

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v0, p2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;->ignoreMethodBodies:Z

    iput-boolean p2, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->ignoreMethodBodies:Z

    new-instance p2, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->proceedWithAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v2

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>(Ljava/util/Locale;)V

    invoke-direct {v1, v2, v0, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;

    const-string v3, ""

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->defaultEncoding:Ljava/lang/String;

    invoke-direct {v1, p1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;-><init>([CLjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    invoke-direct {p1, v1, v2, v2, v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    invoke-virtual {p2, v1, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    if-eqz p3, :cond_0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->comments:[[I

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;->getRecordedParsingInformation(Lorg/eclipse/jdt/internal/compiler/CompilationResult;[[I)Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;->recordedParsingInformation:Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;

    :cond_0
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->ignoreMethodBodies:Z

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->ignoreFurtherInvestigation:Z

    return-object v0

    :cond_1
    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v1, :cond_3

    array-length v3, v1

    :goto_0
    if-lt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    aget-object v4, v1, v2

    invoke-virtual {v4, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->parseMethods(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;->recordedParsingInformation:Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;->updateRecordedParsingInformation(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    :cond_4
    return-object v0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public parseExpression([CIILjava/util/Map;Z)Lorg/eclipse/jdt/internal/compiler/ast/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lorg/eclipse/jdt/internal/compiler/ast/Expression;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v0, p4}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    .line 3
    new-instance p4, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    .line 4
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->proceedWithAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v1

    .line 5
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>(Ljava/util/Locale;)V

    .line 6
    invoke-direct {p4, v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    .line 7
    new-instance v4, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;

    const/4 v1, 0x0

    invoke-direct {v4, p4, v1}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    .line 8
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;

    .line 9
    const-string v3, ""

    .line 10
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->defaultEncoding:Ljava/lang/String;

    .line 11
    invoke-direct {v2, p1, v3, v5}, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;-><init>([CLjava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    invoke-direct {v3, v2, v1, v1, v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    .line 13
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    array-length v1, p1

    invoke-direct {v0, p4, v3, v1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;I)V

    const/4 v9, 0x1

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v8, v0

    .line 14
    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parseExpression([CIILorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object p1

    if-eqz p5, :cond_0

    .line 15
    iget-object p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->comments:[[I

    invoke-direct {p0, v3, p2}, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;->getRecordedParsingInformation(Lorg/eclipse/jdt/internal/compiler/CompilationResult;[[I)Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;->recordedParsingInformation:Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;

    :cond_0
    return-object p1

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public parseExpression([CLjava/util/Map;Z)Lorg/eclipse/jdt/internal/compiler/ast/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lorg/eclipse/jdt/internal/compiler/ast/Expression;"
        }
    .end annotation

    .line 1
    array-length v3, p1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;->parseExpression([CIILjava/util/Map;Z)Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object p1

    return-object p1
.end method

.method public parseStatements([CIILjava/util/Map;ZZ)Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v0, p4}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    .line 3
    new-instance p4, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    .line 4
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->proceedWithAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v1

    .line 5
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>(Ljava/util/Locale;)V

    .line 6
    invoke-direct {p4, v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    .line 7
    new-instance v1, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;

    const/4 v2, 0x0

    invoke-direct {v1, p4, v2}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    .line 8
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->setMethodsFullRecovery(Z)V

    .line 9
    invoke-virtual {v1, p6}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->setStatementsRecovery(Z)V

    .line 10
    new-instance p6, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;

    .line 11
    const-string v3, ""

    .line 12
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->defaultEncoding:Ljava/lang/String;

    .line 13
    invoke-direct {p6, p1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;-><init>([CLjava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    invoke-direct {p1, p6, v2, v2, v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    .line 15
    new-instance p6, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-direct {p6, p4, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;I)V

    .line 16
    new-instance p4, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    invoke-direct {p4, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    const/4 v0, -0x1

    .line 17
    iput v0, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr p3, p2

    add-int/lit8 v0, p3, -0x1

    .line 18
    iput v0, p4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    .line 19
    iput p2, p4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    .line 20
    iput v0, p4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    .line 21
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    .line 22
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    const/4 p2, 0x1

    .line 23
    invoke-virtual {v1, p4, p6, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V

    if-eqz p5, :cond_0

    .line 24
    iget-object p2, p6, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->comments:[[I

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;->getRecordedParsingInformation(Lorg/eclipse/jdt/internal/compiler/CompilationResult;[[I)Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;->recordedParsingInformation:Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;

    :cond_0
    return-object p4

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public parseStatements([CLjava/util/Map;ZZ)Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;"
        }
    .end annotation

    .line 1
    array-length v3, p1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;->parseStatements([CIILjava/util/Map;ZZ)Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    move-result-object p1

    return-object p1
.end method
