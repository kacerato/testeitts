.class Lorg/eclipse/jdt/internal/compiler/SourceElementParser$1;
.super Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/SourceElementParser;-><init>(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/SourceElementParser;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/SourceElementParser;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser$1;->this$0:Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    return-void
.end method


# virtual methods
.method public record(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Z)V
    .locals 0

    invoke-virtual {p2, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->record(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Z)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser$1;->this$0:Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    return-void
.end method
