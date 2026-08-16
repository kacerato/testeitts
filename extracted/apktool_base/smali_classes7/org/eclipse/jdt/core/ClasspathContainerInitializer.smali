.class public abstract Lorg/eclipse/jdt/core/ClasspathContainerInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ATTRIBUTE_NOT_SUPPORTED:I = 0x1

.field public static final ATTRIBUTE_READ_ONLY:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canUpdateClasspathContainer(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getAccessRulesStatus(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/core/runtime/IStatus;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/ClasspathContainerInitializer;->canUpdateClasspathContainer(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/eclipse/core/runtime/Status;->OK_STATUS:Lorg/eclipse/core/runtime/IStatus;

    return-object p1

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    return-object p1
.end method

.method public getAttributeStatus(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/ClasspathContainerInitializer;->canUpdateClasspathContainer(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/eclipse/core/runtime/Status;->OK_STATUS:Lorg/eclipse/core/runtime/IStatus;

    return-object p1

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    return-object p1
.end method

.method public getComparisonID(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDescription(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFailureContainer(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IClasspathContainer;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/ClasspathContainerInitializer;->getDescription(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/eclipse/jdt/core/ClasspathContainerInitializer$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/eclipse/jdt/core/ClasspathContainerInitializer$1;-><init>(Lorg/eclipse/jdt/core/ClasspathContainerInitializer;Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;)V

    return-object v0
.end method

.method public getSourceAttachmentStatus(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/core/runtime/IStatus;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/ClasspathContainerInitializer;->canUpdateClasspathContainer(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/eclipse/core/runtime/Status;->OK_STATUS:Lorg/eclipse/core/runtime/IStatus;

    return-object p1

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    return-object p1
.end method

.method public abstract initialize(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation
.end method

.method public requestClasspathContainerUpdate(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/IClasspathContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    return-void
.end method
