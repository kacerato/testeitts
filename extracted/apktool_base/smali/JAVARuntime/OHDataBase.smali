.class public LJAVARuntime/OHDataBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Buffers"
    }
.end annotation


# instance fields
.field private transient buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "capacity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 7
    invoke-static {p1}, Luc/a;->g(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move-result-object p1

    iput-object p1, p0, LJAVARuntime/OHDataBase;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .annotation runtime Lo8/c;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/OHDataBase;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public decrementSize(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    invoke-virtual {p0}, LJAVARuntime/OHDataBase;->capacity()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, LJAVARuntime/OHDataBase;->resize(IZ)V

    return-void
.end method

.method public get(I)B
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "idx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/OHDataBase;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method public getBytes()[B
    .locals 1

    iget-object v0, p0, LJAVARuntime/OHDataBase;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public incrementSize(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    invoke-virtual {p0}, LJAVARuntime/OHDataBase;->capacity()I

    move-result v0

    add-int/2addr v0, p1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, LJAVARuntime/OHDataBase;->resize(IZ)V

    return-void
.end method

.method public position(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/OHDataBase;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position(I)V

    return-void
.end method

.method public put([B)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "bytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/OHDataBase;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->put([B)V

    return-void
.end method

.method public resize(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "capacity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newCapacity"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, LJAVARuntime/OHDataBase;->resize(IZ)V

    return-void
.end method

.method public resize(IZ)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "capacity",
            "copyData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newCapacity",
            "copyData"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/OHDataBase;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 3
    invoke-static {p1}, Luc/a;->g(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, LJAVARuntime/OHDataBase;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result p2

    const/4 v1, 0x0

    if-le p1, p2, :cond_0

    .line 5
    :goto_0
    iget-object p1, p0, LJAVARuntime/OHDataBase;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result p1

    if-ge v1, p1, :cond_1

    .line 6
    iget-object p1, p0, LJAVARuntime/OHDataBase;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->get(I)B

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->put(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, LJAVARuntime/OHDataBase;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result p2

    if-ge p1, p2, :cond_1

    :goto_1
    if-ge v1, p1, :cond_1

    .line 8
    iget-object p2, p0, LJAVARuntime/OHDataBase;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->get(I)B

    move-result p2

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->put(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iput-object v0, p0, LJAVARuntime/OHDataBase;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    :cond_2
    return-void
.end method

.method public set(IB)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/OHDataBase;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position(I)V

    iget-object p1, p0, LJAVARuntime/OHDataBase;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->put(B)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/OHDataBase;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result v0

    return v0
.end method
