.class public final Lcom/android/tools/r8/internal/Us;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/g50;


# instance fields
.field public final a:Ljava/nio/file/Path;

.field public final b:Lcom/android/tools/r8/origin/PathOrigin;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Us;->a:Ljava/nio/file/Path;

    new-instance v0, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Us;->b:Lcom/android/tools/r8/origin/PathOrigin;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Lcom/android/tools/r8/ByteDataView;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p3, p2, p4}, Lcom/android/tools/r8/internal/Us;->a(Lcom/android/tools/r8/ByteDataView;Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/android/tools/r8/ByteDataView;Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 3

    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Us;->a:Ljava/nio/file/Path;

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    invoke-interface {p2}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    const/4 v0, 0x0

    .line 15
    invoke-static {p2, v0, p1}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/nio/file/Path;Ljava/io/OutputStream;Lcom/android/tools/r8/ByteDataView;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    :try_start_2
    new-instance v0, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    new-instance v1, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-interface {p3, v0}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/android/tools/r8/DataEntryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 3

    .line 5
    :try_start_0
    invoke-interface {p2}, Lcom/android/tools/r8/DataEntryResource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    invoke-static {v0}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/ByteDataView;->of([B)Lcom/android/tools/r8/ByteDataView;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p3}, Lcom/android/tools/r8/internal/Us;->a(Lcom/android/tools/r8/ByteDataView;Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_0

    .line 8
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_4 .. :try_end_4} :catch_0

    .line 9
    :goto_1
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

    .line 10
    invoke-interface {p2}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 11
    invoke-interface {p3, v0}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_3

    .line 12
    :goto_2
    new-instance v0, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-interface {p2}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-interface {p3, v0}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    :goto_3
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Us;->a:Ljava/nio/file/Path;

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    :try_start_0
    new-array v0, v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    new-instance v2, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-interface {p2, v1}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public final getOrigin()Lcom/android/tools/r8/origin/PathOrigin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Us;->b:Lcom/android/tools/r8/origin/PathOrigin;

    return-object v0
.end method

.method public final getPath()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Us;->a:Ljava/nio/file/Path;

    return-object v0
.end method

.method public final open()V
    .locals 0

    return-void
.end method
