.class public Lcom/android/tools/r8/ArchiveProtoAndroidResourceConsumer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/AndroidResourceConsumer;


# instance fields
.field private final a:Lcom/android/tools/r8/internal/i3;

.field private final b:Ljava/nio/file/Path;

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/ArchiveProtoAndroidResourceConsumer;-><init>(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/i3;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/i3;-><init>(Ljava/nio/file/Path;)V

    iput-object v0, p0, Lcom/android/tools/r8/ArchiveProtoAndroidResourceConsumer;->a:Lcom/android/tools/r8/internal/i3;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/i3;->open()V

    .line 5
    iput-object p2, p0, Lcom/android/tools/r8/ArchiveProtoAndroidResourceConsumer;->b:Ljava/nio/file/Path;

    return-void
.end method

.method private declared-synchronized a(Lcom/android/tools/r8/DiagnosticsHandler;)Ljava/util/Map;
    .locals 4

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/ArchiveProtoAndroidResourceConsumer;->c:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/tools/r8/ArchiveProtoAndroidResourceConsumer;->b:Ljava/nio/file/Path;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ArchiveProtoAndroidResourceConsumer;->c:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    iget-object v0, p0, Lcom/android/tools/r8/ArchiveProtoAndroidResourceConsumer;->b:Ljava/nio/file/Path;

    new-instance v1, Lcom/android/tools/r8/C0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/C0;-><init>(Lcom/android/tools/r8/ArchiveProtoAndroidResourceConsumer;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/utils/u;->a(Ljava/nio/file/Path;Ljava/util/function/Consumer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    :try_start_3
    new-instance v1, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    new-instance v2, Lcom/android/tools/r8/origin/PathOrigin;

    iget-object v3, p0, Lcom/android/tools/r8/ArchiveProtoAndroidResourceConsumer;->b:Ljava/nio/file/Path;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-interface {p1, v1}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/tools/r8/ArchiveProtoAndroidResourceConsumer;->c:Ljava/util/Map;

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/ArchiveProtoAndroidResourceConsumer;->c:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public static synthetic a(Lcom/android/tools/r8/ArchiveProtoAndroidResourceConsumer;Ljava/util/zip/ZipEntry;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/ArchiveProtoAndroidResourceConsumer;->a(Ljava/util/zip/ZipEntry;)V

    return-void
.end method

.method private synthetic a(Ljava/util/zip/ZipEntry;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/ArchiveProtoAndroidResourceConsumer;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/tools/r8/AndroidResourceOutput;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/ArchiveProtoAndroidResourceConsumer;->a:Lcom/android/tools/r8/internal/i3;

    invoke-interface {p1}, Lcom/android/tools/r8/AndroidResourceOutput;->getPath()Lcom/android/tools/r8/ResourcePath;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/ResourcePath;->location()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/r8/AndroidResourceOutput;->getByteDataView()Lcom/android/tools/r8/ByteDataView;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/tools/r8/ArchiveProtoAndroidResourceConsumer;->a(Lcom/android/tools/r8/DiagnosticsHandler;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1}, Lcom/android/tools/r8/AndroidResourceOutput;->getPath()Lcom/android/tools/r8/ResourcePath;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/ResourcePath;->location()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/i3;->a(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;Z)V

    return-void
.end method

.method public finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ArchiveProtoAndroidResourceConsumer;->a:Lcom/android/tools/r8/internal/i3;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/i3;->a(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method
