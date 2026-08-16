.class public interface abstract Lorg/eclipse/jdt/core/IJavaProject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IParent;
.implements Lorg/eclipse/jdt/core/IJavaElement;
.implements Lorg/eclipse/jdt/core/IOpenable;


# static fields
.field public static final CLASSPATH_FILE_NAME:Ljava/lang/String; = ".classpath"


# virtual methods
.method public abstract decodeClasspathEntry(Ljava/lang/String;)Lorg/eclipse/jdt/core/IClasspathEntry;
.end method

.method public abstract determineModulesOfProjectsWithNonEmptyClasspath()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract encodeClasspathEntry(Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/lang/String;
.end method

.method public abstract findElement(Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract findElement(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IJavaElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract findElement(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract findModule(Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IModuleDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract findPackageFragment(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract findPackageFragmentRoot(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract findPackageFragmentRoots(Lorg/eclipse/jdt/core/IClasspathEntry;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;
.end method

.method public abstract findType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract findType(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract findType(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract findType(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract findType(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract findType(Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract findType(Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract findType(Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract findUnfilteredPackageFragmentRoots(Lorg/eclipse/jdt/core/IClasspathEntry;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;
.end method

.method public abstract getAllPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getClasspathEntryFor(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getNonJavaResources()[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getOption(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract getOptions(Z)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOutputLocation()Lorg/eclipse/core/runtime/IPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getPackageFragmentRoot(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;
.end method

.method public abstract getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;
.end method

.method public abstract getPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getPackageFragmentRoots(Lorg/eclipse/jdt/core/IClasspathEntry;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;
.end method

.method public abstract getPackageFragments()[Lorg/eclipse/jdt/core/IPackageFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getProject()Lorg/eclipse/core/resources/IProject;
.end method

.method public abstract getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getReferencedClasspathEntries()[Lorg/eclipse/jdt/core/IClasspathEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getRequiredProjectNames()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getResolvedClasspath(Z)[Lorg/eclipse/jdt/core/IClasspathEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract hasBuildState()Z
.end method

.method public abstract hasClasspathCycle([Lorg/eclipse/jdt/core/IClasspathEntry;)Z
.end method

.method public abstract isOnClasspath(Lorg/eclipse/core/resources/IResource;)Z
.end method

.method public abstract isOnClasspath(Lorg/eclipse/jdt/core/IJavaElement;)Z
.end method

.method public abstract newEvaluationContext()Lorg/eclipse/jdt/core/eval/IEvaluationContext;
.end method

.method public abstract newTypeHierarchy(Lorg/eclipse/jdt/core/IRegion;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract newTypeHierarchy(Lorg/eclipse/jdt/core/IRegion;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract newTypeHierarchy(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IRegion;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract newTypeHierarchy(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IRegion;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract readOutputLocation()Lorg/eclipse/core/runtime/IPath;
.end method

.method public abstract readRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;
.end method

.method public abstract setOption(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setOptions(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setOutputLocation(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method
