.class public Lorg/eclipse/jdt/internal/core/eval/RequestorWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/eval/IRequestor;


# instance fields
.field requestor:Lorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/eval/RequestorWrapper;->requestor:Lorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;

    return-void
.end method


# virtual methods
.method public acceptClassFiles([Lorg/eclipse/jdt/internal/compiler/ClassFile;[C)Z
    .locals 11

    array-length v0, p1

    new-array v1, v0, [[B

    new-array v2, v0, [[Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v0, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/eval/RequestorWrapper;->requestor:Lorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([C)V

    move-object p2, v0

    :goto_1
    invoke-interface {p1, v1, v2, p2}, Lorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;->acceptClassFiles([[B[[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    aget-object v5, p1, v4

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->getBytes()[B

    move-result-object v6

    aput-object v6, v1, v4

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->getCompoundName()[[C

    move-result-object v5

    array-length v6, v5

    new-array v7, v6, [Ljava/lang/String;

    move v8, v3

    :goto_2
    if-lt v8, v6, :cond_2

    aput-object v7, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v9, Ljava/lang/String;

    aget-object v10, v5, v8

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([C)V

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method public acceptProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[CI)V
    .locals 4

    :try_start_0
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v0

    const-string v1, "org.eclipse.jdt.core.transient_problem"

    invoke-interface {v0, v1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->createMarker(Ljava/lang/String;)Lorg/eclipse/core/resources/IMarker;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/eclipse/core/resources/IMarker;->setAttribute(Ljava/lang/String;I)V

    const-string v1, "charStart"

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/eclipse/core/resources/IMarker;->setAttribute(Ljava/lang/String;I)V

    const-string v1, "charEnd"

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/core/resources/IMarker;->setAttribute(Ljava/lang/String;I)V

    const-string v1, "lineNumber"

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceLineNumber()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/eclipse/core/resources/IMarker;->setAttribute(Ljava/lang/String;I)V

    const-string v1, "message"

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/eclipse/core/resources/IMarker;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "severity"

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->isWarning()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0, v1, v3}, Lorg/eclipse/core/resources/IMarker;->setAttribute(Ljava/lang/String;I)V

    const-string p1, "sourceId"

    const-string v1, "JDT"

    invoke-interface {v0, p1, v1}, Lorg/eclipse/core/resources/IMarker;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/eval/RequestorWrapper;->requestor:Lorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p1, v0, v1, p3}, Lorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;->acceptProblem(Lorg/eclipse/core/resources/IMarker;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace()V

    :goto_1
    return-void
.end method
