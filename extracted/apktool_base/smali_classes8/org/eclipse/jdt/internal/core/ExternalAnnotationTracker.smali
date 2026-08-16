.class public Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/resources/IResourceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;
    }
.end annotation


# static fields
.field private static singleton:Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;


# instance fields
.field tree:Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;-><init>(Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;Lorg/eclipse/core/runtime/IPath;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;->tree:Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;

    return-void
.end method

.method private getAnnotationBase(Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;Lorg/eclipse/core/runtime/IPath;II)Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;
    .locals 3

    invoke-interface {p2, p4}, Lorg/eclipse/core/runtime/IPath;->uptoSegment(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->getChildren()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;

    if-nez v2, :cond_0

    new-instance v2, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;

    invoke-direct {v2, p1, v0}, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;-><init>(Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;Lorg/eclipse/core/runtime/IPath;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-ne p3, p4, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 p4, p4, 0x1

    invoke-direct {p0, v2, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;->getAnnotationBase(Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;Lorg/eclipse/core/runtime/IPath;II)Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;

    move-result-object p1

    return-object p1
.end method

.method public static registerClassFile(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/ClassFile;)V
    .locals 4

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "annotationBase cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v1, "eea"

    invoke-interface {p1, v1}, Lorg/eclipse/core/runtime/IPath;->addFileExtension(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    sget-object v1, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;->singleton:Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;->tree:Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v0, v3}, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;->getAnnotationBase(Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;Lorg/eclipse/core/runtime/IPath;II)Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->registerClassFile(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/ClassFile;)V

    :goto_0
    return-void
.end method

.method public static shutdown(Lorg/eclipse/core/resources/IWorkspace;)V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;->singleton:Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;

    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, Lorg/eclipse/core/resources/IWorkspace;->removeResourceChangeListener(Lorg/eclipse/core/resources/IResourceChangeListener;)V

    sget-object p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;->singleton:Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;->tree:Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->children:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public static start(Lorg/eclipse/core/resources/IWorkspace;)V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;->singleton:Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;

    invoke-interface {p0, v0}, Lorg/eclipse/core/resources/IWorkspace;->addResourceChangeListener(Lorg/eclipse/core/resources/IResourceChangeListener;)V

    return-void
.end method

.method private traverseForClassFiles(Ljava/util/Map;Lorg/eclipse/core/resources/IResourceDelta;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/internal/core/ClassFile;",
            ">;",
            "Lorg/eclipse/core/resources/IResourceDelta;",
            "I)V"
        }
    .end annotation

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getAffectedChildren()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v2, p2, v1

    invoke-interface {v2}, Lorg/eclipse/core/resources/IResourceDelta;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-interface {v3, p3}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/ClassFile;

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/ClassFile;->closeAndRemoveFromJarTypeCache()V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to close ClassFile "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, v2, p3}, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;->traverseForClassFiles(Ljava/util/Map;Lorg/eclipse/core/resources/IResourceDelta;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private traverseForDirectories(Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;Lorg/eclipse/core/resources/IResourceDelta;)V
    .locals 7

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->classFiles:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v1

    invoke-direct {p0, v0, p2, v1}, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;->traverseForClassFiles(Ljava/util/Map;Lorg/eclipse/core/resources/IResourceDelta;I)V

    goto :goto_2

    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->children:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getAffectedChildren()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    goto :goto_2

    :cond_1
    aget-object v3, v0, v2

    iget-object v4, p1, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->children:Ljava/util/Map;

    invoke-interface {v3}, Lorg/eclipse/core/resources/IResourceDelta;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    iget-object v4, p1, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->children:Ljava/util/Map;

    invoke-interface {v3}, Lorg/eclipse/core/resources/IResourceDelta;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-direct {p0, v4, v3}, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;->traverseForDirectories(Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;Lorg/eclipse/core/resources/IResourceDelta;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->parent:Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->children:Ljava/util/Map;

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method public static unregisterClassFile(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)V
    .locals 4

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "annotationBase cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v1, "eea"

    invoke-interface {p1, v1}, Lorg/eclipse/core/runtime/IPath;->addFileExtension(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    sget-object v1, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;->singleton:Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;->tree:Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v0, v3}, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;->getAnnotationBase(Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;Lorg/eclipse/core/runtime/IPath;II)Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->unregisterClassFile(Lorg/eclipse/core/runtime/IPath;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public resourceChanged(Lorg/eclipse/core/resources/IResourceChangeEvent;)V
    .locals 5

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceChangeEvent;->getDelta()Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;->tree:Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->children:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getAffectedChildren()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;->tree:Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;->children:Ljava/util/Map;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IResourceDelta;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;

    if-eqz v3, :cond_1

    invoke-direct {p0, v3, v2}, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;->traverseForDirectories(Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker$DirectoryNode;Lorg/eclipse/core/resources/IResourceDelta;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
