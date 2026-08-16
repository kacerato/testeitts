.class public interface abstract Lorg/eclipse/jdt/core/IWorkingCopy;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract commit(ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract destroy()V
.end method

.method public abstract findElements(Lorg/eclipse/jdt/core/IJavaElement;)[Lorg/eclipse/jdt/core/IJavaElement;
.end method

.method public abstract findPrimaryType()Lorg/eclipse/jdt/core/IType;
.end method

.method public abstract findSharedWorkingCopy(Lorg/eclipse/jdt/core/IBufferFactory;)Lorg/eclipse/jdt/core/IJavaElement;
.end method

.method public abstract getOriginal(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;
.end method

.method public abstract getOriginalElement()Lorg/eclipse/jdt/core/IJavaElement;
.end method

.method public abstract getSharedWorkingCopy(Lorg/eclipse/core/runtime/IProgressMonitor;Lorg/eclipse/jdt/core/IBufferFactory;Lorg/eclipse/jdt/core/IProblemRequestor;)Lorg/eclipse/jdt/core/IJavaElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getWorkingCopy()Lorg/eclipse/jdt/core/IJavaElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getWorkingCopy(Lorg/eclipse/core/runtime/IProgressMonitor;Lorg/eclipse/jdt/core/IBufferFactory;Lorg/eclipse/jdt/core/IProblemRequestor;)Lorg/eclipse/jdt/core/IJavaElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract isBasedOn(Lorg/eclipse/core/resources/IResource;)Z
.end method

.method public abstract isWorkingCopy()Z
.end method

.method public abstract reconcile(ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract reconcile()[Lorg/eclipse/core/resources/IMarker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract restore()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method
