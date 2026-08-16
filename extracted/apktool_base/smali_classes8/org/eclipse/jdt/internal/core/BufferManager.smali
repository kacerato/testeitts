.class public Lorg/eclipse/jdt/internal/core/BufferManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static DEFAULT_BUFFER_MANAGER:Lorg/eclipse/jdt/internal/core/BufferManager;

.field protected static VERBOSE:Z


# instance fields
.field protected defaultBufferFactory:Lorg/eclipse/jdt/core/IBufferFactory;

.field private openBuffers:Lorg/eclipse/jdt/internal/core/BufferCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/BufferCache<",
            "Lorg/eclipse/jdt/core/IOpenable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/eclipse/jdt/internal/core/BufferCache;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/BufferCache;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/BufferManager;->openBuffers:Lorg/eclipse/jdt/internal/core/BufferCache;

    new-instance v0, Lorg/eclipse/jdt/internal/core/BufferManager$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/BufferManager$1;-><init>(Lorg/eclipse/jdt/internal/core/BufferManager;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/BufferManager;->defaultBufferFactory:Lorg/eclipse/jdt/core/IBufferFactory;

    return-void
.end method

.method public static createBuffer(Lorg/eclipse/jdt/core/IOpenable;)Lorg/eclipse/jdt/core/IBuffer;
    .locals 4

    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jdt/internal/core/Buffer;

    instance-of v3, v1, Lorg/eclipse/core/resources/IFile;

    if-eqz v3, :cond_0

    check-cast v1, Lorg/eclipse/core/resources/IFile;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->isReadOnly()Z

    move-result v0

    invoke-direct {v2, v1, p0, v0}, Lorg/eclipse/jdt/internal/core/Buffer;-><init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/core/IOpenable;Z)V

    return-object v2
.end method

.method public static createNullBuffer(Lorg/eclipse/jdt/core/IOpenable;)Lorg/eclipse/jdt/core/IBuffer;
    .locals 4

    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jdt/internal/core/NullBuffer;

    instance-of v3, v1, Lorg/eclipse/core/resources/IFile;

    if-eqz v3, :cond_0

    check-cast v1, Lorg/eclipse/core/resources/IFile;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->isReadOnly()Z

    move-result v0

    invoke-direct {v2, v1, p0, v0}, Lorg/eclipse/jdt/internal/core/NullBuffer;-><init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/core/IOpenable;Z)V

    return-object v2
.end method

.method public static declared-synchronized getDefaultBufferManager()Lorg/eclipse/jdt/internal/core/BufferManager;
    .locals 2

    const-class v0, Lorg/eclipse/jdt/internal/core/BufferManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/internal/core/BufferManager;->DEFAULT_BUFFER_MANAGER:Lorg/eclipse/jdt/internal/core/BufferManager;

    if-nez v1, :cond_0

    new-instance v1, Lorg/eclipse/jdt/internal/core/BufferManager;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/BufferManager;-><init>()V

    sput-object v1, Lorg/eclipse/jdt/internal/core/BufferManager;->DEFAULT_BUFFER_MANAGER:Lorg/eclipse/jdt/internal/core/BufferManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lorg/eclipse/jdt/internal/core/BufferManager;->DEFAULT_BUFFER_MANAGER:Lorg/eclipse/jdt/internal/core/BufferManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addBuffer(Lorg/eclipse/jdt/core/IBuffer;)V
    .locals 4

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/BufferManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IBuffer;->getOwner()Lorg/eclipse/jdt/core/IOpenable;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/Openable;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding buffer for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BufferManager;->openBuffers:Lorg/eclipse/jdt/internal/core/BufferCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/BufferManager;->openBuffers:Lorg/eclipse/jdt/internal/core/BufferCache;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IBuffer;->getOwner()Lorg/eclipse/jdt/core/IOpenable;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/BufferManager;->openBuffers:Lorg/eclipse/jdt/internal/core/BufferCache;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/BufferCache;->closeBuffers()V

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/BufferManager;->VERBOSE:Z

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-> Buffer cache filling ratio = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/BufferManager;->openBuffers:Lorg/eclipse/jdt/internal/core/BufferCache;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->fillingRatio()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getBuffer(Lorg/eclipse/jdt/core/IOpenable;)Lorg/eclipse/jdt/core/IBuffer;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BufferManager;->openBuffers:Lorg/eclipse/jdt/internal/core/BufferCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/BufferManager;->openBuffers:Lorg/eclipse/jdt/internal/core/BufferCache;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IBuffer;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDefaultBufferFactory()Lorg/eclipse/jdt/core/IBufferFactory;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BufferManager;->defaultBufferFactory:Lorg/eclipse/jdt/core/IBufferFactory;

    return-object v0
.end method

.method public getOpenBuffers()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/eclipse/jdt/core/IBuffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BufferManager;->openBuffers:Lorg/eclipse/jdt/internal/core/BufferCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/BufferManager;->openBuffers:Lorg/eclipse/jdt/internal/core/BufferCache;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->shrink()Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/BufferManager;->openBuffers:Lorg/eclipse/jdt/internal/core/BufferCache;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->elements()Ljava/util/Enumeration;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BufferManager;->openBuffers:Lorg/eclipse/jdt/internal/core/BufferCache;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/BufferCache;->closeBuffers()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeBuffer(Lorg/eclipse/jdt/core/IBuffer;)V
    .locals 4

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/BufferManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IBuffer;->getOwner()Lorg/eclipse/jdt/core/IOpenable;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/Openable;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removing buffer for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BufferManager;->openBuffers:Lorg/eclipse/jdt/internal/core/BufferCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/BufferManager;->openBuffers:Lorg/eclipse/jdt/internal/core/BufferCache;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IBuffer;->getOwner()Lorg/eclipse/jdt/core/IOpenable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/BufferManager;->openBuffers:Lorg/eclipse/jdt/internal/core/BufferCache;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/BufferCache;->closeBuffers()V

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/BufferManager;->VERBOSE:Z

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-> Buffer cache filling ratio = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/BufferManager;->openBuffers:Lorg/eclipse/jdt/internal/core/BufferCache;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->fillingRatio()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
