.class public interface abstract Lorg/eclipse/jdt/core/ICompilationUnit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/ITypeRoot;
.implements Lorg/eclipse/jdt/core/IWorkingCopy;
.implements Lorg/eclipse/jdt/core/ISourceManipulation;


# static fields
.field public static final ENABLE_BINDINGS_RECOVERY:I = 0x4

.field public static final ENABLE_STATEMENTS_RECOVERY:I = 0x2

.field public static final FORCE_PROBLEM_DETECTION:I = 0x1

.field public static final IGNORE_METHOD_BODIES:I = 0x8

.field public static final NO_AST:I


# virtual methods
.method public abstract applyTextEdit(Lorg/eclipse/text/edits/TextEdit;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/text/edits/UndoEdit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract becomeWorkingCopy(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract becomeWorkingCopy(Lorg/eclipse/jdt/core/IProblemRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract commitWorkingCopy(ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract createImport(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IImportDeclaration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract createImport(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IImportDeclaration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract createPackageDeclaration(Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IPackageDeclaration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract createType(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract discardWorkingCopy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract findElements(Lorg/eclipse/jdt/core/IJavaElement;)[Lorg/eclipse/jdt/core/IJavaElement;
.end method

.method public abstract findWorkingCopy(Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/ICompilationUnit;
.end method

.method public abstract getAllTypes()[Lorg/eclipse/jdt/core/IType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getImport(Ljava/lang/String;)Lorg/eclipse/jdt/core/IImportDeclaration;
.end method

.method public abstract getImportContainer()Lorg/eclipse/jdt/core/IImportContainer;
.end method

.method public abstract getImports()[Lorg/eclipse/jdt/core/IImportDeclaration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getOwner()Lorg/eclipse/jdt/core/WorkingCopyOwner;
.end method

.method public abstract getPackageDeclaration(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageDeclaration;
.end method

.method public abstract getPackageDeclarations()[Lorg/eclipse/jdt/core/IPackageDeclaration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getPrimary()Lorg/eclipse/jdt/core/ICompilationUnit;
.end method

.method public abstract getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;
.end method

.method public abstract getTypes()[Lorg/eclipse/jdt/core/IType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getWorkingCopy(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ICompilationUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getWorkingCopy(Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/IProblemRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ICompilationUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract hasResourceChanged()Z
.end method

.method public abstract isWorkingCopy()Z
.end method

.method public abstract reconcile(IILorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/CompilationUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract reconcile(IZLorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/CompilationUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract reconcile(IZZLorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/CompilationUnit;
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
