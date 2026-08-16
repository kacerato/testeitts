.class public Lcom/android/tools/r8/internal/ZI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ClassFileResourceProvider;
.implements Lcom/android/tools/r8/DataResourceProvider;
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Ljava/nio/file/Path;

.field public final b:Lcom/android/tools/r8/origin/PathOrigin;

.field public final c:Ljava/util/HashSet;

.field public d:Ljava/util/zip/ZipFile;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/a41;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/a41;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/internal/ZI;-><init>(Ljava/nio/file/Path;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/util/function/Predicate;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ZI;->c:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/tools/r8/internal/ZI;->d:Ljava/util/zip/ZipFile;

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/ZI;->e:Z

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
    iput-object p1, p0, Lcom/android/tools/r8/internal/ZI;->a:Ljava/nio/file/Path;

    .line 7
    new-instance v0, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ZI;->b:Lcom/android/tools/r8/origin/PathOrigin;

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ZI;->c()Ljava/util/zip/ZipFile;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    .line 9
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 11
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/android/tools/r8/utils/u;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/internal/ZI;->c:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/DataResourceProvider$Visitor;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V
    .locals 1

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/utils/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/android/tools/r8/DataDirectoryResource;->fromZip(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Lcom/android/tools/r8/DataDirectoryResource;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/DataResourceProvider$Visitor;->visit(Lcom/android/tools/r8/DataDirectoryResource;)V

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/tools/r8/DataEntryResource;->fromZip(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Lcom/android/tools/r8/DataEntryResource;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/DataResourceProvider$Visitor;->visit(Lcom/android/tools/r8/DataEntryResource;)V

    :cond_1
    return-void
.end method

.method public static synthetic c(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final accept(Lcom/android/tools/r8/DataResourceProvider$Visitor;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ZI;->a:Ljava/nio/file/Path;

    new-instance v1, Lcom/android/tools/r8/internal/Z31;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Z31;-><init>(Lcom/android/tools/r8/DataResourceProvider$Visitor;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/utils/u;->a(Ljava/nio/file/Path;Lcom/android/tools/r8/utils/v;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/android/tools/r8/ResourceException;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ZI;->b:Lcom/android/tools/r8/origin/PathOrigin;

    new-instance v2, Lcom/android/tools/r8/internal/If;

    iget-object v3, p0, Lcom/android/tools/r8/internal/ZI;->a:Ljava/nio/file/Path;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "I/O exception while reading \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\': "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/ResourceException;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ZI;->c()Ljava/util/zip/ZipFile;

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

.method public final c()Ljava/util/zip/ZipFile;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/ZI;->d:Ljava/util/zip/ZipFile;

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ZI;->a:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/zip/ZipFile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ZI;->d:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/ZI;->a:Ljava/nio/file/Path;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    new-instance v0, Ljava/nio/file/NoSuchFileException;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ZI;->a:Ljava/nio/file/Path;

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_0
    throw v0

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ZI;->d:Ljava/util/zip/ZipFile;

    return-object v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ZI;->d:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ZI;->d:Ljava/util/zip/ZipFile;

    :cond_0
    return-void
.end method

.method public final finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ZI;->close()V

    return-void
.end method

.method public final getClassDescriptors()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ZI;->c:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getDataResourceProvider()Lcom/android/tools/r8/DataResourceProvider;
    .locals 0

    return-object p0
.end method

.method public final getProgramResource(Ljava/lang/String;)Lcom/android/tools/r8/ProgramResource;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/ZI;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ZI;->b(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ZI;->c()Ljava/util/zip/ZipFile;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/tools/r8/internal/ZI;->b:Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v3, v0, v4}, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    sget-object v0, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    invoke-static {v2}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v3, v0, v4, v5}, Lcom/android/tools/r8/ProgramResource;->fromBytes(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)Lcom/android/tools/r8/ProgramResource;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
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

    iget-object v2, p0, Lcom/android/tools/r8/internal/ZI;->b:Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v0, v2, p1, v1}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
