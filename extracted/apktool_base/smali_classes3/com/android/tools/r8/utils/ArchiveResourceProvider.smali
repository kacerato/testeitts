.class public Lcom/android/tools/r8/utils/ArchiveResourceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ProgramResourceProvider;
.implements Lcom/android/tools/r8/DataResourceProvider;


# static fields
.field static final synthetic d:Z = true


# instance fields
.field private final a:Lcom/android/tools/r8/origin/PathOrigin;

.field private final b:Lcom/android/tools/r8/shaking/P0;

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/P0;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/tools/r8/shaking/P0;->a:Ljava/nio/file/Path;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/origin/PathOrigin;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/P0;->a:Ljava/nio/file/Path;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    iput-object v0, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->a:Lcom/android/tools/r8/origin/PathOrigin;

    iput-object p1, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->b:Lcom/android/tools/r8/shaking/P0;

    iput-boolean p2, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->c:Z

    return-void
.end method

.method private a()Ljava/util/ArrayList;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->b:Lcom/android/tools/r8/shaking/P0;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/P0;->a:Ljava/nio/file/Path;

    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/zip/ZipFile;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {v2, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;

    iget-object v8, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->a:Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v7, v4, v8}, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    iget-object v8, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->b:Lcom/android/tools/r8/shaking/P0;

    invoke-virtual {v8, v4}, Lcom/android/tools/r8/shaking/P0;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-boolean v8, Lcom/android/tools/r8/utils/u;->a:Z

    invoke-static {v4}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ".dex"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-boolean v4, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->c:Z

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    invoke-static {v6}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v8

    new-instance v9, Lcom/android/tools/r8/internal/a40;

    invoke-direct {v9, v7, v4, v8, v5}, Lcom/android/tools/r8/internal/a40;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    invoke-static {v4}, Lcom/android/tools/r8/utils/u;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lcom/android/tools/r8/internal/Bl;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    invoke-static {v6}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v8

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    new-instance v9, Lcom/android/tools/r8/internal/a40;

    invoke-direct {v9, v7, v5, v8, v4}, Lcom/android/tools/r8/internal/a40;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    if-eqz v6, :cond_0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_5

    :goto_2
    if-eqz v6, :cond_3

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_4
    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/util/zip/ZipException; {:try_start_6 .. :try_end_6} :catch_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/android/tools/r8/internal/If;

    iget-object v1, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->b:Lcom/android/tools/r8/shaking/P0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create android app from an archive \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' containing both DEX and Java-bytecode content"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->a:Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v0, v2, v1, v5}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    return-object v0

    :cond_7
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_7

    :goto_5
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v0
    :try_end_8
    .catch Ljava/util/zip/ZipException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_7
    new-instance v1, Lcom/android/tools/r8/internal/If;

    iget-object v2, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->b:Lcom/android/tools/r8/shaking/P0;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Zip error while reading \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\': "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fromArchive(Ljava/nio/file/Path;Z)Lcom/android/tools/r8/utils/ArchiveResourceProvider;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;

    new-instance v1, Lcom/android/tools/r8/shaking/P0;

    sget v2, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v2, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v3

    sget-object v4, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/tools/r8/shaking/P0;-><init>(Ljava/nio/file/Path;Ljava/util/List;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/utils/ArchiveResourceProvider;-><init>(Lcom/android/tools/r8/shaking/P0;Z)V

    return-object v0
.end method


# virtual methods
.method public accept(Lcom/android/tools/r8/DataResourceProvider$Visitor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/ResourceException;
        }
    .end annotation

    const-string v0, "\': "

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->b:Lcom/android/tools/r8/shaking/P0;

    .line 2
    iget-object v1, v1, Lcom/android/tools/r8/shaking/P0;->a:Ljava/nio/file/Path;

    .line 3
    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/zip/ZipFile;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 7
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 8
    iget-object v5, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->b:Lcom/android/tools/r8/shaking/P0;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/shaking/P0;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9
    invoke-static {v4}, Lcom/android/tools/r8/utils/u;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 10
    invoke-static {v4}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11
    const-string v5, ".dex"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 12
    iget-boolean v4, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->c:Z

    if-nez v4, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 14
    invoke-static {v1, v3}, Lcom/android/tools/r8/DataDirectoryResource;->fromZip(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Lcom/android/tools/r8/DataDirectoryResource;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/tools/r8/DataResourceProvider$Visitor;->visit(Lcom/android/tools/r8/DataDirectoryResource;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {v1, v3}, Lcom/android/tools/r8/DataEntryResource;->fromZip(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Lcom/android/tools/r8/DataEntryResource;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/tools/r8/DataResourceProvider$Visitor;->visit(Lcom/android/tools/r8/DataEntryResource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 16
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    .line 17
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/util/zip/ZipException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 18
    :goto_3
    new-instance v1, Lcom/android/tools/r8/ResourceException;

    iget-object v2, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->a:Lcom/android/tools/r8/origin/PathOrigin;

    new-instance v3, Lcom/android/tools/r8/internal/If;

    iget-object v4, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->b:Lcom/android/tools/r8/shaking/P0;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "I/O exception while reading \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/ResourceException;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/Throwable;)V

    throw v1

    .line 20
    :goto_4
    new-instance v1, Lcom/android/tools/r8/ResourceException;

    iget-object v2, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->a:Lcom/android/tools/r8/origin/PathOrigin;

    new-instance v3, Lcom/android/tools/r8/internal/If;

    iget-object v4, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->b:Lcom/android/tools/r8/shaking/P0;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Zip error while reading \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/ResourceException;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public accept(Ljava/util/function/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/ProgramResource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/ResourceException;
        }
    .end annotation

    const-string v0, "\': "

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->b:Lcom/android/tools/r8/shaking/P0;

    .line 23
    iget-object v1, v1, Lcom/android/tools/r8/shaking/P0;->a:Ljava/nio/file/Path;

    .line 24
    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/zip/ZipFile;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 27
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 28
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 29
    iget-object v5, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->b:Lcom/android/tools/r8/shaking/P0;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/shaking/P0;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 30
    invoke-static {v4}, Lcom/android/tools/r8/utils/u;->a(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, ".dex"

    if-nez v5, :cond_1

    .line 31
    :try_start_2
    invoke-static {v4}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 33
    iget-boolean v5, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->c:Z

    if-nez v5, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    .line 34
    :cond_1
    :goto_1
    new-instance v5, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;

    iget-object v7, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->a:Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v5, v4, v7}, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 35
    invoke-virtual {v1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    :try_start_3
    invoke-static {v4}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 37
    invoke-virtual {v7, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 38
    sget-object v4, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    .line 39
    invoke-static {v3}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v6

    .line 40
    new-instance v7, Lcom/android/tools/r8/internal/a40;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v4, v6, v8}, Lcom/android/tools/r8/internal/a40;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)V

    .line 41
    invoke-interface {p1, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 42
    :cond_2
    invoke-static {v4}, Lcom/android/tools/r8/utils/u;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 43
    sget-object v6, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    .line 44
    invoke-static {v3}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 45
    invoke-static {v4}, Lcom/android/tools/r8/internal/Bl;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    .line 46
    new-instance v8, Lcom/android/tools/r8/internal/a40;

    invoke-direct {v8, v5, v6, v7, v4}, Lcom/android/tools/r8/internal/a40;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)V

    .line 47
    invoke-interface {p1, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    :goto_2
    if-eqz v3, :cond_0

    .line 48
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :goto_3
    if-eqz v3, :cond_4

    .line 49
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v2

    :try_start_6
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 50
    :cond_4
    :goto_4
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 51
    :cond_5
    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/util/zip/ZipException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_7

    :catch_1
    move-exception p1

    goto :goto_8

    .line 52
    :goto_5
    :try_start_8
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v1

    :try_start_9
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p1
    :try_end_9
    .catch Ljava/util/zip/ZipException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 53
    :goto_7
    new-instance v1, Lcom/android/tools/r8/ResourceException;

    iget-object v2, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->a:Lcom/android/tools/r8/origin/PathOrigin;

    new-instance v3, Lcom/android/tools/r8/internal/If;

    iget-object v4, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->b:Lcom/android/tools/r8/shaking/P0;

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "I/O exception while reading \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/ResourceException;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/Throwable;)V

    throw v1

    .line 55
    :goto_8
    new-instance v1, Lcom/android/tools/r8/ResourceException;

    iget-object v2, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->a:Lcom/android/tools/r8/origin/PathOrigin;

    new-instance v3, Lcom/android/tools/r8/internal/If;

    iget-object v4, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->b:Lcom/android/tools/r8/shaking/P0;

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Zip error while reading \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/ResourceException;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/Throwable;)V

    throw v1
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

.method public getDataResourceProvider()Lcom/android/tools/r8/DataResourceProvider;
    .locals 0

    return-object p0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->a:Lcom/android/tools/r8/origin/PathOrigin;

    return-object v0
.end method

.method public getProgramResources()Ljava/util/Collection;
    .locals 3
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
    invoke-direct {p0}, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->a()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/tools/r8/ResourceException;

    iget-object v2, p0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->a:Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/ResourceException;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/Throwable;)V

    throw v1
.end method
