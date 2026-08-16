.class public Lorg/eclipse/jdt/internal/core/ExternalFolderChange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

.field private project:Lorg/eclipse/jdt/internal/core/JavaProject;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ExternalFolderChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/ExternalFolderChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExternalFolderChange: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ExternalFolderChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateExternalFoldersIfNecessary(ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalFolderChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getExternalFolders([Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ExternalFolderChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getExternalFolders([Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getExternalManager()Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v0, :cond_3

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->removePendingFolder(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_3
    :try_start_0
    check-cast v3, Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v2, v3, p1, p2}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->createLinkFolder(Lorg/eclipse/core/runtime/IPath;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/resources/IFolder;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2
.end method
