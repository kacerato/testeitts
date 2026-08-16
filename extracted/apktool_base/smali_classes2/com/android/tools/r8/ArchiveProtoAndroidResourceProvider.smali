.class public Lcom/android/tools/r8/ArchiveProtoAndroidResourceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/AndroidResourceProvider;


# instance fields
.field private final a:Ljava/nio/file/Path;

.field private final b:Lcom/android/tools/r8/origin/Origin;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/ArchiveProtoAndroidResourceProvider;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/origin/Origin;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/ArchiveProtoAndroidResourceProvider;->a:Ljava/nio/file/Path;

    .line 3
    iput-object p2, p0, Lcom/android/tools/r8/ArchiveProtoAndroidResourceProvider;->b:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method


# virtual methods
.method public bridge synthetic finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/tools/r8/AndroidResourceProvider;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public getAndroidResources()Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/AndroidResourceInput;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/ResourceException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/ArchiveProtoAndroidResourceProvider;->a:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/zip/ZipFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AndroidManifest.xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/tools/r8/AndroidResourceInput$Kind;->MANIFEST:Lcom/android/tools/r8/AndroidResourceInput$Kind;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    const-string v5, "resources.pb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/tools/r8/AndroidResourceInput$Kind;->RESOURCE_TABLE:Lcom/android/tools/r8/AndroidResourceInput$Kind;

    goto :goto_1

    :cond_2
    const-string v5, "res/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/android/tools/r8/AndroidResourceInput$Kind;->UNKNOWN:Lcom/android/tools/r8/AndroidResourceInput$Kind;

    goto :goto_1

    :cond_3
    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/tools/r8/AndroidResourceInput$Kind;->XML_FILE:Lcom/android/tools/r8/AndroidResourceInput$Kind;

    goto :goto_1

    :cond_4
    sget-object v5, Lcom/android/tools/r8/AndroidResourceInput$Kind;->RES_FOLDER_FILE:Lcom/android/tools/r8/AndroidResourceInput$Kind;

    :goto_1
    new-instance v6, Lcom/android/tools/r8/b;

    invoke-virtual {v0, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v7

    new-instance v8, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;

    iget-object v9, p0, Lcom/android/tools/r8/ArchiveProtoAndroidResourceProvider;->b:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v8, v4, v9}, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-direct {v6, v4, v5, v7, v8}, Lcom/android/tools/r8/b;-><init>(Ljava/lang/String;Lcom/android/tools/r8/AndroidResourceInput$Kind;[BLcom/android/tools/r8/origin/ArchiveEntryOrigin;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/tools/r8/AndroidResourceInput$Kind;->XML_FILE:Lcom/android/tools/r8/AndroidResourceInput$Kind;

    if-ne v5, v6, :cond_0

    const-string v5, "res/raw/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/android/tools/r8/b;

    sget-object v6, Lcom/android/tools/r8/AndroidResourceInput$Kind;->KEEP_RULE_FILE:Lcom/android/tools/r8/AndroidResourceInput$Kind;

    invoke-virtual {v0, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    new-instance v7, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;

    iget-object v8, p0, Lcom/android/tools/r8/ArchiveProtoAndroidResourceProvider;->b:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v7, v4, v8}, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-direct {v5, v4, v6, v3, v7}, Lcom/android/tools/r8/b;-><init>(Ljava/lang/String;Lcom/android/tools/r8/AndroidResourceInput$Kind;[BLcom/android/tools/r8/origin/ArchiveEntryOrigin;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_4

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    new-instance v1, Lcom/android/tools/r8/ResourceException;

    iget-object v2, p0, Lcom/android/tools/r8/ArchiveProtoAndroidResourceProvider;->b:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/ResourceException;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/Throwable;)V

    throw v1
.end method
