.class public LJAVARuntime/Point2Buffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Vector",
        "Buffers"
    }
.end annotation


# instance fields
.field public transient buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 8
    new-instance v0, LJAVARuntime/IllegalBufferException;

    const-string v1, "Don\'t use Point2Buffer constructor, create using BufferUtils.createPoint2Buffer()"

    invoke-direct {v0, v1}, LJAVARuntime/IllegalBufferException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/Point2Buffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-void
.end method


# virtual methods
.method public array()[LJAVARuntime/Point2;
    .locals 3

    invoke-virtual {p0}, LJAVARuntime/Point2Buffer;->capacity()I

    move-result v0

    new-array v0, v0, [LJAVARuntime/Point2;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, LJAVARuntime/Point2Buffer;->capacity()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, LJAVARuntime/Point2Buffer;->get(I)LJAVARuntime/Point2;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public capacity()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/Point2Buffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public get(I)LJAVARuntime/Point2;
    .locals 2
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

    new-instance v0, LJAVARuntime/Point2;

    invoke-direct {v0}, LJAVARuntime/Point2;-><init>()V

    iget-object v1, p0, LJAVARuntime/Point2Buffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, LJAVARuntime/Point2;->setX(I)V

    iget-object v1, p0, LJAVARuntime/Point2Buffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result p1

    invoke-virtual {v0, p1}, LJAVARuntime/Point2;->setY(I)V

    return-object v0
.end method

.method public getFloatBuffer()LJAVARuntime/NativeIntBuffer;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Point2Buffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->toJAVARuntime()LJAVARuntime/NativeIntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getX(I)I
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

    iget-object v0, p0, LJAVARuntime/Point2Buffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result p1

    return p1
.end method

.method public getY(I)I
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

    iget-object v0, p0, LJAVARuntime/Point2Buffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result p1

    return p1
.end method

.method public position(I)V
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

    iget-object v0, p0, LJAVARuntime/Point2Buffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->position(I)V

    return-void
.end method

.method public put(II)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Point2Buffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    .line 4
    iget-object p1, p0, LJAVARuntime/Point2Buffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    return-void
.end method

.method public put(LJAVARuntime/Point2;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "point2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Point2Buffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p1}, LJAVARuntime/Point2;->getX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    .line 2
    iget-object v0, p0, LJAVARuntime/Point2Buffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p1}, LJAVARuntime/Point2;->getY()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    return-void
.end method
