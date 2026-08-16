.class public Lorg/eclipse/jdt/internal/core/UserLibraryManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CP_USERLIBRARY_PREFERENCES_PREFIX:Ljava/lang/String; = "org.eclipse.jdt.core.userLibrary."


# instance fields
.field private userLibraries:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/UserLibraryManager;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 10

    const-string v0, "Exception while initializing user library "

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/UserLibraryManager;->userLibraries:Ljava/util/Map;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInstancePreferences()Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->keys()[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/osgi/service/prefs/BackingStoreException; {:try_start_0 .. :try_end_0} :catch_3

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v4, v3, :cond_1

    if-eqz v5, :cond_0

    :try_start_1
    invoke-interface {v1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->flush()V
    :try_end_1
    .catch Lorg/osgi/service/prefs/BackingStoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Exception while flusing instance preferences"

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    aget-object v6, v2, v4

    const-string v7, "org.eclipse.jdt.core.userLibrary."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    const/16 v8, 0x21

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/io/StringReader;

    invoke-direct {v9, v7}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    :try_start_2
    invoke-static {v9}, Lorg/eclipse/jdt/internal/core/UserLibrary;->createFromString(Ljava/io/Reader;)Lorg/eclipse/jdt/internal/core/UserLibrary;

    move-result-object v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException; {:try_start_2 .. :try_end_2} :catch_1

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/UserLibraryManager;->userLibraries:Ljava/util/Map;

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catch_1
    move-exception v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->remove(Ljava/lang/String;)V

    :goto_2
    move v5, v7

    goto :goto_3

    :catch_2
    move-exception v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->remove(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "Exception while initializing user libraries"

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getUserLibrary(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/UserLibrary;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/UserLibraryManager;->userLibraries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/UserLibrary;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getUserLibraryNames()[Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/UserLibraryManager;->userLibraries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeUserLibrary(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/UserLibraryManager;->userLibraries:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInstancePreferences()Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "org.eclipse.jdt.core.userLibrary."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->flush()V
    :try_end_1
    .catch Lorg/osgi/service/prefs/BackingStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception while removing user library "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setUserLibrary(Ljava/lang/String;[Lorg/eclipse/jdt/core/IClasspathEntry;Z)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/UserLibraryManager;->userLibraries:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInstancePreferences()Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "org.eclipse.jdt.core.userLibrary."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p2, p3}, Lorg/eclipse/jdt/internal/core/UserLibrary;->serialize([Lorg/eclipse/jdt/core/IClasspathEntry;Z)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v2, p2}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->flush()V
    :try_end_2
    .catch Lorg/osgi/service/prefs/BackingStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_3
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Exception while saving user library "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catch_1
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Exception while serializing user library "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public updateUserLibrary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    :try_start_0
    new-instance v0, Lorg/eclipse/core/runtime/Path;

    const-string v1, "org.eclipse.jdt.USER_LIBRARY"

    invoke-direct {v0, v1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/eclipse/core/runtime/Path;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IWorkspaceRoot;)Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaModel;->getJavaProjects()[Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v1

    if-lt v4, v5, :cond_5

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object p2, v1

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/UserLibrary;->createFromString(Ljava/io/Reader;)Lorg/eclipse/jdt/internal/core/UserLibrary;

    move-result-object p2

    :goto_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_1

    :try_start_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/UserLibraryManager;->userLibraries:Ljava/util/Map;

    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_5

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/UserLibraryManager;->userLibraries:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    new-array v5, v4, [Lorg/eclipse/jdt/core/IJavaProject;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-array v2, v4, [Lorg/eclipse/jdt/core/IClasspathContainer;

    if-eqz p2, :cond_4

    new-instance p2, Lorg/eclipse/jdt/internal/core/UserLibraryClasspathContainer;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/core/UserLibraryClasspathContainer;-><init>(Ljava/lang/String;)V

    :goto_3
    if-lt v3, v4, :cond_3

    goto :goto_4

    :cond_3
    aput-object p2, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_8

    :catch_1
    move-exception p2

    goto :goto_9

    :catch_2
    move-exception p2

    goto :goto_a

    :cond_4
    :goto_4
    invoke-static {v0, v5, v2, v1}, Lorg/eclipse/jdt/core/JavaCore;->setClasspathContainer(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/IClasspathContainer;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_b

    :goto_5
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2

    :cond_5
    aget-object v5, v1, v4

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IJavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v6

    move v7, v3

    :goto_6
    array-length v8, v6

    if-lt v7, v8, :cond_6

    goto :goto_7

    :cond_6
    aget-object v8, v6, v7

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_7

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception while decoding user library \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_b

    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception while setting user library \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception while decoding user library \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_b
    return-void
.end method
