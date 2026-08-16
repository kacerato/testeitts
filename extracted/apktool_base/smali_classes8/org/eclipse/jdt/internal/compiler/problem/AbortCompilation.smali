.class public Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x1c6935bdd6ab5534L


# instance fields
.field public compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

.field public exception:Ljava/lang/Throwable;

.field public isSilent:Z

.field public problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

.field public silentException:Ljava/lang/RuntimeException;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    .line 7
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->exception:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    .line 4
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/RuntimeException;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>()V

    .line 9
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->isSilent:Z

    .line 10
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->silentException:Ljava/lang/RuntimeException;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :cond_0
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->silentException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateContext(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 4

    .line 8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceStart(I)V

    .line 11
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceEnd(I)V

    .line 12
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object v0

    .line 13
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart()I

    move-result p1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result p1

    invoke-interface {v1, p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceLineNumber(I)V

    .line 14
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    :cond_2
    :goto_0
    return-void
.end method

.method public updateContext(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceStart()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceStart(I)V

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceEnd()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceEnd(I)V

    .line 5
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object v0

    .line 6
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceStart()I

    move-result p1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result p1

    invoke-interface {v1, p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceLineNumber(I)V

    .line 7
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    :cond_2
    :goto_0
    return-void
.end method
