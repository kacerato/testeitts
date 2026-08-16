.class public Lcom/android/tools/r8/DexIndexedConsumer$ArchiveConsumer;
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
    name = "ArchiveConsumer"
.end annotation


# instance fields
.field protected final consumeDataResources:Z

.field protected final outputBuilder:Lcom/android/tools/r8/internal/g50;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/r8/DexIndexedConsumer$ArchiveConsumer;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/DexIndexedConsumer;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lcom/android/tools/r8/DexIndexedConsumer;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/tools/r8/DexIndexedConsumer$ArchiveConsumer;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/DexIndexedConsumer;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lcom/android/tools/r8/DexIndexedConsumer;Z)V
    .locals 0

    .line 4
    invoke-direct {p0, p2}, Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;-><init>(Lcom/android/tools/r8/DexIndexedConsumer;)V

    .line 5
    new-instance p2, Lcom/android/tools/r8/internal/i3;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/i3;-><init>(Ljava/nio/file/Path;)V

    iput-object p2, p0, Lcom/android/tools/r8/DexIndexedConsumer$ArchiveConsumer;->outputBuilder:Lcom/android/tools/r8/internal/g50;

    .line 6
    iput-boolean p3, p0, Lcom/android/tools/r8/DexIndexedConsumer$ArchiveConsumer;->consumeDataResources:Z

    .line 7
    invoke-interface {p2}, Lcom/android/tools/r8/internal/g50;->open()V

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/DexIndexedConsumer$ArchiveConsumer;->getDataResourceConsumer()Lcom/android/tools/r8/DataResourceConsumer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-interface {p2}, Lcom/android/tools/r8/internal/g50;->open()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/android/tools/r8/DexIndexedConsumer$ArchiveConsumer;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/DexIndexedConsumer;Z)V

    return-void
.end method

.method public static writeResourcesForTesting(Ljava/nio/file/Path;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)V
    .locals 7
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

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/tools/r8/internal/pe;

    sget-object v4, Lcom/android/tools/r8/internal/pe;->c:Lcom/android/tools/r8/internal/oe;

    invoke-direct {v1, v4}, Lcom/android/tools/r8/internal/pe;-><init>(Lcom/android/tools/r8/internal/oe;)V

    :try_start_0
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v5, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move p0, v2

    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/ProgramResource;

    invoke-static {p0}, Lcom/android/tools/r8/internal/Ks;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lcom/android/tools/r8/ProgramResource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v6, v1, Lcom/android/tools/r8/internal/pe;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v6, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    :goto_1
    invoke-static {v0}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v4, v5, v0, v2}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    add-int/2addr p0, v3

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/DataDirectoryResource;

    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [B

    invoke-static {v4, p1, p2, v2}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    goto :goto_2

    :cond_2
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/DataEntryResource;

    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/android/tools/r8/DataEntryResource;->getByteStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p3, v1, Lcom/android/tools/r8/internal/pe;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p3, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    :cond_3
    invoke-static {p1}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-static {v4, p2, p1, v2}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_4
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pe;->close()V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_6

    :goto_4
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_6
    :try_start_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pe;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p0
.end method


# virtual methods
.method public accept(ILcom/android/tools/r8/ByteDataView;Ljava/util/Set;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1
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
    iget-object p3, p0, Lcom/android/tools/r8/DexIndexedConsumer$ArchiveConsumer;->outputBuilder:Lcom/android/tools/r8/internal/g50;

    .line 3
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ks;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-interface {p3, p1, v0, p2, p4}, Lcom/android/tools/r8/internal/g50;->a(ILjava/lang/String;Lcom/android/tools/r8/ByteDataView;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public accept(Lcom/android/tools/r8/DataDirectoryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/DexIndexedConsumer$ArchiveConsumer;->outputBuilder:Lcom/android/tools/r8/internal/g50;

    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/g50;->a(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public accept(Lcom/android/tools/r8/DataEntryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/DexIndexedConsumer$ArchiveConsumer;->outputBuilder:Lcom/android/tools/r8/internal/g50;

    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/g50;->a(Ljava/lang/String;Lcom/android/tools/r8/DataEntryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    iget-object v0, p0, Lcom/android/tools/r8/DexIndexedConsumer$ArchiveConsumer;->outputBuilder:Lcom/android/tools/r8/internal/g50;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/g50;->a(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public getDataResourceConsumer()Lcom/android/tools/r8/DataResourceConsumer;
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/DexIndexedConsumer$ArchiveConsumer;->consumeDataResources:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/DexIndexedConsumer$ArchiveConsumer;->outputBuilder:Lcom/android/tools/r8/internal/g50;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/g50;->getOrigin()Lcom/android/tools/r8/origin/PathOrigin;

    move-result-object v0

    return-object v0
.end method

.method public internalGetOutputPath()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/DexIndexedConsumer$ArchiveConsumer;->outputBuilder:Lcom/android/tools/r8/internal/g50;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/g50;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method
