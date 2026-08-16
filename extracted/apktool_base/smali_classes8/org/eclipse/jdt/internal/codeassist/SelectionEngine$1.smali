.class Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$1;
.super Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;-><init>(Lorg/eclipse/jdt/internal/core/SearchableEnvironment;Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;Ljava/util/Map;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$1;->this$0:Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;

    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    return-void
.end method


# virtual methods
.method public createProblem([CI[Ljava/lang/String;[Ljava/lang/String;IIIII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;
    .locals 0

    invoke-super/range {p0 .. p9}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->createProblem([CI[Ljava/lang/String;[Ljava/lang/String;IIIII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$1;->this$0:Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-nez p2, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result p2

    const/high16 p3, 0x40000000    # 2.0f

    and-int/2addr p2, p3

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$1;->this$0:Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;

    iput-object p1, p2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    :cond_0
    return-object p1
.end method
