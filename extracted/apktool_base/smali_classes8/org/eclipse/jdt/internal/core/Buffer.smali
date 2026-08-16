.class public Lorg/eclipse/jdt/internal/core/Buffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IBuffer;


# static fields
.field protected static final F_HAS_UNSAVED_CHANGES:I = 0x1

.field protected static final F_IS_CLOSED:I = 0x4

.field protected static final F_IS_READ_ONLY:I = 0x2


# instance fields
.field protected changeListeners:Lorg/eclipse/core/runtime/ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/core/runtime/ListenerList<",
            "Lorg/eclipse/jdt/core/IBufferChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field protected contents:[C

.field protected file:Lorg/eclipse/core/resources/IFile;

.field protected flags:I

.field protected gapEnd:I

.field protected gapStart:I

.field protected lock:Ljava/lang/Object;

.field protected owner:Lorg/eclipse/jdt/core/IOpenable;


# direct methods
.method public constructor <init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/core/IOpenable;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapEnd:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->lock:Ljava/lang/Object;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->file:Lorg/eclipse/core/resources/IFile;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->owner:Lorg/eclipse/jdt/core/IOpenable;

    if-nez p1, :cond_0

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/Buffer;->setReadOnly(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addBufferChangedListener(Lorg/eclipse/jdt/core/IBufferChangedListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->changeListeners:Lorg/eclipse/core/runtime/ListenerList;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/core/runtime/ListenerList;

    invoke-direct {v0}, Lorg/eclipse/core/runtime/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->changeListeners:Lorg/eclipse/core/runtime/ListenerList;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->changeListeners:Lorg/eclipse/core/runtime/ListenerList;

    invoke-virtual {v0, p1}, Lorg/eclipse/core/runtime/ListenerList;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public append(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/Buffer;->append([C)V

    return-void
.end method

.method public append([C)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Buffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Buffer;->getLength()I

    move-result v0

    .line 4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    if-nez v2, :cond_1

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 6
    :cond_1
    array-length v2, p1

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/internal/core/Buffer;->moveAndResizeGap(II)V

    .line 7
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapStart:I

    array-length v3, p1

    add-int/2addr v2, v3

    iput v2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapStart:I

    .line 9
    iget v2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->flags:I

    .line 10
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    new-instance v1, Lorg/eclipse/jdt/core/BufferChangedEvent;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, p0, v0, v4, v2}, Lorg/eclipse/jdt/core/BufferChangedEvent;-><init>(Lorg/eclipse/jdt/core/IBuffer;IILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/Buffer;->notifyChanged(Lorg/eclipse/jdt/core/BufferChangedEvent;)V

    goto :goto_1

    .line 12
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public close()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Buffer;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/eclipse/jdt/core/BufferChangedEvent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v2, v3}, Lorg/eclipse/jdt/core/BufferChangedEvent;-><init>(Lorg/eclipse/jdt/core/IBuffer;IILjava/lang/String;)V

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->flags:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/Buffer;->notifyChanged(Lorg/eclipse/jdt/core/BufferChangedEvent;)V

    monitor-enter p0

    :try_start_1
    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/Buffer;->changeListeners:Lorg/eclipse/core/runtime/ListenerList;

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getChar(I)C
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapStart:I

    if-ge p1, v2, :cond_1

    aget-char p1, v1, p1

    monitor-exit v0

    return p1

    :cond_1
    iget v3, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapEnd:I

    sub-int/2addr v3, v2

    add-int/2addr p1, v3

    aget-char p1, v1, p1

    monitor-exit v0

    return p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCharacters()[C
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapStart:I

    if-gez v2, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    array-length v3, v1

    iget v4, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapEnd:I

    sub-int v4, v3, v4

    add-int/2addr v4, v2

    new-array v4, v4, [C

    const/4 v5, 0x0

    invoke-static {v1, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapEnd:I

    iget v5, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapStart:I

    sub-int/2addr v3, v2

    invoke-static {v1, v2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v0

    return-object v4

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getContents()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Buffer;->getCharacters()[C

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public getLength()I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, -0x1

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapEnd:I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapStart:I

    sub-int/2addr v2, v3

    array-length v1, v1

    sub-int/2addr v1, v2

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOwner()Lorg/eclipse/jdt/core/IOpenable;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->owner:Lorg/eclipse/jdt/core/IOpenable;

    return-object v0
.end method

.method public getText(II)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, ""

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    add-int v2, p1, p2

    :try_start_1
    iget v3, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapStart:I

    if-ge v2, v3, :cond_1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0

    return-object v2

    :cond_1
    if-ge v3, p1, :cond_2

    iget v2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapEnd:I

    sub-int/2addr v2, v3

    new-instance v3, Ljava/lang/String;

    add-int/2addr p1, v2

    invoke-direct {v3, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0

    return-object v3

    :cond_2
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    iget v3, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapStart:I

    sub-int/2addr v3, p1

    invoke-virtual {p2, v1, p1, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapEnd:I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapStart:I

    sub-int/2addr v2, v3

    invoke-virtual {p2, p1, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getUnderlyingResource()Lorg/eclipse/core/resources/IResource;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->file:Lorg/eclipse/core/resources/IFile;

    return-object v0
.end method

.method public hasUnsavedChanges()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public moveAndResizeGap(II)V
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapEnd:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapStart:I

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-gez p2, :cond_1

    if-lez v0, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    array-length v3, p2

    sub-int/2addr v3, v0

    new-array v0, v3, [C

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapEnd:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapStart:I

    sub-int/2addr v3, v2

    invoke-static {p2, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    :cond_0
    iput p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapEnd:I

    iput p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapStart:I

    return-void

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    array-length v4, v3

    sub-int v5, p2, v0

    add-int/2addr v4, v5

    new-array v5, v4, [C

    add-int/2addr p2, p1

    if-nez v0, :cond_2

    invoke-static {v3, v2, v5, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    sub-int/2addr v4, p2

    invoke-static {v0, p1, v5, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    if-ge p1, v1, :cond_3

    sub-int/2addr v1, p1

    invoke-static {v3, v2, v5, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    invoke-static {v0, p1, v5, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapEnd:I

    add-int/2addr v1, p2

    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-static {v0, v2, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    sub-int v0, p1, v1

    invoke-static {v3, v2, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapEnd:I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapStart:I

    invoke-static {v1, v2, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapEnd:I

    add-int/2addr v2, v0

    sub-int/2addr v4, p2

    invoke-static {v1, v2, v5, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    iput p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapStart:I

    iput p2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapEnd:I

    return-void
.end method

.method public notifyChanged(Lorg/eclipse/jdt/core/BufferChangedEvent;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->changeListeners:Lorg/eclipse/core/runtime/ListenerList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/IBufferChangedListener;

    new-instance v2, Lorg/eclipse/jdt/internal/core/Buffer$1;

    invoke-direct {v2, p0, v1, p1}, Lorg/eclipse/jdt/internal/core/Buffer$1;-><init>(Lorg/eclipse/jdt/internal/core/Buffer;Lorg/eclipse/jdt/core/IBufferChangedListener;Lorg/eclipse/jdt/core/BufferChangedEvent;)V

    invoke-static {v2}, Lorg/eclipse/core/runtime/SafeRunner;->run(Lorg/eclipse/core/runtime/ISafeRunnable;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized removeBufferChangedListener(Lorg/eclipse/jdt/core/IBufferChangedListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->changeListeners:Lorg/eclipse/core/runtime/ListenerList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/core/runtime/ListenerList;->remove(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->changeListeners:Lorg/eclipse/core/runtime/ListenerList;

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/ListenerList;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->changeListeners:Lorg/eclipse/core/runtime/ListenerList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public replace(IILjava/lang/String;)V
    .locals 0

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/Buffer;->replace(II[C)V

    return-void
.end method

.method public replace(II[C)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Buffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move v1, v0

    goto :goto_0

    .line 2
    :cond_0
    array-length v1, p3

    .line 3
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    if-nez v3, :cond_1

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    add-int v3, p1, p2

    sub-int v4, v1, p2

    .line 5
    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/internal/core/Buffer;->moveAndResizeGap(II)V

    .line 6
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v3, :cond_2

    .line 7
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    invoke-static {p3, v0, v5, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    if-le p2, v1, :cond_3

    .line 8
    iget v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapStart:I

    sub-int v3, p2, v1

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapStart:I

    goto :goto_1

    :cond_3
    if-le v1, p2, :cond_4

    .line 9
    iget v3, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapStart:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapStart:I

    .line 10
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    invoke-static {p3, v0, v3, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    :cond_4
    :goto_1
    iget v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->flags:I

    .line 12
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_5

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([C)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 14
    :goto_2
    new-instance p3, Lorg/eclipse/jdt/core/BufferChangedEvent;

    invoke-direct {p3, p0, p1, p2, v0}, Lorg/eclipse/jdt/core/BufferChangedEvent;-><init>(Lorg/eclipse/jdt/core/IBuffer;IILjava/lang/String;)V

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/Buffer;->notifyChanged(Lorg/eclipse/jdt/core/BufferChangedEvent;)V

    goto :goto_4

    .line 15
    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_6
    :goto_4
    return-void
.end method

.method public save(Lorg/eclipse/core/runtime/IProgressMonitor;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Buffer;->isReadOnly()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->file:Lorg/eclipse/core/resources/IFile;

    if-nez p1, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Buffer;->hasUnsavedChanges()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Buffer;->getContents()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->file:Lorg/eclipse/core/resources/IFile;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IFile;->getCharset()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :catch_1
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_3

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_6

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    :goto_1
    if-eqz v1, :cond_5

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v1, :cond_5

    :try_start_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->file:Lorg/eclipse/core/resources/IFile;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IFile;->getContentDescription()Lorg/eclipse/core/runtime/content/IContentDescription;

    move-result-object v1
    :try_end_3
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_3
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Lorg/eclipse/core/runtime/CoreException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/core/runtime/IStatus;->getCode()I

    move-result v2

    const/16 v3, 0x170

    if-ne v2, v3, :cond_4

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_5

    sget-object v2, Lorg/eclipse/core/runtime/content/IContentDescription;->BYTE_ORDER_MARK:Lorg/eclipse/core/runtime/QualifiedName;

    invoke-interface {v1, v2}, Lorg/eclipse/core/runtime/content/IContentDescription;->getProperty(Lorg/eclipse/core/runtime/QualifiedName;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v1, Lorg/eclipse/core/runtime/content/IContentDescription;->BOM_UTF_8:[B

    array-length v1, v1

    array-length v2, p1

    add-int/2addr v2, v1

    new-array v2, v2, [B

    sget-object v3, Lorg/eclipse/core/runtime/content/IContentDescription;->BOM_UTF_8:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p1

    invoke-static {p1, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    goto :goto_3

    :cond_4
    throw v1

    :cond_5
    :goto_3
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->file:Lorg/eclipse/core/resources/IFile;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->exists()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->file:Lorg/eclipse/core/resources/IFile;

    if-eqz p2, :cond_6

    const/4 p2, 0x3

    goto :goto_4

    :cond_6
    const/4 p2, 0x2

    :goto_4
    invoke-interface {p1, v1, p2, v0}, Lorg/eclipse/core/resources/IFile;->setContents(Ljava/io/InputStream;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->file:Lorg/eclipse/core/resources/IFile;

    invoke-interface {p1, v1, p2, v0}, Lorg/eclipse/core/resources/IFile;->create(Ljava/io/InputStream;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    iget p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->flags:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->flags:I

    return-void

    :goto_6
    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2

    :goto_7
    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    const/16 v0, 0x3d9

    invoke-direct {p2, p1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw p2

    :cond_8
    :goto_8
    return-void
.end method

.method public setContents(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/Buffer;->setContents([C)V

    return-void
.end method

.method public setContents([C)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Buffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    .line 4
    iget p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->flags:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->flags:I

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Buffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_1

    .line 7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 9
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    if-nez v2, :cond_2

    monitor-exit v1

    return-void

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 10
    :cond_2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    .line 11
    iget p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->flags:I

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapStart:I

    .line 13
    iput p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->gapEnd:I

    .line 14
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    new-instance p1, Lorg/eclipse/jdt/core/BufferChangedEvent;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Buffer;->getLength()I

    move-result v2

    invoke-direct {p1, p0, v1, v2, v0}, Lorg/eclipse/jdt/core/BufferChangedEvent;-><init>(Lorg/eclipse/jdt/core/IBuffer;IILjava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/Buffer;->notifyChanged(Lorg/eclipse/jdt/core/BufferChangedEvent;)V

    goto :goto_2

    .line 17
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->flags:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->flags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lorg/eclipse/jdt/internal/core/Buffer;->flags:I

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Owner: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/Buffer;->owner:Lorg/eclipse/jdt/core/IOpenable;

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nHas unsaved changes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Buffer;->hasUnsavedChanges()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nIs readonly: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Buffer;->isReadOnly()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nIs closed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Buffer;->isClosed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nContents:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Buffer;->getCharacters()[C

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "<null>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    aget-char v4, v1, v3

    const/16 v5, 0xa

    if-eq v4, v5, :cond_4

    const/16 v6, 0xd

    if-eq v4, v6, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/Buffer;->contents:[C

    add-int/lit8 v6, v3, 0x1

    aget-char v4, v4, v6

    if-ne v4, v5, :cond_3

    const-string v3, "\\r\\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v6

    goto :goto_2

    :cond_3
    const-string v4, "\\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    const-string v4, "\\n\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
