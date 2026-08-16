.class public final Lcom/android/tools/r8/internal/i3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/g50;


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final a:Ljava/nio/file/Path;

.field public final b:Lcom/android/tools/r8/origin/PathOrigin;

.field public c:Ljava/util/zip/ZipOutputStream;

.field public d:Z

.field public e:I

.field public f:I

.field public final g:Ljava/util/HashMap;

.field public final h:Ljava/util/TreeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/i3;->c:Ljava/util/zip/ZipOutputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/i3;->d:Z

    iput v0, p0, Lcom/android/tools/r8/internal/i3;->e:I

    iput v0, p0, Lcom/android/tools/r8/internal/i3;->f:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/i3;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/i3;->h:Ljava/util/TreeSet;

    iput-object p1, p0, Lcom/android/tools/r8/internal/i3;->a:Ljava/nio/file/Path;

    new-instance v0, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/i3;->b:Lcom/android/tools/r8/origin/PathOrigin;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/zip/ZipOutputStream;
    .locals 6

    monitor-enter p0

    .line 17
    :try_start_0
    sget-boolean v0, Lcom/android/tools/r8/internal/i3;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/i3;->d:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/i3;->c:Ljava/util/zip/ZipOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return-object v0

    .line 19
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/android/tools/r8/internal/i3;->a:Ljava/nio/file/Path;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    sget-object v4, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 20
    invoke-static {v2, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/i3;->c:Ljava/util/zip/ZipOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized a(ILjava/lang/String;Lcom/android/tools/r8/ByteDataView;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 3

    monitor-enter p0

    .line 70
    :try_start_0
    iget v0, p0, Lcom/android/tools/r8/internal/i3;->f:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 71
    invoke-virtual {p0, p2, p3, p4, v1}, Lcom/android/tools/r8/internal/i3;->a(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;Lcom/android/tools/r8/DiagnosticsHandler;Z)V

    .line 72
    iget p1, p0, Lcom/android/tools/r8/internal/i3;->f:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/tools/r8/internal/i3;->f:I

    .line 73
    iget-object p2, p0, Lcom/android/tools/r8/internal/i3;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/h3;

    :goto_0
    if-eqz p1, :cond_0

    .line 74
    iget-object p2, p1, Lcom/android/tools/r8/internal/h3;->b:Ljava/lang/String;

    iget-object p3, p1, Lcom/android/tools/r8/internal/h3;->c:Lcom/android/tools/r8/ByteDataView;

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/h3;->e:Z

    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/tools/r8/internal/i3;->a(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;Lcom/android/tools/r8/DiagnosticsHandler;Z)V

    .line 75
    iget p1, p0, Lcom/android/tools/r8/internal/i3;->f:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/tools/r8/internal/i3;->f:I

    .line 76
    iget-object p2, p0, Lcom/android/tools/r8/internal/i3;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/h3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    .line 77
    :cond_1
    :try_start_1
    iget-object p4, p0, Lcom/android/tools/r8/internal/i3;->g:Ljava/util/HashMap;

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/h3;

    invoke-virtual {p3}, Lcom/android/tools/r8/ByteDataView;->copyByteData()[B

    move-result-object p3

    invoke-static {p3}, Lcom/android/tools/r8/ByteDataView;->of([B)Lcom/android/tools/r8/ByteDataView;

    move-result-object p3

    const/4 v2, 0x0

    invoke-direct {v0, p2, p3, v2, v1}, Lcom/android/tools/r8/internal/h3;-><init>(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;ZZ)V

    .line 79
    invoke-virtual {p4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/android/tools/r8/ByteDataView;Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    monitor-enter p0

    const/4 p3, 0x1

    .line 44
    :try_start_0
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/tools/r8/internal/i3;->a(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 7

    const/4 v0, 0x1

    monitor-enter p0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/android/tools/r8/internal/i3;->i:Z

    if-nez v1, :cond_1

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/i3;->d:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 2
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/i3;->e:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/tools/r8/internal/i3;->e:I

    if-nez v2, :cond_b

    if-nez v1, :cond_3

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/i3;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/i3;->h:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/h3;

    .line 5
    iget-boolean v3, v2, Lcom/android/tools/r8/internal/h3;->d:Z

    if-eqz v3, :cond_6

    .line 6
    sget-boolean v3, Lcom/android/tools/r8/internal/i3;->i:Z

    if-nez v3, :cond_5

    iget-object v3, v2, Lcom/android/tools/r8/internal/h3;->c:Lcom/android/tools/r8/ByteDataView;

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_5
    :goto_3
    iget-object v2, v2, Lcom/android/tools/r8/internal/h3;->b:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/internal/i3;->b(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    goto :goto_2

    .line 8
    :cond_6
    sget-boolean v3, Lcom/android/tools/r8/internal/i3;->i:Z

    if-nez v3, :cond_8

    iget-object v3, v2, Lcom/android/tools/r8/internal/h3;->c:Lcom/android/tools/r8/ByteDataView;

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_8
    :goto_4
    iget-object v3, v2, Lcom/android/tools/r8/internal/h3;->b:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/tools/r8/internal/h3;->c:Lcom/android/tools/r8/ByteDataView;

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/h3;->e:Z

    invoke-virtual {p0, v3, v4, p1, v2}, Lcom/android/tools/r8/internal/i3;->a(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;Lcom/android/tools/r8/DiagnosticsHandler;Z)V

    goto :goto_2

    .line 10
    :cond_9
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/i3;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/i3;->c:Ljava/util/zip/ZipOutputStream;

    if-eqz v1, :cond_a

    goto :goto_5

    .line 12
    :cond_a
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lcom/android/tools/r8/internal/i3;->a:Ljava/nio/file/Path;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/nio/file/OpenOption;

    sget-object v5, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    aput-object v5, v4, v0

    .line 13
    invoke-static {v3, v4}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/i3;->c:Ljava/util/zip/ZipOutputStream;

    .line 14
    :goto_5
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/tools/r8/internal/i3;->c:Ljava/util/zip/ZipOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 16
    :try_start_2
    new-instance v1, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    iget-object v2, p0, Lcom/android/tools/r8/internal/i3;->b:Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-interface {p1, v1}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    monitor-exit p0

    return-void

    :goto_6
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;Lcom/android/tools/r8/DiagnosticsHandler;Z)V
    .locals 7

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i3;->a()Ljava/util/zip/ZipOutputStream;

    move-result-object v0

    .line 50
    sget-boolean v1, Lcom/android/tools/r8/internal/y2;->b:Z

    .line 51
    const-string v1, "resources/new_api_database.ser"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const/16 p4, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x0

    .line 52
    :goto_1
    sget-boolean v1, Lcom/android/tools/r8/utils/u;->a:Z

    .line 53
    invoke-virtual {p2}, Lcom/android/tools/r8/ByteDataView;->getBuffer()[B

    move-result-object v1

    .line 54
    invoke-virtual {p2}, Lcom/android/tools/r8/ByteDataView;->getOffset()I

    move-result v2

    .line 55
    invoke-virtual {p2}, Lcom/android/tools/r8/ByteDataView;->getLength()I

    move-result p2

    .line 56
    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 57
    invoke-virtual {v3, v1, v2, p2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 58
    new-instance v4, Ljava/util/zip/ZipEntry;

    invoke-direct {v4, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v4, p4}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    int-to-long v5, p2

    .line 60
    invoke-virtual {v4, v5, v6}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 61
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    const-wide/16 v5, 0x0

    .line 62
    invoke-virtual {v4, v5, v6}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 63
    invoke-virtual {v0, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 64
    invoke-virtual {v0, v1, v2, p2}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 65
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 66
    new-instance p2, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    iget-object p4, p0, Lcom/android/tools/r8/internal/i3;->b:Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {p2, p1, p4}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    .line 67
    instance-of p4, p1, Ljava/util/zip/ZipException;

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p4, "duplicate entry"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 68
    invoke-interface {p3, p2}, Lcom/android/tools/r8/DiagnosticsHandler;->warning(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_2

    .line 69
    :cond_2
    invoke-interface {p3, p2}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    :goto_2
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;Z)V
    .locals 3

    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/i3;->h:Ljava/util/TreeSet;

    .line 46
    invoke-virtual {p2}, Lcom/android/tools/r8/ByteDataView;->copyByteData()[B

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/ByteDataView;->of([B)Lcom/android/tools/r8/ByteDataView;

    move-result-object p2

    .line 47
    new-instance v1, Lcom/android/tools/r8/internal/h3;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2, p3}, Lcom/android/tools/r8/internal/h3;-><init>(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;ZZ)V

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Lcom/android/tools/r8/DataEntryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 6

    .line 24
    :try_start_0
    invoke-interface {p2}, Lcom/android/tools/r8/DataEntryResource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    invoke-static {v0}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/ByteDataView;->of([B)Lcom/android/tools/r8/ByteDataView;

    move-result-object v1

    .line 26
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    :try_start_2
    sget-boolean v2, Lcom/android/tools/r8/internal/y2;->b:Z

    .line 28
    const-string v2, "resources/new_api_database.ser"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {p0, p1, v1, p3, v3}, Lcom/android/tools/r8/internal/i3;->a(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;Lcom/android/tools/r8/DiagnosticsHandler;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/i3;->h:Ljava/util/TreeSet;

    .line 31
    new-instance v4, Lcom/android/tools/r8/internal/h3;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v1, v5, v3}, Lcom/android/tools/r8/internal/h3;-><init>(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;ZZ)V

    .line 32
    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 33
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    .line 35
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_1

    .line 36
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_7
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_7 .. :try_end_7} :catch_0

    .line 37
    :goto_3
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open input: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-interface {p2}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 39
    invoke-interface {p3, v0}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_5

    .line 40
    :goto_4
    new-instance p2, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    iget-object v0, p0, Lcom/android/tools/r8/internal/i3;->b:Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    .line 41
    instance-of v0, p1, Ljava/util/zip/ZipException;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "duplicate entry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 42
    invoke-interface {p3, p2}, Lcom/android/tools/r8/DiagnosticsHandler;->warning(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_5

    .line 43
    :cond_2
    invoke-interface {p3, p2}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    :goto_5
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 3

    monitor-enter p0

    .line 21
    :try_start_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/i3;->h:Ljava/util/TreeSet;

    .line 22
    new-instance v0, Lcom/android/tools/r8/internal/h3;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2, v2}, Lcom/android/tools/r8/internal/h3;-><init>(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;ZZ)V

    .line 23
    invoke-virtual {p2, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setTime(J)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i3;->a()Ljava/util/zip/ZipOutputStream;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    iget-object v1, p0, Lcom/android/tools/r8/internal/i3;->b:Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    instance-of v1, p1, Ljava/util/zip/ZipException;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "duplicate entry"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p2, v0}, Lcom/android/tools/r8/DiagnosticsHandler;->warning(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2, v0}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final getOrigin()Lcom/android/tools/r8/origin/PathOrigin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/i3;->b:Lcom/android/tools/r8/origin/PathOrigin;

    return-object v0
.end method

.method public final getPath()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/i3;->a:Ljava/nio/file/Path;

    return-object v0
.end method

.method public final declared-synchronized open()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/tools/r8/internal/i3;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/i3;->d:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/i3;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/i3;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
