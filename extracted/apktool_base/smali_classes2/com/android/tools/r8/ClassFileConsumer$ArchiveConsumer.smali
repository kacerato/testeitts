.class public Lcom/android/tools/r8/ClassFileConsumer$ArchiveConsumer;
.super Lcom/android/tools/r8/ClassFileConsumer$ForwardingConsumer;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/DataResourceConsumer;
.implements Lcom/android/tools/r8/S;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/ClassFileConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArchiveConsumer"
.end annotation


# instance fields
.field private final c:Lcom/android/tools/r8/internal/i3;

.field protected final consumeDataResources:Z


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/r8/ClassFileConsumer$ArchiveConsumer;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/ClassFileConsumer;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lcom/android/tools/r8/ClassFileConsumer;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/tools/r8/ClassFileConsumer$ArchiveConsumer;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/ClassFileConsumer;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lcom/android/tools/r8/ClassFileConsumer;Z)V
    .locals 0

    .line 4
    invoke-direct {p0, p2}, Lcom/android/tools/r8/ClassFileConsumer$ForwardingConsumer;-><init>(Lcom/android/tools/r8/ClassFileConsumer;)V

    .line 5
    new-instance p2, Lcom/android/tools/r8/internal/i3;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/i3;-><init>(Ljava/nio/file/Path;)V

    iput-object p2, p0, Lcom/android/tools/r8/ClassFileConsumer$ArchiveConsumer;->c:Lcom/android/tools/r8/internal/i3;

    .line 6
    iput-boolean p3, p0, Lcom/android/tools/r8/ClassFileConsumer$ArchiveConsumer;->consumeDataResources:Z

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/i3;->open()V

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/ClassFileConsumer$ArchiveConsumer;->getDataResourceConsumer()Lcom/android/tools/r8/DataResourceConsumer;

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
    invoke-direct {p0, p1, v0, p2}, Lcom/android/tools/r8/ClassFileConsumer$ArchiveConsumer;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/ClassFileConsumer;Z)V

    return-void
.end method

.method public static writeResourcesForTesting(Ljava/nio/file/Path;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/ProgramResource;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/DataDirectoryResource;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/DataEntryResource;",
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

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/r8/internal/pe;

    sget-object v2, Lcom/android/tools/r8/internal/pe;->c:Lcom/android/tools/r8/internal/oe;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/pe;-><init>(Lcom/android/tools/r8/internal/oe;)V

    :try_start_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1, p2, p3, v1, v2}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/pe;Ljava/util/zip/ZipOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pe;->close()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pe;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method


# virtual methods
.method public accept(Lcom/android/tools/r8/ByteDataView;Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/ClassFileConsumer$ForwardingConsumer;->accept(Lcom/android/tools/r8/ByteDataView;Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 2
    iget-object p3, p0, Lcom/android/tools/r8/ClassFileConsumer$ArchiveConsumer;->c:Lcom/android/tools/r8/internal/i3;

    invoke-static {p2}, Lcom/android/tools/r8/internal/Bl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    monitor-enter p3

    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p3, p2, p1, v0}, Lcom/android/tools/r8/internal/i3;->a(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;Z)V

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

.method public accept(Lcom/android/tools/r8/DataDirectoryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/ClassFileConsumer$ArchiveConsumer;->c:Lcom/android/tools/r8/internal/i3;

    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/i3;->a(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public accept(Lcom/android/tools/r8/DataEntryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/ClassFileConsumer$ArchiveConsumer;->c:Lcom/android/tools/r8/internal/i3;

    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/i3;->a(Ljava/lang/String;Lcom/android/tools/r8/DataEntryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/tools/r8/ClassFileConsumer$ForwardingConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    iget-object v0, p0, Lcom/android/tools/r8/ClassFileConsumer$ArchiveConsumer;->c:Lcom/android/tools/r8/internal/i3;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/i3;->a(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public getDataResourceConsumer()Lcom/android/tools/r8/DataResourceConsumer;
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/ClassFileConsumer$ArchiveConsumer;->consumeDataResources:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public internalGetOutputPath()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ClassFileConsumer$ArchiveConsumer;->c:Lcom/android/tools/r8/internal/i3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/i3;->a:Ljava/nio/file/Path;

    return-object v0
.end method
