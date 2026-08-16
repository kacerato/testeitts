.class public Lorg/eclipse/jdt/internal/compiler/batch/ClasspathMultiReleaseJar;
.super Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;
.source "SourceFile"


# instance fields
.field compliance:Ljava/lang/String;

.field private fs:Ljava/nio/file/FileSystem;

.field releasePath:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/io/File;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;-><init>(Ljava/io/File;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathMultiReleaseJar;->fs:Ljava/nio/file/FileSystem;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathMultiReleaseJar;->releasePath:Ljava/nio/file/Path;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathMultiReleaseJar;->compliance:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 8

    invoke-virtual {p0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathMultiReleaseJar;->releasePath:Ljava/nio/file/Path;

    if-eqz v0, :cond_9

    :try_start_0
    invoke-interface {v0, p4}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[C)V

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v0

    :goto_1
    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->moduleName:[C

    if-nez v3, :cond_3

    iput-object v0, v2, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->moduleName:[C

    goto :goto_2

    :cond_3
    move-object v0, v3

    :goto_2
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_CLASS:[C

    array-length v4, v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {p4, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->annotationPaths:Ljava/util/List;

    if-eqz v5, :cond_7

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x6

    invoke-virtual {p4, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->annotationPaths:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :catch_0
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;

    invoke-direct {v4, v2, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;)V

    move-object v2, v4

    goto :goto_3

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->annotationZipFile:Ljava/util/zip/ZipFile;

    if-nez v7, :cond_6

    invoke-static {v6, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->getAnnotationZipFile(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator$ZipFileProducer;)Ljava/util/zip/ZipFile;

    move-result-object v7

    iput-object v7, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->annotationZipFile:Ljava/util/zip/ZipFile;

    :cond_6
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->annotationZipFile:Ljava/util/zip/ZipFile;

    invoke-static {v2, v6, v4, v7}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->create(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipFile;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getExternalAnnotationStatus()Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    move-result-object v6

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->TYPE_IS_ANNOTATED:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v6, v7, :cond_4

    :cond_7
    :goto_3
    :try_start_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-nez v4, :cond_8

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-direct {v3, v2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;[C)V

    return-object v3

    :cond_8
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->getViolatedRestriction([C)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;[C)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_1
    :cond_9
    invoke-super/range {p0 .. p5}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getModulesDeclaringPackage(Ljava/lang/String;Ljava/lang/String;)[[C
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathMultiReleaseJar;->releasePath:Ljava/nio/file/Path;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->getModulesDeclaringPackage(Ljava/lang/String;Ljava/lang/String;)[[C

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    :try_start_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->packageCache:Ljava/util/Set;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->singletonModuleNameIf(Z)[[C

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    new-instance p2, Ljava/util/HashSet;

    const/16 v0, 0x29

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->packageCache:Ljava/util/Set;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    :try_start_3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathMultiReleaseJar;->releasePath:Ljava/nio/file/Path;

    if-eqz p2, :cond_6

    new-array v0, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p2, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    :try_start_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathMultiReleaseJar;->releasePath:Ljava/nio/file/Path;

    invoke-static {v0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v2, :cond_2

    :try_start_6
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_2
    :try_start_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathMultiReleaseJar$1;

    invoke-direct {v3, p0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathMultiReleaseJar$1;-><init>(Lorg/eclipse/jdt/internal/compiler/batch/ClasspathMultiReleaseJar;)V

    invoke-static {v2, v3}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    if-eqz v0, :cond_3

    :try_start_8
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    :cond_3
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_2
    if-eqz p2, :cond_4

    if-eq p2, v0, :cond_5

    :try_start_9
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_4

    :cond_4
    move-object p2, v0

    :cond_5
    :goto_3
    throw p2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_4
    :try_start_a
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->packageCache:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->singletonModuleNameIf(Z)[[C

    move-result-object p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_7
    :try_start_b
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->addToPackageCache(Ljava/lang/String;Z)V

    goto :goto_0

    :goto_6
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw p1
.end method

.method public initialize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->initialize()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jar:file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/nio/file/FileSystems;->getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathMultiReleaseJar;->fs:Ljava/nio/file/FileSystem;
    :try_end_0
    .catch Ljava/nio/file/FileSystemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathMultiReleaseJar;->fs:Ljava/nio/file/FileSystem;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_1
    invoke-static {v0, v1}, Ljava/nio/file/FileSystems;->newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathMultiReleaseJar;->fs:Ljava/nio/file/FileSystem;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathMultiReleaseJar;->fs:Ljava/nio/file/FileSystem;

    const-string v1, "versions"

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathMultiReleaseJar;->compliance:Ljava/lang/String;

    const-string v3, "META-INF"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v0, v2, v1}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathMultiReleaseJar;->releasePath:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathMultiReleaseJar;->releasePath:Ljava/nio/file/Path;

    :cond_1
    return-void
.end method
