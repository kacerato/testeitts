.class public interface abstract Lorg/eclipse/jdt/core/ITypeRoot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IJavaElement;
.implements Lorg/eclipse/jdt/core/IParent;
.implements Lorg/eclipse/jdt/core/IOpenable;
.implements Lorg/eclipse/jdt/core/ISourceReference;
.implements Lorg/eclipse/jdt/core/ICodeAssist;


# virtual methods
.method public abstract findPrimaryType()Lorg/eclipse/jdt/core/IType;
.end method

.method public abstract getElementAt(I)Lorg/eclipse/jdt/core/IJavaElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public getModule()Lorg/eclipse/jdt/core/IModuleDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getWorkingCopy(Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ICompilationUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method
