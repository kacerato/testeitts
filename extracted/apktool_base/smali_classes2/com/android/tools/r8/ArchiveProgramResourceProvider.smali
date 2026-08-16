.class public Lcom/android/tools/r8/ArchiveProgramResourceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ProgramResourceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/ArchiveProgramResourceProvider$ZipFileSupplier;,
        Lcom/android/tools/r8/ArchiveProgramResourceProvider$a;
    }
.end annotation


# static fields
.field static final synthetic d:Z = true


# instance fields
.field private final a:Lcom/android/tools/r8/origin/Origin;

.field private final b:Lcom/android/tools/r8/ArchiveProgramResourceProvider$ZipFileSupplier;

.field private final c:Ljava/util/function/Predicate;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ArchiveProgramResourceProvider$ZipFileSupplier;Ljava/util/function/Predicate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/ArchiveProgramResourceProvider;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    iput-object p1, p0, Lcom/android/tools/r8/ArchiveProgramResourceProvider;->a:Lcom/android/tools/r8/origin/Origin;

    iput-object p2, p0, Lcom/android/tools/r8/ArchiveProgramResourceProvider;->b:Lcom/android/tools/r8/ArchiveProgramResourceProvider$ZipFileSupplier;

    iput-object p3, p0, Lcom/android/tools/r8/ArchiveProgramResourceProvider;->c:Ljava/util/function/Predicate;

    return-void
.end method

.method private static synthetic a(Ljava/nio/file/Path;)Ljava/util/zip/ZipFile;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/zip/ZipFile;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/origin/ArchiveEntryOrigin;Ljava/io/InputStream;)V
    .locals 3

    .line 15
    invoke-virtual {p3}, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;->getEntryName()Ljava/lang/String;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/ArchiveProgramResourceProvider;->c:Ljava/util/function/Predicate;

    invoke-interface {v1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    sget-boolean v1, Lcom/android/tools/r8/utils/u;->a:Z

    .line 18
    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    const-string v2, ".dex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    sget-object p2, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    .line 21
    invoke-static {p4}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object p4

    const/4 v0, 0x0

    .line 22
    invoke-static {p3, p2, p4, v0}, Lcom/android/tools/r8/ProgramResource;->fromBytes(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)Lcom/android/tools/r8/ProgramResource;

    move-result-object p2

    .line 23
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 24
    :cond_0
    invoke-static {v0}, Lcom/android/tools/r8/utils/u;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 25
    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 26
    sget-object v0, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    .line 27
    invoke-static {p4}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object p4

    .line 28
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 29
    invoke-static {p3, v0, p4, p1}, Lcom/android/tools/r8/ProgramResource;->fromBytes(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)Lcom/android/tools/r8/ProgramResource;

    move-result-object p1

    .line 30
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static synthetic b(Ljava/nio/file/Path;)Ljava/util/zip/ZipFile;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/ArchiveProgramResourceProvider;->a(Ljava/nio/file/Path;)Ljava/util/zip/ZipFile;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/ArchiveProgramResourceProvider;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/origin/ArchiveEntryOrigin;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/ArchiveProgramResourceProvider;->a(Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/origin/ArchiveEntryOrigin;Ljava/io/InputStream;)V

    return-void
.end method

.method public static fromArchive(Ljava/nio/file/Path;)Lcom/android/tools/r8/ArchiveProgramResourceProvider;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/A0;

    invoke-direct {v0}, Lcom/android/tools/r8/A0;-><init>()V

    invoke-static {p0, v0}, Lcom/android/tools/r8/ArchiveProgramResourceProvider;->fromArchive(Ljava/nio/file/Path;Ljava/util/function/Predicate;)Lcom/android/tools/r8/ArchiveProgramResourceProvider;

    move-result-object p0

    return-object p0
.end method

.method public static fromArchive(Ljava/nio/file/Path;Ljava/util/function/Predicate;)Lcom/android/tools/r8/ArchiveProgramResourceProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/tools/r8/ArchiveProgramResourceProvider;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    new-instance v1, Lcom/android/tools/r8/B0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/B0;-><init>(Ljava/nio/file/Path;)V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/ArchiveProgramResourceProvider;->fromSupplier(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ArchiveProgramResourceProvider$ZipFileSupplier;Ljava/util/function/Predicate;)Lcom/android/tools/r8/ArchiveProgramResourceProvider;

    move-result-object p0

    return-object p0
.end method

.method public static fromSupplier(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ArchiveProgramResourceProvider$ZipFileSupplier;)Lcom/android/tools/r8/ArchiveProgramResourceProvider;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/A0;

    invoke-direct {v0}, Lcom/android/tools/r8/A0;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/ArchiveProgramResourceProvider;->fromSupplier(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ArchiveProgramResourceProvider$ZipFileSupplier;Ljava/util/function/Predicate;)Lcom/android/tools/r8/ArchiveProgramResourceProvider;

    move-result-object p0

    return-object p0
.end method

.method public static fromSupplier(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ArchiveProgramResourceProvider$ZipFileSupplier;Ljava/util/function/Predicate;)Lcom/android/tools/r8/ArchiveProgramResourceProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/origin/Origin;",
            "Lcom/android/tools/r8/ArchiveProgramResourceProvider$ZipFileSupplier;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/tools/r8/ArchiveProgramResourceProvider;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/android/tools/r8/ArchiveProgramResourceProvider;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/ArchiveProgramResourceProvider;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ArchiveProgramResourceProvider$ZipFileSupplier;Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method public static includeClassFileEntries(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/utils/u;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static includeClassFileOrDexEntries(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/tools/r8/utils/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ".dex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static includeDexEntries(Ljava/lang/String;)Z
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/utils/u;->a:Z

    invoke-static {p0}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ".dex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/ArchiveProgramResourceProvider$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/ArchiveProgramResourceProvider;->b:Lcom/android/tools/r8/ArchiveProgramResourceProvider$ZipFileSupplier;

    invoke-interface {v0}, Lcom/android/tools/r8/ArchiveProgramResourceProvider$ZipFileSupplier;->open()Ljava/util/zip/ZipFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    new-instance v4, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/tools/r8/ArchiveProgramResourceProvider;->a:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v4, v2, v5}, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-interface {p1, v4, v3}, Lcom/android/tools/r8/ArchiveProgramResourceProvider$a;->a(Lcom/android/tools/r8/origin/ArchiveEntryOrigin;Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_0

    .line 8
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    if-eqz v3, :cond_1

    .line 9
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 10
    :cond_1
    :goto_1
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 11
    :cond_2
    :try_start_6
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/util/zip/ZipException; {:try_start_6 .. :try_end_6} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_4

    :goto_2
    if-eqz v0, :cond_3

    .line 12
    :try_start_7
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 13
    :cond_3
    :goto_3
    throw p1
    :try_end_8
    .catch Ljava/util/zip/ZipException; {:try_start_8 .. :try_end_8} :catch_0

    .line 14
    :goto_4
    new-instance v0, Lcom/android/tools/r8/internal/If;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Zip error while reading archive"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/ArchiveProgramResourceProvider;->a:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v0, v2, v1, p1}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/tools/r8/ProgramResourceProvider;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public getProgramResources()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/ProgramResource;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/ResourceException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/tools/r8/z0;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/tools/r8/z0;-><init>(Lcom/android/tools/r8/ArchiveProgramResourceProvider;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/ArchiveProgramResourceProvider;->a(Lcom/android/tools/r8/ArchiveProgramResourceProvider$a;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/If;

    const-string v1, "Cannot create android app from an archive containing both DEX and Java-bytecode content."

    iget-object v2, p0, Lcom/android/tools/r8/ArchiveProgramResourceProvider;->a:Lcom/android/tools/r8/origin/Origin;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    return-object v1

    :goto_1
    new-instance v1, Lcom/android/tools/r8/ResourceException;

    iget-object v2, p0, Lcom/android/tools/r8/ArchiveProgramResourceProvider;->a:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/ResourceException;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/Throwable;)V

    throw v1
.end method
