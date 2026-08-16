.class public Lcom/android/tools/r8/JdkClassFileProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ClassFileResourceProvider;
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic f:Z = true


# instance fields
.field private final a:Lcom/android/tools/r8/origin/Origin;

.field private final b:Ljava/util/HashSet;

.field private final c:Ljava/util/HashMap;

.field private final d:Ljava/net/URLClassLoader;

.field private e:Ljava/nio/file/FileSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/JdkClassFileProvider;->b:Ljava/util/HashSet;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/JdkClassFileProvider;->c:Ljava/util/HashMap;

    .line 4
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/JdkClassFileProvider;->a:Lcom/android/tools/r8/origin/Origin;

    .line 5
    const-string v0, "jrt:/"

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/nio/file/FileSystems;->newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/JdkClassFileProvider;->a(Ljava/nio/file/FileSystem;)V

    return-void
.end method

.method private constructor <init>(Ljava/nio/file/Path;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/JdkClassFileProvider;->b:Ljava/util/HashSet;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/JdkClassFileProvider;->c:Ljava/util/HashMap;

    .line 9
    new-instance v0, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    iput-object v0, p0, Lcom/android/tools/r8/JdkClassFileProvider;->a:Lcom/android/tools/r8/origin/Origin;

    .line 10
    const-string v0, "lib"

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const-string v1, "jrt-fs.jar"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 11
    sget-boolean v1, Lcom/android/tools/r8/JdkClassFileProvider;->f:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_1
    :goto_0
    new-instance v1, Ljava/net/URLClassLoader;

    invoke-interface {v0}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    filled-new-array {v0}, [Ljava/net/URL;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;)V

    iput-object v1, p0, Lcom/android/tools/r8/JdkClassFileProvider;->d:Ljava/net/URLClassLoader;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "java.home"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "jrt:/"

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-static {p1, v0, v1}, Ljava/nio/file/FileSystems;->newFileSystem(Ljava/net/URI;Ljava/util/Map;Ljava/lang/ClassLoader;)Ljava/nio/file/FileSystem;

    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Lcom/android/tools/r8/JdkClassFileProvider;->a(Ljava/nio/file/FileSystem;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/JdkClassFileProvider;Ljava/nio/file/Path;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/JdkClassFileProvider;->a(Ljava/nio/file/Path;)V

    return-void
.end method

.method private a(Ljava/nio/file/FileSystem;)V
    .locals 3

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/JdkClassFileProvider;->e:Ljava/nio/file/FileSystem;

    const/4 v0, 0x0

    .line 3
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "/modules"

    invoke-virtual {p1, v2, v1}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    new-array v0, v0, [Ljava/nio/file/FileVisitOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/r2;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/r2;-><init>(Lcom/android/tools/r8/JdkClassFileProvider;)V

    .line 4
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private a(Ljava/nio/file/Path;)V
    .locals 3

    .line 5
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ww;->b(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->w(Ljava/lang/String;)Lcom/android/tools/r8/internal/Al;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/JdkClassFileProvider;->c:Ljava/util/HashMap;

    .line 8
    iget-object v1, p1, Lcom/android/tools/r8/internal/Al;->b:Ljava/lang/String;

    .line 9
    iget-object v2, p1, Lcom/android/tools/r8/internal/Al;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/JdkClassFileProvider;->b:Ljava/util/HashSet;

    .line 12
    iget-object p1, p1, Lcom/android/tools/r8/internal/Al;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static fromJavaRuntimeJar(Ljava/nio/file/Path;)Lcom/android/tools/r8/ClassFileResourceProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/ArchiveClassFileProvider;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/ArchiveClassFileProvider;-><init>(Ljava/nio/file/Path;)V

    return-object v0
.end method

.method public static fromJdkHome(Ljava/nio/file/Path;)Lcom/android/tools/r8/ClassFileResourceProvider;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "lib"

    invoke-interface {p0, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    const-string v2, "jrt-fs.jar"

    invoke-interface {v1, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/tools/r8/JdkClassFileProvider;->fromSystemModulesJdk(Ljava/nio/file/Path;)Lcom/android/tools/r8/ClassFileResourceProvider;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "jre"

    invoke-interface {p0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    const-string v3, "rt.jar"

    invoke-interface {v1, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v4, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Lcom/android/tools/r8/JdkClassFileProvider;->fromJavaRuntimeJar(Ljava/nio/file/Path;)Lcom/android/tools/r8/ClassFileResourceProvider;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v1, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/android/tools/r8/JdkClassFileProvider;->fromJavaRuntimeJar(Ljava/nio/file/Path;)Lcom/android/tools/r8/ClassFileResourceProvider;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not look like a Java home"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromSystemJdk()Lcom/android/tools/r8/ClassFileResourceProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/JdkClassFileProvider;

    invoke-direct {v0}, Lcom/android/tools/r8/JdkClassFileProvider;-><init>()V

    return-object v0
.end method

.method public static fromSystemModulesJdk(Ljava/nio/file/Path;)Lcom/android/tools/r8/ClassFileResourceProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "lib"

    invoke-interface {p0, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const-string v1, "jrt-fs.jar"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/tools/r8/JdkClassFileProvider;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/JdkClassFileProvider;-><init>(Ljava/nio/file/Path;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/nio/file/NoSuchFileException;

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/JdkClassFileProvider;->e:Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->close()V

    iget-object v0, p0, Lcom/android/tools/r8/JdkClassFileProvider;->d:Ljava/net/URLClassLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/URLClassLoader;->close()V

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/tools/r8/JdkClassFileProvider;->close()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public bridge synthetic finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/tools/r8/ClassFileResourceProvider;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public getClassDescriptors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/JdkClassFileProvider;->b:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProgramResource(Ljava/lang/String;)Lcom/android/tools/r8/ProgramResource;
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/JdkClassFileProvider;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    sget-object v2, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    iget-object v3, p0, Lcom/android/tools/r8/JdkClassFileProvider;->e:Ljava/nio/file/FileSystem;

    const-string v4, "modules"

    iget-object v5, p0, Lcom/android/tools/r8/JdkClassFileProvider;->c:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v3

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/android/tools/r8/ProgramResource;->fromBytes(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)Lcom/android/tools/r8/ProgramResource;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance v0, Lcom/android/tools/r8/internal/If;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/tools/r8/JdkClassFileProvider;->a:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v0, v2, p1, v1}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
