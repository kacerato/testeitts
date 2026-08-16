.class public interface abstract Lorg/eclipse/jdt/core/IPackageFragment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IParent;
.implements Lorg/eclipse/jdt/core/IJavaElement;
.implements Lorg/eclipse/jdt/core/IOpenable;
.implements Lorg/eclipse/jdt/core/ISourceManipulation;


# static fields
.field public static final DEFAULT_PACKAGE_NAME:Ljava/lang/String; = ""


# virtual methods
.method public abstract containsJavaResources()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract createCompilationUnit(Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ICompilationUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getAllClassFiles()[Lorg/eclipse/jdt/core/IClassFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IClassFile;
.end method

.method public abstract getClassFiles()[Lorg/eclipse/jdt/core/IClassFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCompilationUnit(Ljava/lang/String;)Lorg/eclipse/jdt/core/ICompilationUnit;
.end method

.method public abstract getCompilationUnits()[Lorg/eclipse/jdt/core/ICompilationUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getCompilationUnits(Lorg/eclipse/jdt/core/WorkingCopyOwner;)[Lorg/eclipse/jdt/core/ICompilationUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getElementName()Ljava/lang/String;
.end method

.method public abstract getKind()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getModularClassFile()Lorg/eclipse/jdt/core/IModularClassFile;
.end method

.method public abstract getNonJavaResources()[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getOrdinaryClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IOrdinaryClassFile;
.end method

.method public abstract getOrdinaryClassFiles()[Lorg/eclipse/jdt/core/IOrdinaryClassFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract hasSubpackages()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract isDefaultPackage()Z
.end method
