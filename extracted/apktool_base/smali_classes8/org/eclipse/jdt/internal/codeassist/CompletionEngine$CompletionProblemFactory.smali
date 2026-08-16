.class public Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;
.super Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompletionProblemFactory"
.end annotation


# instance fields
.field private checkProblems:Z

.field public hasAllowedProblems:Z

.field public hasForbiddenProblems:Z

.field private lastErrorStart:I

.field final synthetic this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>(Ljava/util/Locale;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->checkProblems:Z

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->hasForbiddenProblems:Z

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->hasAllowedProblems:Z

    return-void
.end method

.method private checkProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[CII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget v1, v1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->actualCompletionPosition:I

    if-le v1, p4, :cond_1

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->lastErrorStart:I

    if-ge v1, p4, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->fileName:[C

    if-eqz v1, :cond_0

    invoke-static {v1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iput-object p1, p2, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iput p4, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->lastErrorStart:I

    :cond_1
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->checkProblems:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->hasForbiddenProblems:Z

    if-nez p2, :cond_3

    sparse-switch v0, :sswitch_data_0

    and-int/lit8 p2, p3, 0x20

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->hasAllowedProblems:Z

    goto :goto_0

    :cond_2
    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->hasForbiddenProblems:Z

    goto :goto_0

    :sswitch_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->options:Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->checkForbiddenReference:Z

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->hasForbiddenProblems:Z

    goto :goto_0

    :sswitch_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->options:Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->checkDiscouragedReference:Z

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->hasForbiddenProblems:Z

    goto :goto_0

    :sswitch_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->options:Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->checkDeprecation:Z

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->hasForbiddenProblems:Z

    goto :goto_0

    :sswitch_3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->options:Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->checkVisibility:Z

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->hasForbiddenProblems:Z

    :cond_3
    :goto_0
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000003 -> :sswitch_3
        0x1000005 -> :sswitch_2
        0x1000118 -> :sswitch_1
        0x1000133 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public createProblem([CI[Ljava/lang/String;I[Ljava/lang/String;IIIII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;
    .locals 0

    .line 1
    invoke-super/range {p0 .. p10}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->createProblem([CI[Ljava/lang/String;I[Ljava/lang/String;IIIII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object p2

    .line 2
    invoke-direct {p0, p2, p1, p6, p7}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->checkProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[CII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object p1

    return-object p1
.end method

.method public createProblem([CI[Ljava/lang/String;[Ljava/lang/String;IIIII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;
    .locals 0

    .line 3
    invoke-super/range {p0 .. p9}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->createProblem([CI[Ljava/lang/String;[Ljava/lang/String;IIIII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object p2

    .line 4
    invoke-direct {p0, p2, p1, p5, p6}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->checkProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[CII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object p1

    return-object p1
.end method

.method public startCheckingProblems()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->checkProblems:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->hasForbiddenProblems:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->hasAllowedProblems:Z

    return-void
.end method

.method public stopCheckingProblems()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->checkProblems:Z

    return-void
.end method
