.class public Lcom/android/tools/r8/DexFilePerClassFileConsumer$ArchiveConsumer;
.super Lcom/android/tools/r8/DexFilePerClassFileConsumer$ForwardingConsumer;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/DataResourceConsumer;
.implements Lcom/android/tools/r8/S;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/DexFilePerClassFileConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArchiveConsumer"
.end annotation


# static fields
.field static final synthetic d:Z = true


# instance fields
.field private final c:Lcom/android/tools/r8/internal/i3;

.field protected final consumeDataResources:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ArchiveConsumer;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/DexFilePerClassFileConsumer;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lcom/android/tools/r8/DexFilePerClassFileConsumer;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ArchiveConsumer;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/DexFilePerClassFileConsumer;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lcom/android/tools/r8/DexFilePerClassFileConsumer;Z)V
    .locals 0

    .line 4
    invoke-direct {p0, p2}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ForwardingConsumer;-><init>(Lcom/android/tools/r8/DexFilePerClassFileConsumer;)V

    .line 5
    new-instance p2, Lcom/android/tools/r8/internal/i3;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/i3;-><init>(Ljava/nio/file/Path;)V

    iput-object p2, p0, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ArchiveConsumer;->c:Lcom/android/tools/r8/internal/i3;

    .line 6
    iput-boolean p3, p0, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ArchiveConsumer;->consumeDataResources:Z

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/i3;->open()V

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ArchiveConsumer;->getDataResourceConsumer()Lcom/android/tools/r8/DataResourceConsumer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/i3;->open()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ArchiveConsumer;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/DexFilePerClassFileConsumer;Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ArchiveConsumer;->d:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".dex"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ArchiveConsumer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeResourcesForTesting(Ljava/nio/file/Path;Ljava/util/List;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/ProgramResource;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/Resource;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/tools/r8/ResourceException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    sget-object v1, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/tools/r8/internal/pe;

    sget-object v3, Lcom/android/tools/r8/internal/pe;->c:Lcom/android/tools/r8/internal/oe;

    invoke-direct {v1, v3}, Lcom/android/tools/r8/internal/pe;-><init>(Lcom/android/tools/r8/internal/oe;)V

    :try_start_0
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/ProgramResource;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ArchiveConsumer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/r8/ProgramResource;->getByteStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v4, v1, Lcom/android/tools/r8/internal/pe;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v4, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    invoke-static {p1}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-static {v3, v0, p1, v2}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pe;->close()V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_4

    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    :try_start_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pe;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0
.end method


# virtual methods
.method public accept(Lcom/android/tools/r8/DataDirectoryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ArchiveConsumer;->c:Lcom/android/tools/r8/internal/i3;

    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/i3;->a(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public accept(Lcom/android/tools/r8/DataEntryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ArchiveConsumer;->c:Lcom/android/tools/r8/internal/i3;

    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/i3;->a(Ljava/lang/String;Lcom/android/tools/r8/DataEntryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public accept(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;Ljava/util/Set;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/tools/r8/ByteDataView;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/tools/r8/DiagnosticsHandler;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ForwardingConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;Ljava/util/Set;Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 2
    iget-object p3, p0, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ArchiveConsumer;->c:Lcom/android/tools/r8/internal/i3;

    invoke-static {p1}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ArchiveConsumer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-enter p3

    const/4 p4, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p3, p1, p2, p4}, Lcom/android/tools/r8/internal/i3;->a(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;Z)V

    .line 4
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit p3

    throw p1
.end method

.method public finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ForwardingConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    iget-object v0, p0, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ArchiveConsumer;->c:Lcom/android/tools/r8/internal/i3;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/i3;->a(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public getDataResourceConsumer()Lcom/android/tools/r8/DataResourceConsumer;
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ArchiveConsumer;->consumeDataResources:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public internalGetOutputPath()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ArchiveConsumer;->c:Lcom/android/tools/r8/internal/i3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/i3;->a:Ljava/nio/file/Path;

    return-object v0
.end method
