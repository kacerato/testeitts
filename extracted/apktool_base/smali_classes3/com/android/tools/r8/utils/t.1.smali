.class public Lcom/android/tools/r8/utils/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/tools/r8/utils/t;->a:[B

    return-void
.end method

.method public static a(Ljava/nio/file/Path;)Lcom/android/tools/r8/retrace/PartitionMappingSupplier;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 2
    const-string p0, "METADATA"

    invoke-virtual {v0, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/android/tools/r8/retrace/PartitionMappingSupplier;->builder()Lcom/android/tools/r8/retrace/PartitionMappingSupplier$Builder;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p0}, Lcom/android/tools/r8/retrace/PartitionMappingSupplier$Builder;->setMetadata([B)Lcom/android/tools/r8/retrace/PartitionMappingSupplier$Builder;

    move-result-object p0

    new-instance v1, Lcom/android/tools/r8/utils/J;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/utils/J;-><init>(Ljava/util/zip/ZipFile;)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/retrace/PartitionMappingSupplier$NoMetadataBuilderBase;->setMappingPartitionFromKeySupplier(Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;)Lcom/android/tools/r8/retrace/PartitionMappingSupplier$NoMetadataBuilderBase;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplier$Builder;

    new-instance v1, Lcom/android/tools/r8/utils/K;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/utils/K;-><init>(Ljava/util/zip/ZipFile;)V

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->setFinishedPartitionMappingCallback(Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;)Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplier$Builder;

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/PartitionMappingSupplier$Builder;->build()Lcom/android/tools/r8/retrace/PartitionMappingSupplier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/zip/ZipFile;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    .line 12
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Lcom/android/tools/r8/retrace/RetracePartitionException;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/retrace/RetracePartitionException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public static synthetic a(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B
    .locals 0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-nez p1, :cond_0

    .line 9
    sget-object p0, Lcom/android/tools/r8/utils/t;->a:[B

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 11
    :goto_0
    new-instance p1, Lcom/android/tools/r8/retrace/RetracePartitionException;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/retrace/RetracePartitionException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
