.class public interface abstract Lorg/eclipse/jdt/core/IOpenable;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract findRecommendedLineSeparator()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getBuffer()Lorg/eclipse/jdt/core/IBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract hasUnsavedChanges()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract isConsistent()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract isOpen()Z
.end method

.method public abstract makeConsistent(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract open(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract save(Lorg/eclipse/core/runtime/IProgressMonitor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method
