.class public final Lcom/android/tools/r8/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ProgramResourceProvider;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/origin/ArchiveEntryOrigin;

.field public final b:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/f;->c:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;

    new-instance v1, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    const-string v2, "classes.jar"

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/f;->a:Lcom/android/tools/r8/origin/ArchiveEntryOrigin;

    iput-object p1, p0, Lcom/android/tools/r8/internal/f;->b:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/zip/ZipInputStream;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/android/tools/r8/utils/u;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v2, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;

    iget-object v3, p0, Lcom/android/tools/r8/internal/f;->a:Lcom/android/tools/r8/origin/ArchiveEntryOrigin;

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 6
    invoke-static {v1}, Lcom/android/tools/r8/internal/Bl;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    sget-object v3, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    .line 8
    invoke-static {p1}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 9
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 10
    new-instance v5, Lcom/android/tools/r8/internal/a40;

    invoke-direct {v5, v2, v3, v4, v1}, Lcom/android/tools/r8/internal/a40;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)V

    .line 11
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final a()Ljava/util/List;
    .locals 6

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/f;->b:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/zip/ZipFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 16
    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 18
    const-string v4, "classes.jar"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/f;->a(Ljava/util/zip/ZipInputStream;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 21
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_4

    .line 22
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception v2

    .line 23
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_7
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_1
    if-eqz v3, :cond_0

    .line 24
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    :goto_2
    if-eqz v3, :cond_2

    .line 25
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v2

    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_3
    const/4 v2, 0x0

    .line 26
    :cond_4
    :goto_4
    :try_start_b
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/util/zip/ZipException; {:try_start_b .. :try_end_b} :catch_0

    if-nez v2, :cond_5

    .line 27
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_5
    return-object v2

    :catch_0
    move-exception v0

    goto :goto_7

    .line 28
    :goto_5
    :try_start_c
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    :try_start_d
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v1
    :try_end_d
    .catch Ljava/util/zip/ZipException; {:try_start_d .. :try_end_d} :catch_0

    .line 29
    :goto_7
    new-instance v1, Lcom/android/tools/r8/internal/If;

    iget-object v2, p0, Lcom/android/tools/r8/internal/f;->b:Ljava/nio/file/Path;

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

.method public final getDataResourceProvider()Lcom/android/tools/r8/DataResourceProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getProgramResources()Ljava/util/Collection;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/f;->a()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/tools/r8/ResourceException;

    iget-object v2, p0, Lcom/android/tools/r8/internal/f;->a:Lcom/android/tools/r8/origin/ArchiveEntryOrigin;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/ResourceException;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/Throwable;)V

    throw v1
.end method
