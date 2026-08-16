.class public Lcom/android/tools/r8/DexIndexedConsumer$DirectoryConsumer;
.super Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/DataResourceConsumer;
.implements Lcom/android/tools/r8/S;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/DexIndexedConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectoryConsumer"
.end annotation


# instance fields
.field private final c:Ljava/nio/file/Path;

.field protected final consumeDataResouces:Z

.field private d:Z

.field private final e:Lcom/android/tools/r8/internal/Us;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/r8/DexIndexedConsumer$DirectoryConsumer;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/DexIndexedConsumer;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lcom/android/tools/r8/DexIndexedConsumer;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/tools/r8/DexIndexedConsumer$DirectoryConsumer;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/DexIndexedConsumer;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lcom/android/tools/r8/DexIndexedConsumer;Z)V
    .locals 0

    .line 4
    invoke-direct {p0, p2}, Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;-><init>(Lcom/android/tools/r8/DexIndexedConsumer;)V

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/android/tools/r8/DexIndexedConsumer$DirectoryConsumer;->d:Z

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/DexIndexedConsumer$DirectoryConsumer;->c:Ljava/nio/file/Path;

    .line 7
    new-instance p2, Lcom/android/tools/r8/internal/Us;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Us;-><init>(Ljava/nio/file/Path;)V

    iput-object p2, p0, Lcom/android/tools/r8/DexIndexedConsumer$DirectoryConsumer;->e:Lcom/android/tools/r8/internal/Us;

    .line 8
    iput-boolean p3, p0, Lcom/android/tools/r8/DexIndexedConsumer$DirectoryConsumer;->consumeDataResouces:Z

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/android/tools/r8/DexIndexedConsumer$DirectoryConsumer;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/DexIndexedConsumer;Z)V

    return-void
.end method

.method public static a(Ljava/nio/file/Path;)V
    .locals 3

    invoke-static {p0}, Ljava/nio/file/Files;->list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object p0

    :try_start_0
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    invoke-static {v1}, Lcom/android/tools/r8/internal/Ww;->c(Ljava/nio/file/Path;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/stream/BaseStream;->close()V

    return-void

    :goto_1
    if-eqz p0, :cond_2

    :try_start_1
    invoke-interface {p0}, Ljava/util/stream/BaseStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v0
.end method

.method public static writeResources(Ljava/nio/file/Path;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/ProgramResource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/tools/r8/ResourceException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/tools/r8/DexIndexedConsumer$DirectoryConsumer;->a(Ljava/nio/file/Path;)V

    new-instance v0, Lcom/android/tools/r8/internal/pe;

    sget-object v1, Lcom/android/tools/r8/internal/pe;->c:Lcom/android/tools/r8/internal/oe;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/pe;-><init>(Lcom/android/tools/r8/internal/oe;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/ProgramResource;

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ks;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/tools/r8/ProgramResource;->getByteStream()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v5, v0, Lcom/android/tools/r8/internal/pe;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v3}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    invoke-static {v3}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-interface {v4}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v5

    new-array v6, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v5, v6}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/nio/file/Path;Ljava/io/OutputStream;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pe;->close()V

    return-void

    :goto_2
    :try_start_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pe;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
.end method


# virtual methods
.method public accept(ILcom/android/tools/r8/ByteDataView;Ljava/util/Set;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/tools/r8/ByteDataView;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/tools/r8/DiagnosticsHandler;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;->accept(ILcom/android/tools/r8/ByteDataView;Ljava/util/Set;Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    iget-boolean p3, p0, Lcom/android/tools/r8/DexIndexedConsumer$DirectoryConsumer;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 4
    :try_start_3
    iput-boolean p3, p0, Lcom/android/tools/r8/DexIndexedConsumer$DirectoryConsumer;->d:Z

    .line 5
    iget-object p3, p0, Lcom/android/tools/r8/DexIndexedConsumer$DirectoryConsumer;->c:Ljava/nio/file/Path;

    invoke-static {p3}, Lcom/android/tools/r8/DexIndexedConsumer$DirectoryConsumer;->a(Ljava/nio/file/Path;)V

    .line 6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p3

    .line 7
    :try_start_4
    monitor-exit p0

    throw p3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 8
    :goto_0
    new-instance v0, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    new-instance v1, Lcom/android/tools/r8/origin/PathOrigin;

    iget-object v2, p0, Lcom/android/tools/r8/DexIndexedConsumer$DirectoryConsumer;->c:Ljava/nio/file/Path;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    invoke-direct {v0, p3, v1}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-interface {p4, v0}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 9
    :goto_1
    iget-object p3, p0, Lcom/android/tools/r8/DexIndexedConsumer$DirectoryConsumer;->e:Lcom/android/tools/r8/internal/Us;

    invoke-static {p1}, Lcom/android/tools/r8/internal/Ks;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1, p4}, Lcom/android/tools/r8/internal/Us;->a(Lcom/android/tools/r8/ByteDataView;Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public accept(Lcom/android/tools/r8/DataDirectoryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/DexIndexedConsumer$DirectoryConsumer;->e:Lcom/android/tools/r8/internal/Us;

    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Us;->a(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public accept(Lcom/android/tools/r8/DataEntryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/DexIndexedConsumer$DirectoryConsumer;->e:Lcom/android/tools/r8/internal/Us;

    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/Us;->a(Ljava/lang/String;Lcom/android/tools/r8/DataEntryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    iget-object p1, p0, Lcom/android/tools/r8/DexIndexedConsumer$DirectoryConsumer;->e:Lcom/android/tools/r8/internal/Us;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public getDataResourceConsumer()Lcom/android/tools/r8/DataResourceConsumer;
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/DexIndexedConsumer$DirectoryConsumer;->consumeDataResouces:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public internalGetOutputPath()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/DexIndexedConsumer$DirectoryConsumer;->e:Lcom/android/tools/r8/internal/Us;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Us;->a:Ljava/nio/file/Path;

    return-object v0
.end method
