.class public interface abstract Lorg/eclipse/jdt/core/IPackageFragmentRoot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IParent;
.implements Lorg/eclipse/jdt/core/IJavaElement;
.implements Lorg/eclipse/jdt/core/IOpenable;


# static fields
.field public static final DEFAULT_PACKAGEROOT_PATH:Ljava/lang/String; = ""

.field public static final DESTINATION_PROJECT_CLASSPATH:I = 0x8

.field public static final K_BINARY:I = 0x2

.field public static final K_SOURCE:I = 0x1

.field public static final NO_RESOURCE_MODIFICATION:I = 0x1

.field public static final ORIGINATING_PROJECT_CLASSPATH:I = 0x2

.field public static final OTHER_REFERRING_PROJECTS_CLASSPATH:I = 0x4

.field public static final REPLACE:I = 0x10


# virtual methods
.method public abstract attachSource(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract copy(Lorg/eclipse/core/runtime/IPath;IILorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract createPackageFragment(Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IPackageFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract delete(IILorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getKind()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;
.end method

.method public abstract getNonJavaResources()[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getPackageFragment(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageFragment;
.end method

.method public abstract getRawClasspathEntry()Lorg/eclipse/jdt/core/IClasspathEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getResolvedClasspathEntry()Lorg/eclipse/jdt/core/IClasspathEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract isArchive()Z
.end method

.method public abstract isExternal()Z
.end method

.method public abstract move(Lorg/eclipse/core/runtime/IPath;IILorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method
