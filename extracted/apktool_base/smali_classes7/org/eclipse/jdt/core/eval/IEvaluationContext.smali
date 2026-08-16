.class public interface abstract Lorg/eclipse/jdt/core/eval/IEvaluationContext;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract allVariables()[Lorg/eclipse/jdt/core/eval/IGlobalVariable;
.end method

.method public abstract codeComplete(Ljava/lang/String;ILorg/eclipse/jdt/core/CompletionRequestor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract codeComplete(Ljava/lang/String;ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract codeComplete(Ljava/lang/String;ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract codeComplete(Ljava/lang/String;ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract codeComplete(Ljava/lang/String;ILorg/eclipse/jdt/core/ICodeCompletionRequestor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract codeComplete(Ljava/lang/String;ILorg/eclipse/jdt/core/ICompletionRequestor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract codeComplete(Ljava/lang/String;ILorg/eclipse/jdt/core/ICompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract codeSelect(Ljava/lang/String;II)[Lorg/eclipse/jdt/core/IJavaElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract codeSelect(Ljava/lang/String;IILorg/eclipse/jdt/core/WorkingCopyOwner;)[Lorg/eclipse/jdt/core/IJavaElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract deleteVariable(Lorg/eclipse/jdt/core/eval/IGlobalVariable;)V
.end method

.method public abstract evaluateCodeSnippet(Ljava/lang/String;Lorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract evaluateCodeSnippet(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[ILorg/eclipse/jdt/core/IType;ZZLorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract evaluateVariable(Lorg/eclipse/jdt/core/eval/IGlobalVariable;Lorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getImports()[Ljava/lang/String;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getProject()Lorg/eclipse/jdt/core/IJavaProject;
.end method

.method public abstract newVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/core/eval/IGlobalVariable;
.end method

.method public abstract setImports([Ljava/lang/String;)V
.end method

.method public abstract setPackageName(Ljava/lang/String;)V
.end method

.method public abstract validateImports(Lorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method
