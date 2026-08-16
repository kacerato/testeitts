.class public Lcom/android/tools/r8/ArchiveClassFileProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ClassFileResourceProvider;
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic f:Z = true


# instance fields
.field private final a:Ljava/nio/file/Path;

.field private final b:Lcom/android/tools/r8/origin/PathOrigin;

.field private final c:Ljava/util/function/Predicate;

.field private d:Ljava/util/zip/ZipFile;

.field private e:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/tools/r8/y0;

    invoke-direct {v0}, Lcom/android/tools/r8/y0;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/ArchiveClassFileProvider;-><init>(Ljava/nio/file/Path;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->d:Ljava/util/zip/ZipFile;

    .line 4
    iput-object v0, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->e:Ljava/util/HashSet;

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/ArchiveClassFileProvider;->f:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->a:Ljava/nio/file/Path;

    .line 7
    iput-object p2, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->c:Ljava/util/function/Predicate;

    .line 8
    new-instance p2, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    iput-object p2, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->b:Lcom/android/tools/r8/origin/PathOrigin;

    .line 9
    invoke-direct {p0}, Lcom/android/tools/r8/ArchiveClassFileProvider;->c()Ljava/util/zip/ZipFile;

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/ArchiveClassFileProvider;->c()Ljava/util/zip/ZipFile;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v1}, Lcom/android/tools/r8/a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".class"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    return-object p1
.end method

.method private c()Ljava/util/zip/ZipFile;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->d:Ljava/util/zip/ZipFile;

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/android/tools/r8/ArchiveClassFileProvider;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->d:Ljava/util/zip/ZipFile;

    return-object v0
.end method

.method private static synthetic c(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method private d()V
    .locals 3

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/ArchiveClassFileProvider;->f:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->d:Ljava/util/zip/ZipFile;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->e:Ljava/util/HashSet;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4
    :cond_3
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->a:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/zip/ZipFile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->d:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->e:Ljava/util/HashSet;

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->d:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 7
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 9
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/android/tools/r8/utils/u;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->c:Ljava/util/function/Predicate;

    invoke-interface {v2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->e:Ljava/util/HashSet;

    invoke-static {v1}, Lcom/android/tools/r8/internal/Bl;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-void

    :catch_0
    move-exception v0

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->a:Ljava/nio/file/Path;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 13
    new-instance v0, Ljava/nio/file/NoSuchFileException;

    iget-object v1, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->a:Ljava/nio/file/Path;

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_6
    new-instance v1, Ljava/io/UncheckedIOException;

    iget-object v2, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->a:Ljava/nio/file/Path;

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v1
.end method

.method public static synthetic d(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/tools/r8/ArchiveClassFileProvider;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->d:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->d:Ljava/util/zip/ZipFile;

    iput-object v0, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->e:Ljava/util/HashSet;

    return-void
.end method

.method public finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/tools/r8/ArchiveClassFileProvider;->close()V

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

    invoke-direct {p0}, Lcom/android/tools/r8/ArchiveClassFileProvider;->c()Ljava/util/zip/ZipFile;

    iget-object v0, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->e:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProgramResource(Ljava/lang/String;)Lcom/android/tools/r8/ProgramResource;
    .locals 6

    invoke-direct {p0}, Lcom/android/tools/r8/ArchiveClassFileProvider;->c()Ljava/util/zip/ZipFile;

    iget-object v0, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->e:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/tools/r8/ArchiveClassFileProvider;->c()Ljava/util/zip/ZipFile;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/ArchiveClassFileProvider;->b(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->b:Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v3, v2, v4}, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    sget-object v2, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    invoke-static {v0}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v3, v2, v4, v5}, Lcom/android/tools/r8/ProgramResource;->fromBytes(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)Lcom/android/tools/r8/ProgramResource;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    new-instance v0, Lcom/android/tools/r8/internal/If;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/tools/r8/ArchiveClassFileProvider;->b:Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v0, v2, p1, v1}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
