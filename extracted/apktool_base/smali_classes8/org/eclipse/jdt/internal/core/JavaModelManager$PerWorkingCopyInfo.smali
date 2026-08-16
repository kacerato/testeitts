.class public Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IProblemRequestor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/JavaModelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PerWorkingCopyInfo"
.end annotation


# instance fields
.field problemRequestor:Lorg/eclipse/jdt/core/IProblemRequestor;

.field useCount:I

.field workingCopy:Lorg/eclipse/jdt/internal/core/CompilationUnit;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;Lorg/eclipse/jdt/core/IProblemRequestor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->useCount:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->workingCopy:Lorg/eclipse/jdt/internal/core/CompilationUnit;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->problemRequestor:Lorg/eclipse/jdt/core/IProblemRequestor;

    return-void
.end method


# virtual methods
.method public acceptProblem(Lorg/eclipse/jdt/core/compiler/IProblem;)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->getProblemRequestor()Lorg/eclipse/jdt/core/IProblemRequestor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/IProblemRequestor;->acceptProblem(Lorg/eclipse/jdt/core/compiler/IProblem;)V

    return-void
.end method

.method public beginReporting()V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->getProblemRequestor()Lorg/eclipse/jdt/core/IProblemRequestor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IProblemRequestor;->beginReporting()V

    return-void
.end method

.method public endReporting()V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->getProblemRequestor()Lorg/eclipse/jdt/core/IProblemRequestor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IProblemRequestor;->endReporting()V

    return-void
.end method

.method public getProblemRequestor()Lorg/eclipse/jdt/core/IProblemRequestor;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->problemRequestor:Lorg/eclipse/jdt/core/IProblemRequestor;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->workingCopy:Lorg/eclipse/jdt/internal/core/CompilationUnit;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/CompilationUnit;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/core/WorkingCopyOwner;->getProblemRequestor(Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/core/IProblemRequestor;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getWorkingCopy()Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->workingCopy:Lorg/eclipse/jdt/internal/core/CompilationUnit;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->getProblemRequestor()Lorg/eclipse/jdt/core/IProblemRequestor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IProblemRequestor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Info for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->workingCopy:Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nUse count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->useCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\nProblem requestor:\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->problemRequestor:Lorg/eclipse/jdt/core/IProblemRequestor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->problemRequestor:Lorg/eclipse/jdt/core/IProblemRequestor;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->getProblemRequestor()Lorg/eclipse/jdt/core/IProblemRequestor;

    move-result-object v1

    const-string v2, "\nOwner problem requestor:\n  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
