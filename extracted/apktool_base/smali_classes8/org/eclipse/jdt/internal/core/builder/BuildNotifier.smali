.class public Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static FixedErrorCount:I

.field public static FixedWarningCount:I

.field public static NewErrorCount:I

.field public static NewWarningCount:I


# instance fields
.field protected cancelling:Z

.field protected fixedErrorCount:I

.field protected fixedWarningCount:I

.field protected monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

.field protected newErrorCount:I

.field protected newWarningCount:I

.field protected percentComplete:F

.field protected previousSubtask:Ljava/lang/String;

.field protected progressPerCompilationUnit:F

.field protected totalWork:I

.field protected workDone:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/runtime/IProgressMonitor;Lorg/eclipse/core/resources/IProject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->cancelling:Z

    sget p2, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->NewErrorCount:I

    iput p2, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->newErrorCount:I

    sget p2, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->FixedErrorCount:I

    iput p2, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->fixedErrorCount:I

    sget p2, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->NewWarningCount:I

    iput p2, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->newWarningCount:I

    sget p2, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->FixedWarningCount:I

    iput p2, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->fixedWarningCount:I

    iput p1, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->workDone:I

    const p1, 0xf4240

    iput p1, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->totalWork:I

    return-void
.end method

.method public static resetProblemCounters()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->NewErrorCount:I

    sput v0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->FixedErrorCount:I

    sput v0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->NewWarningCount:I

    sput v0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->FixedWarningCount:I

    return-void
.end method


# virtual methods
.method public aboutToCompile(Lorg/eclipse/jdt/internal/core/builder/SourceFile;)V
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->build_compiling:Ljava/lang/String;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->subTask(Ljava/lang/String;)V

    return-void
.end method

.method public begin()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v0, :cond_0

    const-string v1, ""

    iget v2, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->totalWork:I

    invoke-interface {v0, v1, v2}, Lorg/eclipse/core/runtime/IProgressMonitor;->beginTask(Ljava/lang/String;I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->previousSubtask:Ljava/lang/String;

    return-void
.end method

.method public checkCancel()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {v0}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public checkCancelWithinCompiler()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->cancelling:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->setCancelling(Z)V

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>(ZLjava/lang/RuntimeException;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public compiled(Lorg/eclipse/jdt/internal/core/builder/SourceFile;)V
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->build_compiling:Ljava/lang/String;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->subTask(Ljava/lang/String;)V

    iget p1, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->progressPerCompilationUnit:F

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->updateProgressDelta(F)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->checkCancelWithinCompiler()V

    return-void
.end method

.method public done()V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->newErrorCount:I

    sput v0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->NewErrorCount:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->fixedErrorCount:I

    sput v0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->FixedErrorCount:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->newWarningCount:I

    sput v0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->NewWarningCount:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->fixedWarningCount:I

    sput v0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->FixedWarningCount:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->updateProgress(F)V

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->build_done:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->subTask(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->previousSubtask:Ljava/lang/String;

    return-void
.end method

.method public problemsMessage()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->newErrorCount:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->newWarningCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->fixedErrorCount:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->fixedWarningCount:I

    add-int/2addr v1, v2

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v2, 0x1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v5, 0x20

    const-string v6, " + "

    if-lez v0, :cond_9

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->build_foundHeader:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-nez v3, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->newErrorCount:I

    if-lez v0, :cond_5

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->newErrorCount:I

    if-ne v0, v2, :cond_3

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->build_oneError:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    sget-object v7, Lorg/eclipse/jdt/internal/core/util/Messages;->build_multipleErrors:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    if-nez v3, :cond_4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->newWarningCount:I

    if-lez v0, :cond_5

    :cond_4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    if-nez v3, :cond_6

    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->newWarningCount:I

    if-lez v0, :cond_8

    :cond_6
    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->newWarningCount:I

    if-ne v0, v2, :cond_7

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->build_oneWarning:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_7
    sget-object v7, Lorg/eclipse/jdt/internal/core/util/Messages;->build_multipleWarnings:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    :goto_2
    if-lez v1, :cond_9

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    if-lez v1, :cond_e

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->build_fixedHeader:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v3, :cond_a

    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->fixedErrorCount:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->fixedWarningCount:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_a
    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->fixedErrorCount:I

    if-lez v0, :cond_c

    if-ne v0, v2, :cond_b

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->build_oneError:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_b
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->build_multipleErrors:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->fixedWarningCount:I

    if-lez v0, :cond_c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->fixedWarningCount:I

    if-lez v0, :cond_e

    if-ne v0, v2, :cond_d

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->build_oneWarning:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_d
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->build_multipleWarnings:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    :goto_4
    const/16 v0, 0x29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCancelling(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->cancelling:Z

    return-void
.end method

.method public setProgressPerCompilationUnit(F)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->progressPerCompilationUnit:F

    return-void
.end method

.method public subTask(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->problemsMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->previousSubtask:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->subTask(Ljava/lang/String;)V

    :cond_2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->previousSubtask:Ljava/lang/String;

    return-void
.end method

.method public updateProblemCounts([Lorg/eclipse/core/resources/IMarker;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 3
    const-string v3, ""

    const-string v4, "message"

    const-string v5, "severity"

    const v6, 0x200001c2

    const/4 v7, 0x2

    const/4 v9, 0x1

    if-eqz v2, :cond_8

    .line 4
    array-length v10, v2

    const/4 v11, 0x0

    :goto_0
    if-lt v11, v10, :cond_0

    goto :goto_6

    .line 5
    :cond_0
    aget-object v12, v2, v11

    .line 6
    invoke-interface {v12}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v13

    if-ne v13, v6, :cond_1

    goto :goto_5

    .line 7
    :cond_1
    invoke-interface {v12}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result v13

    .line 8
    invoke-interface {v12}, Lorg/eclipse/jdt/core/compiler/IProblem;->getMessage()Ljava/lang/String;

    move-result-object v12

    if-eqz v1, :cond_6

    .line 9
    array-length v14, v1

    const/4 v15, 0x0

    :goto_1
    if-lt v15, v14, :cond_2

    goto :goto_4

    .line 10
    :cond_2
    aget-object v8, v1, v15

    if-nez v8, :cond_3

    goto :goto_3

    .line 11
    :cond_3
    invoke-interface {v8, v5, v7}, Lorg/eclipse/core/resources/IMarker;->getAttribute(Ljava/lang/String;I)I

    move-result v6

    if-ne v7, v6, :cond_4

    move v6, v9

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-ne v13, v6, :cond_5

    .line 12
    invoke-interface {v8, v4, v3}, Lorg/eclipse/core/resources/IMarker;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    .line 13
    aput-object v6, v1, v15

    goto :goto_5

    :cond_5
    :goto_3
    add-int/lit8 v15, v15, 0x1

    const v6, 0x200001c2

    goto :goto_1

    :cond_6
    :goto_4
    if-eqz v13, :cond_7

    .line 14
    iget v6, v0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->newErrorCount:I

    add-int/2addr v6, v9

    iput v6, v0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->newErrorCount:I

    goto :goto_5

    :cond_7
    iget v6, v0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->newWarningCount:I

    add-int/2addr v6, v9

    iput v6, v0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->newWarningCount:I

    :goto_5
    add-int/lit8 v11, v11, 0x1

    const v6, 0x200001c2

    goto :goto_0

    :cond_8
    :goto_6
    if-eqz v1, :cond_11

    .line 15
    array-length v6, v1

    const/4 v8, 0x0

    :goto_7
    if-lt v8, v6, :cond_9

    goto :goto_d

    .line 16
    :cond_9
    aget-object v10, v1, v8

    if-nez v10, :cond_a

    const v7, 0x200001c2

    goto :goto_c

    .line 17
    :cond_a
    invoke-interface {v10, v5, v7}, Lorg/eclipse/core/resources/IMarker;->getAttribute(Ljava/lang/String;I)I

    move-result v11

    if-ne v7, v11, :cond_b

    move v11, v9

    goto :goto_8

    :cond_b
    const/4 v11, 0x0

    .line 18
    :goto_8
    invoke-interface {v10, v4, v3}, Lorg/eclipse/core/resources/IMarker;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v2, :cond_c

    .line 19
    array-length v12, v2

    const/4 v13, 0x0

    :goto_9
    if-lt v13, v12, :cond_d

    :cond_c
    const v7, 0x200001c2

    goto :goto_b

    .line 20
    :cond_d
    aget-object v14, v2, v13

    .line 21
    invoke-interface {v14}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v15

    const v7, 0x200001c2

    if-ne v15, v7, :cond_e

    goto :goto_a

    .line 22
    :cond_e
    invoke-interface {v14}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result v15

    if-ne v11, v15, :cond_f

    invoke-interface {v14}, Lorg/eclipse/jdt/core/compiler/IProblem;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    goto :goto_c

    :cond_f
    :goto_a
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x2

    goto :goto_9

    :goto_b
    if-eqz v11, :cond_10

    .line 23
    iget v10, v0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->fixedErrorCount:I

    add-int/2addr v10, v9

    iput v10, v0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->fixedErrorCount:I

    goto :goto_c

    :cond_10
    iget v10, v0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->fixedWarningCount:I

    add-int/2addr v10, v9

    iput v10, v0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->fixedWarningCount:I

    :goto_c
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x2

    goto :goto_7

    :cond_11
    :goto_d
    return-void
.end method

.method public updateProblemCounts([Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    aget-object v2, p1, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->newErrorCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->newErrorCount:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->newWarningCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->newWarningCount:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public updateProgress(F)V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->percentComplete:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->percentComplete:F

    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->totalWork:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->workDone:I

    if-le p1, v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v1, :cond_0

    sub-int v0, p1, v0

    invoke-interface {v1, v0}, Lorg/eclipse/core/runtime/IProgressMonitor;->worked(I)V

    :cond_0
    iput p1, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->workDone:I

    :cond_1
    return-void
.end method

.method public updateProgressDelta(F)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->percentComplete:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->updateProgress(F)V

    return-void
.end method
