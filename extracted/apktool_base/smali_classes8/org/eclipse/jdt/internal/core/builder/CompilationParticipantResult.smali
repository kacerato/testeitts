.class public Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;
.super Lorg/eclipse/jdt/core/compiler/BuildContext;
.source "SourceFile"


# instance fields
.field protected addedFiles:[Lorg/eclipse/core/resources/IFile;

.field protected deletedFiles:[Lorg/eclipse/core/resources/IFile;

.field protected dependencies:[Ljava/lang/String;

.field protected hasAnnotations:Z

.field private isTestCode:Z

.field protected problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

.field protected sourceFile:Lorg/eclipse/jdt/internal/core/builder/SourceFile;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/builder/SourceFile;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/compiler/BuildContext;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->sourceFile:Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->isTestCode:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->hasAnnotations:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->addedFiles:[Lorg/eclipse/core/resources/IFile;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->deletedFiles:[Lorg/eclipse/core/resources/IFile;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->dependencies:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContents()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->sourceFile:Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->getContents()[C

    move-result-object v0

    return-object v0
.end method

.method public getFile()Lorg/eclipse/core/resources/IFile;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->sourceFile:Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    return-object v0
.end method

.method public hasAnnotations()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->hasAnnotations:Z

    return v0
.end method

.method public isTestCode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->isTestCode:Z

    return v0
.end method

.method public recordAddedGeneratedFiles([Lorg/eclipse/core/resources/IFile;)V
    .locals 5

    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->addedFiles:[Lorg/eclipse/core/resources/IFile;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    array-length v3, v1

    :goto_0
    add-int v4, v3, v0

    new-array v4, v4, [Lorg/eclipse/core/resources/IFile;

    if-lez v3, :cond_2

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    invoke-static {p1, v2, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->addedFiles:[Lorg/eclipse/core/resources/IFile;

    return-void
.end method

.method public recordDeletedGeneratedFiles([Lorg/eclipse/core/resources/IFile;)V
    .locals 5

    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->deletedFiles:[Lorg/eclipse/core/resources/IFile;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    array-length v3, v1

    :goto_0
    add-int v4, v3, v0

    new-array v4, v4, [Lorg/eclipse/core/resources/IFile;

    if-lez v3, :cond_2

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    invoke-static {p1, v2, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->deletedFiles:[Lorg/eclipse/core/resources/IFile;

    return-void
.end method

.method public recordDependencies([Ljava/lang/String;)V
    .locals 5

    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->dependencies:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    array-length v3, v1

    :goto_0
    add-int v4, v3, v0

    new-array v4, v4, [Ljava/lang/String;

    if-lez v3, :cond_2

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    invoke-static {p1, v2, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->dependencies:[Ljava/lang/String;

    return-void
.end method

.method public recordNewProblems([Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 5

    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    array-length v3, v1

    :goto_0
    add-int v4, v3, v0

    new-array v4, v4, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-lez v3, :cond_2

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    invoke-static {p1, v2, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    return-void
.end method

.method public reset(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->hasAnnotations:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->addedFiles:[Lorg/eclipse/core/resources/IFile;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->deletedFiles:[Lorg/eclipse/core/resources/IFile;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->dependencies:[Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->sourceFile:Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
