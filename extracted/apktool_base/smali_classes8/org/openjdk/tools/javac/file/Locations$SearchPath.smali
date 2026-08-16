.class Lorg/openjdk/tools/javac/file/Locations$SearchPath;
.super Ljava/util/LinkedHashSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/Locations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchPath"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashSet<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final canonicalValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private emptyPathDefault:Ljava/nio/file/Path;

.field private expandJarClassPaths:Z

.field final synthetic this$0:Lorg/openjdk/tools/javac/file/Locations;


# direct methods
.method private constructor <init>(Lorg/openjdk/tools/javac/file/Locations;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->expandJarClassPaths:Z

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->canonicalValues:Ljava/util/Set;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->emptyPathDefault:Ljava/nio/file/Path;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;-><init>(Lorg/openjdk/tools/javac/file/Locations;)V

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/file/Locations;Ljava/nio/file/Path;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->lambda$addDirectory$0(Lorg/openjdk/tools/javac/file/Locations;Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method private addDirectory(Ljava/nio/file/Path;Z)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {p2}, Lorg/openjdk/tools/javac/file/Locations;->access$200(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object p2

    sget-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->PATH:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    const-string v1, "dir.path.element.not.found"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/nio/file/Files;->list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    new-instance v1, Lorg/openjdk/tools/javac/file/k;

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/file/k;-><init>(Lorg/openjdk/tools/javac/file/Locations;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/file/l;

    invoke-direct {v1, p0, p2}, Lorg/openjdk/tools/javac/file/l;-><init>(Lorg/openjdk/tools/javac/file/Locations$SearchPath;Z)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p1}, Ljava/util/stream/BaseStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_2

    :try_start_4
    invoke-interface {p1}, Ljava/util/stream/BaseStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method private addJarClassPath(Ljava/nio/file/Path;Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/Locations;->access$400(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/file/FSInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/FSInfo;->getJarClassPath(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addFile(Ljava/nio/file/Path;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/Locations;->access$200(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-static {p2}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getMessage(Ljava/io/IOException;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "error.reading.file"

    invoke-virtual {v0, p2, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/file/Locations$SearchPath;ZLjava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->lambda$addDirectory$1(ZLjava/nio/file/Path;)V

    return-void
.end method

.method private static synthetic lambda$addDirectory$0(Lorg/openjdk/tools/javac/file/Locations;Ljava/nio/file/Path;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/file/Locations;->access$500(Lorg/openjdk/tools/javac/file/Locations;Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$addDirectory$1(ZLjava/nio/file/Path;)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addFile(Ljava/nio/file/Path;Z)V

    return-void
.end method


# virtual methods
.method public addDirectories(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$SearchPath;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/Locations;->access$100(Lorg/openjdk/tools/javac/file/Locations;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addDirectories(Ljava/lang/String;Z)Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    move-result-object p1

    return-object p1
.end method

.method public addDirectories(Ljava/lang/String;Z)Lorg/openjdk/tools/javac/file/Locations$SearchPath;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->expandJarClassPaths:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->expandJarClassPaths:Z

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v1, p1}, Lorg/openjdk/tools/javac/file/Locations;->access$000(Lorg/openjdk/tools/javac/file/Locations;Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    .line 4
    invoke-direct {p0, v1, p2}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addDirectory(Ljava/nio/file/Path;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->expandJarClassPaths:Z

    .line 6
    throw p1

    .line 7
    :cond_0
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->expandJarClassPaths:Z

    return-object p0
.end method

.method public addFile(Ljava/nio/file/Path;Z)V
    .locals 6

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/Locations;->access$400(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/file/FSInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/FSInfo;->exists(Ljava/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {p2}, Lorg/openjdk/tools/javac/file/Locations;->access$200(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object p2

    sget-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->PATH:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    const-string v1, "path.element.not.found"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/Locations;->access$400(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/file/FSInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/FSInfo;->getCanonicalFile(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->canonicalValues:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v1}, Lorg/openjdk/tools/javac/file/Locations;->access$400(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/file/FSInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/file/FSInfo;->isFile(Ljava/nio/file/Path;)Z

    move-result v1

    const-string v2, "modules"

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".jmod"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {p1, v2}, Ljava/nio/file/Path;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v1, p1}, Lorg/openjdk/tools/javac/file/Locations;->access$500(Lorg/openjdk/tools/javac/file/Locations;Ljava/nio/file/Path;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1}, Ljava/nio/file/FileSystems;->newFileSystem(Ljava/nio/file/Path;Ljava/lang/ClassLoader;)Ljava/nio/file/FileSystem;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/file/FileSystem;->close()V

    if-eqz p2, :cond_6

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v1}, Lorg/openjdk/tools/javac/file/Locations;->access$200(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v1

    sget-object v3, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->PATH:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    const-string v4, "unexpected.archive.file"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/file/ProviderNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {p2}, Lorg/openjdk/tools/javac/file/Locations;->access$200(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object p2

    sget-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->PATH:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    const-string v1, "invalid.archive.file"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v1}, Lorg/openjdk/tools/javac/file/Locations;->access$400(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/file/FSInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/file/FSInfo;->getJarFSProvider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object p2, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {p2}, Lorg/openjdk/tools/javac/file/Locations;->access$200(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object p2

    invoke-static {p1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->NoZipfsForArchive(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    return-void

    :cond_6
    :goto_0
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->canonicalValues:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->expandJarClassPaths:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/Locations;->access$400(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/file/FSInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/FSInfo;->isFile(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1, v2}, Ljava/nio/file/Path;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addJarClassPath(Ljava/nio/file/Path;Z)V

    :cond_7
    return-void
.end method

.method public addFiles(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/file/Locations$SearchPath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lorg/openjdk/tools/javac/file/Locations$SearchPath;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/Locations;->access$100(Lorg/openjdk/tools/javac/file/Locations;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addFiles(Ljava/lang/Iterable;Z)Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    move-result-object p1

    return-object p1
.end method

.method public addFiles(Ljava/lang/Iterable;Z)Lorg/openjdk/tools/javac/file/Locations$SearchPath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/nio/file/Path;",
            ">;Z)",
            "Lorg/openjdk/tools/javac/file/Locations$SearchPath;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    .line 4
    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addFile(Ljava/nio/file/Path;Z)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addFiles(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$SearchPath;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/Locations;->access$100(Lorg/openjdk/tools/javac/file/Locations;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addFiles(Ljava/lang/String;Z)Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    move-result-object p1

    return-object p1
.end method

.method public addFiles(Ljava/lang/String;Z)Lorg/openjdk/tools/javac/file/Locations$SearchPath;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->emptyPathDefault:Ljava/nio/file/Path;

    invoke-static {v0, p1, v1}, Lorg/openjdk/tools/javac/file/Locations;->access$300(Lorg/openjdk/tools/javac/file/Locations;Ljava/lang/String;Ljava/nio/file/Path;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addFiles(Ljava/lang/Iterable;Z)Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    :cond_0
    return-object p0
.end method

.method public emptyPathDefault(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/Locations$SearchPath;
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->emptyPathDefault:Ljava/nio/file/Path;

    return-object p0
.end method

.method public expandJarClassPaths(Z)Lorg/openjdk/tools/javac/file/Locations$SearchPath;
    .locals 0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->expandJarClassPaths:Z

    return-object p0
.end method
