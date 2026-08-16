.class Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector;
.super Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/parser/Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScanContextDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/parser/Scanner;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V
    .locals 2

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector;->this$0:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->ignoreAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>()V

    invoke-direct {p1, v0, p2, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardParser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->performStatementsRecovery:Z

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->reportSyntaxErrorIsRequired:Z

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->reportOnlyOneSyntaxError:Z

    return-void
.end method


# virtual methods
.method public getScanContext([CI)Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->goForCompilationUnit()V

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector$2;

    const/4 p2, 0x2

    const/4 v1, 0x0

    invoke-direct {p1, p0, p2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector$2;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector;I[II)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardParser;->parse(Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;)Z

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanContext:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    return-object p1
.end method

.method public initializeScanner()V
    .locals 13

    new-instance v12, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector$1;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    iget-wide v7, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->taskTags:[[C

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->taskPriorities:[[C

    iget-boolean v11, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isTaskCaseSensitive:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector$1;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector;ZZZJJ[[C[[CZ)V

    iput-object v12, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/4 v0, 0x0

    iput-boolean v0, v12, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordLineSeparator:Z

    invoke-virtual {v12, p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setActiveParser(Lorg/eclipse/jdt/internal/compiler/parser/ConflictedParser;)V

    return-void
.end method

.method public isParsingModuleDeclaration()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
