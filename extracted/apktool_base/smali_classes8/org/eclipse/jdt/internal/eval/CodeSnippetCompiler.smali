.class public Lorg/eclipse/jdt/internal/eval/CodeSnippetCompiler;
.super Lorg/eclipse/jdt/internal/compiler/Compiler;
.source "SourceFile"


# instance fields
.field codeSnippetEnd:I

.field codeSnippetStart:I

.field evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Lorg/eclipse/jdt/internal/eval/EvaluationContext;II)V
    .locals 6

    invoke-direct/range {p0 .. p5}, Lorg/eclipse/jdt/internal/compiler/Compiler;-><init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    iput p7, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetCompiler;->codeSnippetStart:I

    iput p8, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetCompiler;->codeSnippetEnd:I

    iput-object p6, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetCompiler;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    new-instance p1, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v3, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->parseLiteralExpressionsAsConstants:Z

    move-object v0, p1

    move-object v2, p6

    move v4, p7

    move v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/eval/EvaluationContext;ZII)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    const/4 p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parseThreshold:I

    return-void
.end method


# virtual methods
.method public initializeParser()V
    .locals 7

    new-instance v6, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetCompiler;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->parseLiteralExpressionsAsConstants:Z

    iget v4, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetCompiler;->codeSnippetStart:I

    iget v5, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetCompiler;->codeSnippetEnd:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/eval/EvaluationContext;ZII)V

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    return-void
.end method
