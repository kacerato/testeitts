.class public Lorg/eclipse/jdt/internal/core/search/UnindexedSearchScope;
.super Lorg/eclipse/jdt/internal/core/search/AbstractSearchScope;
.source "SourceFile"


# instance fields
.field private searchScope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;


# direct methods
.method private constructor <init>(Lorg/eclipse/jdt/core/search/IJavaSearchScope;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/AbstractSearchScope;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/UnindexedSearchScope;->searchScope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    return-void
.end method

.method public static filterEntriesCoveredByTheNewIndex(Lorg/eclipse/jdt/core/search/IJavaSearchScope;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/UnindexedSearchScope;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/search/UnindexedSearchScope;-><init>(Lorg/eclipse/jdt/core/search/IJavaSearchScope;)V

    return-object v0
.end method

.method private isJarFile(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, ".jar"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".JAR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public encloses(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/UnindexedSearchScope;->isJarFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/UnindexedSearchScope;->searchScope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/search/IJavaSearchScope;->encloses(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z
    .locals 2

    .line 4
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getUnderlyingResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/search/UnindexedSearchScope;->isJarFile(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception v0

    .line 6
    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/core/runtime/Plugin;->getLog()Lorg/eclipse/core/runtime/ILog;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/JavaModelException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/eclipse/core/runtime/ILog;->log(Lorg/eclipse/core/runtime/IStatus;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/UnindexedSearchScope;->searchScope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/search/IJavaSearchScope;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result p1

    return p1
.end method

.method public enclosingProjectsAndJars()[Lorg/eclipse/core/runtime/IPath;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/UnindexedSearchScope;->searchScope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/search/IJavaSearchScope;->enclosingProjectsAndJars()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/core/runtime/IPath;

    return-object v0

    :cond_0
    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/core/search/UnindexedSearchScope;->isJarFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public processDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;I)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/UnindexedSearchScope;->searchScope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/search/AbstractSearchScope;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/core/search/AbstractSearchScope;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/AbstractSearchScope;->processDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;I)V

    :cond_0
    return-void
.end method
