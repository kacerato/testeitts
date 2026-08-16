.class public Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247Jdk12;
.super Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;
.source "SourceFile"


# instance fields
.field modules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/env/IModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;-><init>(Ljava/io/File;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)V

    return-void
.end method


# virtual methods
.method public acceptModule(Ljava/lang/String;[BLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/env/IModule;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 2
    :cond_1
    :try_start_0
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    const-string v0, "module-info.class"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[C)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247Jdk12;->acceptModule(Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method public acceptModule(Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/env/IModule;",
            ">;)V"
        }
    .end annotation

    .line 5
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->jdklevel:J

    const-wide/32 v2, 0x340000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 6
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->acceptModule(Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;Ljava/util/Map;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public fetchLinkedJars(Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$ClasspathSectionProblemReporter;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$ClasspathSectionProblemReporter;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247Jdk12;->findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method

.method public findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 9

    .line 2
    invoke-virtual {p0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 3
    :cond_0
    :try_start_0
    const-string p1, ".class"

    const-string p5, ".sig"

    invoke-virtual {p4, p1, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->subReleases:[Ljava/lang/String;

    if-eqz p4, :cond_9

    array-length p5, p4

    if-lez p5, :cond_9

    .line 5
    array-length p5, p4

    const/4 v0, 0x0

    move-object v2, p2

    move v1, v0

    :goto_0
    if-lt v1, p5, :cond_1

    goto/16 :goto_4

    :cond_1
    aget-object v3, p4, v1

    if-nez p3, :cond_7

    .line 6
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->fs:Ljava/nio/file/FileSystem;

    new-array v5, v0, [Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    invoke-static {v4}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-interface {v4}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v6, :cond_3

    .line 9
    :try_start_3
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object p3, p2

    goto :goto_2

    .line 10
    :cond_3
    :try_start_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/file/Path;

    .line 11
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->fs:Ljava/nio/file/FileSystem;

    invoke-static {v6}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->sanitizedFileName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6, p1}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v3, v6}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    .line 12
    new-array v7, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v6, v7}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 13
    invoke-static {v6}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->safeReadBytes(Ljava/nio/file/Path;)[B

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_2

    .line 14
    :try_start_5
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catchall_1
    move-exception p1

    if-eqz v4, :cond_4

    :try_start_6
    invoke-interface {v4}, Ljava/io/Closeable;->close()V

    goto :goto_1

    :catchall_2
    move-exception p3

    move-object v8, p3

    move-object p3, p1

    move-object p1, v8

    goto :goto_2

    :cond_4
    :goto_1
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_2
    if-eqz p3, :cond_6

    if-eq p3, p1, :cond_5

    :try_start_7
    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    move-object p1, p3

    :cond_6
    throw p1

    .line 15
    :cond_7
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->fs:Ljava/nio/file/FileSystem;

    filled-new-array {p3, p1}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    .line 16
    new-array v4, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 17
    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->safeReadBytes(Ljava/nio/file/Path;)[B

    move-result-object v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_9
    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->fs:Ljava/nio/file/FileSystem;

    iget-object p5, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->releaseInHex:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p5, v0}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p4

    invoke-static {p4}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->safeReadBytes(Ljava/nio/file/Path;)[B

    move-result-object v2

    :goto_4
    if-eqz v2, :cond_b

    .line 19
    new-instance p4, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p5

    invoke-direct {p4, v2, p5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[C)V

    if-eqz p3, :cond_a

    .line 20
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    goto :goto_5

    :cond_a
    move-object p3, p2

    .line 21
    :goto_5
    new-instance p5, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->fetchAccessRestriction(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object p1

    invoke-direct {p5, p4, p1, p3}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;[C)V
    :try_end_7
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    return-object p5

    :catch_0
    :cond_b
    return-object p2
.end method

.method public getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247Jdk12;->modules:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IModule;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getModuleNames(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/env/IModule;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->moduleNamesCache:Ljava/util/Set;

    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->selectModules(Ljava/util/Set;Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getModulesDeclaringPackage(Ljava/lang/String;Ljava/lang/String;)[[C
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->packageCache:Ljava/util/Set;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->singletonModuleNameIf(Z)[[C

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :cond_0
    :try_start_1
    new-instance p2, Ljava/util/HashSet;

    const/16 v0, 0x29

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->packageCache:Ljava/util/Set;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, 0x0

    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->releasePath:Ljava/nio/file/Path;

    invoke-static {v0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-nez v2, :cond_1

    :try_start_4
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_1
    :try_start_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->sanitizedFileName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->releaseInHex:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    :try_start_6
    invoke-static {v2}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-nez v4, :cond_3

    :try_start_8
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    goto :goto_2

    :cond_3
    :try_start_9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247Jdk12$2;

    invoke-direct {v5, p0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247Jdk12$2;-><init>(Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247Jdk12;)V

    invoke-static {v4, v5}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p2

    if-eqz v2, :cond_4

    :try_start_a
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    :cond_4
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_2
    if-eqz p2, :cond_5

    if-eq p2, v1, :cond_6

    :try_start_b
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_4
    move-exception p2

    goto :goto_4

    :cond_5
    move-object p2, v1

    :cond_6
    :goto_3
    throw p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :goto_4
    if-eqz v0, :cond_7

    :try_start_c
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    :cond_7
    throw p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_5
    if-eqz p2, :cond_8

    if-eq p2, v0, :cond_9

    :try_start_d
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_0
    move-exception p2

    goto :goto_7

    :cond_8
    move-object p2, v0

    :cond_9
    :goto_6
    throw p2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_7
    :try_start_e
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->packageCache:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->singletonModuleNameIf(Z)[[C

    move-result-object p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_9
    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    throw p1
.end method

.method public initialize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->compliance:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->fs:Ljava/nio/file/FileSystem;

    if-eqz v1, :cond_1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->initialize()V

    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->releaseInHex:Ljava/lang/String;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->jdkHome:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const-string v1, "lib"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const-string v1, "ct.sym"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "jar:file:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/nio/file/FileSystems;->getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->fs:Ljava/nio/file/FileSystem;
    :try_end_0
    .catch Ljava/nio/file/FileSystemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->fs:Ljava/nio/file/FileSystem;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Ljava/nio/file/FileSystems;->newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->fs:Ljava/nio/file/FileSystem;

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->fs:Ljava/nio/file/FileSystem;

    const-string v1, "/"

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->releasePath:Ljava/nio/file/Path;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->fs:Ljava/nio/file/FileSystem;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->releaseInHex:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v1, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->releasePath:Ljava/nio/file/Path;

    invoke-static {v2}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->subReleases:[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :cond_5
    :try_start_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->sanitizedFileName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->releaseInHex:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_6

    :try_start_5
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    :cond_6
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    if-eqz v1, :cond_8

    if-eq v1, v0, :cond_7

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    move-object v0, v1

    :cond_8
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    :goto_3
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->initialize()V

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "release "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->compliance:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not found in the system"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadModules()V
    .locals 8

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->jdklevel:J

    const-wide/32 v2, 0x340000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->loadModules()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->fs:Ljava/nio/file/FileSystem;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->releaseInHex:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->modulePath:Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->ModulesCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247Jdk12;->modules:Ljava/util/Map;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->releasePath:Ljava/nio/file/Path;

    invoke-static {v1}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->ModulesCache:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->ModulesCache:Ljava/util/HashMap;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->modulePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247Jdk12;->modules:Ljava/util/Map;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->ModulesCache:Ljava/util/HashMap;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->modulePath:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v1

    goto :goto_4

    :goto_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->sanitizedFileName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247;->releaseInHex:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247Jdk12$1;

    invoke-direct {v6, p0, v2}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247Jdk12$1;-><init>(Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJep247Jdk12;Ljava/util/HashMap;)V

    const/4 v7, 0x2

    invoke-static {v4, v5, v7, v6}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/util/Set;ILjava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :goto_3
    if-eqz v1, :cond_4

    :try_start_6
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    :cond_4
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_6

    :try_start_7
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_5
    move-object v0, v1

    :cond_6
    :goto_5
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :cond_7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->moduleNamesCache:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_7
    return-void
.end method
