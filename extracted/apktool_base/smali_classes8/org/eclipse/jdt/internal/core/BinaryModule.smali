.class public Lorg/eclipse/jdt/internal/core/BinaryModule;
.super Lorg/eclipse/jdt/internal/core/BinaryMember;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/AbstractModule;


# instance fields
.field private info:Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/BinaryMember;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;)V
    .locals 1

    .line 2
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/BinaryMember;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    .line 3
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/BinaryModule;->info:Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    return-void
.end method


# virtual methods
.method public getAnnotations()[Lorg/eclipse/jdt/core/IAnnotation;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryModule;->getModuleInfo()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v1

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;->getTagBits()J

    move-result-wide v2

    const-wide v4, -0x400000000001L

    and-long/2addr v2, v4

    invoke-virtual {p0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/BinaryMember;->getAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;J)[Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public getAttachedJavadoc(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/BinaryModule;->getJavadocContents(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/JavadocContents;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavadocContents;->getModuleDoc()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChildren()[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    return-object v0
.end method

.method public getFlags()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryModule;->getModuleInfo()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHandleMementoDelimiter()C
    .locals 1

    const/16 v0, 0x60

    return v0
.end method

.method public getJavadocContents(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/JavadocContents;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerProjectInfoCheckExistence(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->javadocCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->javadocCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavadocContents;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/core/BinaryType;->EMPTY_JAVADOC:Lorg/eclipse/jdt/internal/core/JavadocContents;

    if-eq v2, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavadocBaseLocation()Ljava/net/URL;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "-summary.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    :cond_4
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getURLContents(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavadocContents;

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/core/JavadocContents;-><init>(Ljava/lang/String;)V

    iget-object p1, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->javadocCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    monitor-enter p1

    :try_start_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->javadocCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getKey(Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0, p0, p1}, Lorg/eclipse/jdt/internal/core/NamedMember;->getKey(Lorg/eclipse/jdt/core/IModuleDescription;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getModuleInfo()Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BinaryModule;->info:Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    check-cast v0, Lorg/eclipse/jdt/internal/core/ModularClassFile;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/ModularClassFile;->getBinaryModuleInfo()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/BinaryModule;->info:Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BinaryModule;->info:Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    return-object v0
.end method

.method public getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Member;->getClassFile()Lorg/eclipse/jdt/core/IClassFile;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/ModularClassFile;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getSourceRange(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/SourceRange;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/SourceMapper;->UNKNOWN_RANGE:Lorg/eclipse/jdt/core/SourceRange;

    return-object v0
.end method

.method public isBinary()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    invoke-interface {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/AbstractModule;->toStringContent(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/JavaModelException;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
