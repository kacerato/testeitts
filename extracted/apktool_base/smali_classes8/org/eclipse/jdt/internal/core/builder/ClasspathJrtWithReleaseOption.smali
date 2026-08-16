.class public Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;
.super Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;
.source "SourceFile"


# instance fields
.field private fs:Ljava/nio/file/FileSystem;

.field private isJRE12Plus:Z

.field private modPathString:Ljava/lang/String;

.field protected modulePath:Ljava/nio/file/Path;

.field final release:Ljava/lang/String;

.field releaseInHex:Ljava/lang/String;

.field private subReleases:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;-><init>()V

    if-eqz p4, :cond_1

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->externalAnnotationPath:Ljava/lang/String;

    :cond_0
    invoke-direct {p0, p4}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->getReleaseOptionFromCompliance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->release:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->initialize()V

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->loadModules(Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "--release argument can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static findPackagesInModules(Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->fs:Ljava/nio/file/FileSystem;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->isJRE12Plus:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->PackageCache:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->modPathString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->PackageCache:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->modPathString:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->release:Ljava/lang/String;

    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption$1;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption$1;-><init>(Ljava/util/HashMap;)V

    sget v3, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->NOTIFY_PACKAGES:I

    sget v4, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->NOTIFY_MODULES:I

    or-int/2addr v3, v4

    invoke-static {v2, p0, v0, v3}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->walkModuleImage(Ljava/io/File;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1

    :cond_2
    :goto_0
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->findPackagesInModules(Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method private getReleaseOptionFromCompliance(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "1.5"

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/JavaCore;->compareJavaVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string p1, "6"

    return-object p1

    :cond_0
    const-string v0, "1."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private isJRE12Plus(Ljava/nio/file/Path;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_1

    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_2

    :cond_1
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/Path;

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->sanitizedFileName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->fs:Ljava/nio/file/FileSystem;

    const-string v5, "system-modules"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    new-array v5, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v4, v5}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x10

    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v3, 0xb

    if-le v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    :try_start_4
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v2

    :catchall_1
    move-exception v2

    if-eqz p1, :cond_3

    :try_start_5
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    goto :goto_1

    :catchall_2
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_2
    if-eqz v2, :cond_5

    if-eq v2, p1, :cond_4

    :try_start_6
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    move-object p1, v2

    :cond_5
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->fs:Ljava/nio/file/FileSystem;

    :goto_3
    return v0
.end method

.method public static loadModules(Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;)V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->fs:Ljava/nio/file/FileSystem;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->isJRE12Plus:Z

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->modPathString:Ljava/lang/String;

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->ModulesCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->modulePath:Ljava/nio/file/Path;

    invoke-static {v1}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_2

    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/Path;

    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    new-instance v5, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption$2;

    invoke-direct {v5, p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption$2;-><init>(Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;)V

    const/4 v6, 0x1

    invoke-static {v3, v4, v6, v5}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/util/Set;ILjava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v0, p0

    if-eqz v1, :cond_3

    :try_start_4
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    :cond_3
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, p0, :cond_4

    :try_start_5
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    move-object p0, v0

    :cond_5
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->loadModules(Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;)V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->fs:Ljava/nio/file/FileSystem;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->fs:Ljava/nio/file/FileSystem;

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->release:Ljava/lang/String;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->release:Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->equalOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->fs:Ljava/nio/file/FileSystem;

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p6}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    return-object p2

    :cond_1
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    sget-object p5, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_CLASS:[C

    array-length p5, p5

    sub-int/2addr p1, p5

    const/4 p5, 0x0

    invoke-virtual {p4, p5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->subReleases:[Ljava/lang/String;

    if-eqz v0, :cond_c

    array-length v0, v0

    if-lez v0, :cond_c

    const-string p6, ".class"

    const-string v0, ".sig"

    invoke-virtual {p4, p6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    iget-object p6, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->subReleases:[Ljava/lang/String;

    array-length v0, p6

    move v1, p5

    :goto_0
    if-lt v1, v0, :cond_2

    move-object p5, p2

    goto/16 :goto_7

    :cond_2
    aget-object v2, p6, v1

    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->isJRE12Plus:Z

    if-eqz v3, :cond_a

    if-eqz p3, :cond_3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->fs:Ljava/nio/file/FileSystem;

    filled-new-array {p3, p4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :cond_3
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->fs:Ljava/nio/file/FileSystem;

    new-array v4, p5, [Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, p2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v5, :cond_4

    :try_start_3
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v4

    goto :goto_6

    :catchall_0
    move-exception p1

    move-object p3, p2

    goto :goto_5

    :cond_4
    :try_start_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    invoke-interface {v4, p4}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    new-array v6, p5, [Ljava/nio/file/LinkOption;

    invoke-static {v5, v6}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/nio/file/Path;->getNameCount()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_5

    const/4 p3, 0x1

    invoke-interface {v4, p3}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object p3

    invoke-interface {p3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_5
    :goto_2
    :try_start_5
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v2, v5

    goto :goto_6

    :cond_6
    move-object v4, v5

    goto :goto_1

    :goto_3
    if-eqz v2, :cond_7

    :try_start_6
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    goto :goto_4

    :catchall_2
    move-exception p3

    move-object v7, p3

    move-object p3, p1

    move-object p1, v7

    goto :goto_5

    :cond_7
    :goto_4
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_5
    if-eqz p3, :cond_9

    if-eq p3, p1, :cond_8

    :try_start_7
    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    move-object p1, p3

    :cond_9
    throw p1

    :cond_a
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->fs:Ljava/nio/file/FileSystem;

    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    :goto_6
    new-array v3, p5, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->safeReadBytes(Ljava/nio/file/Path;)[B

    move-result-object v2

    if-eqz v2, :cond_b

    new-instance p5, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    invoke-direct {p5, v2, p4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[C)V

    if-eqz p3, :cond_d

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    iput-object p3, p5, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->moduleName:[C

    goto :goto_7

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    new-instance p5, Ljava/io/File;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    invoke-direct {p5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p5, p3, p4, p6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->readFromModule(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p5

    :cond_d
    :goto_7
    invoke-virtual {p0, p1, p5}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->createAnswer(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1
    :try_end_7
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    return-object p1

    :catch_0
    return-object p2
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->fs:Ljava/nio/file/FileSystem;

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->modPathString:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getModuleNames(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->findPackagesInModules(Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->selectModules(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hasModule()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->fs:Ljava/nio/file/FileSystem;

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->hasModule()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->modPathString:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->release:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->combineHashCodes(II)I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->release:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->releaseInHex:Ljava/lang/String;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ct.sym"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v2

    new-array v3, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "jar:file:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/nio/file/FileSystems;->getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->fs:Ljava/nio/file/FileSystem;
    :try_end_0
    .catch Ljava/nio/file/FileSystemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->fs:Ljava/nio/file/FileSystem;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :try_start_1
    invoke-static {v0, v2}, Ljava/nio/file/FileSystems;->newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->fs:Ljava/nio/file/FileSystem;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->fs:Ljava/nio/file/FileSystem;

    const-string v2, "/"

    new-array v3, v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->isJRE12Plus(Ljava/nio/file/Path;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->isJRE12Plus:Z

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->fs:Ljava/nio/file/FileSystem;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->releaseInHex:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->isJRE12Plus:Z

    if-eqz v4, :cond_2

    const-string v4, ""

    goto :goto_1

    :cond_2
    const-string v4, "-modules"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    new-array v3, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->modulePath:Ljava/nio/file/Path;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->modPathString:Ljava/lang/String;

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->releaseInHex:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    new-array v3, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->fs:Ljava/nio/file/FileSystem;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->releaseInHex:Ljava/lang/String;

    const-string v4, "system-modules"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->fs:Ljava/nio/file/FileSystem;

    return-void

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->release:Ljava/lang/String;

    if-eqz v1, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_2
    invoke-static {v0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v4, :cond_6

    :try_start_4
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :cond_6
    :try_start_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->sanitizedFileName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->releaseInHex:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    if-eqz v0, :cond_7

    :try_start_6
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_7
    :goto_3
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_4
    if-eqz v3, :cond_9

    if-eq v3, v0, :cond_8

    :try_start_7
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    move-object v0, v3

    :cond_9
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->fs:Ljava/nio/file/FileSystem;

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->subReleases:[Ljava/lang/String;

    :cond_a
    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "release "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->release:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not found in the system"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/eclipse/core/runtime/CoreException;

    new-instance v2, Lorg/eclipse/core/runtime/Status;

    const-string v3, "org.eclipse.jdt.core"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v2, v5, v3, v4, v0}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Classpath jrt file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->zipFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with --release option "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->release:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
