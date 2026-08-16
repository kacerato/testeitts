.class public LJAVARuntime/Vector2Buffer;
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
.field public transient buffer:Lvc/p;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vectorCount"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 9
    new-instance v0, Lvc/p;

    invoke-direct {v0, p1}, Lvc/p;-><init>(I)V

    iput-object v0, p0, LJAVARuntime/Vector2Buffer;->buffer:Lvc/p;

    return-void
.end method

.method public constructor <init>(LJAVARuntime/NativeFloatBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeFloatBuffer"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, LJAVARuntime/NativeFloatBuffer;->capacity()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lvc/p;

    iget-object p1, p1, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, p1}, Lvc/p;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iput-object v0, p0, LJAVARuntime/Vector2Buffer;->buffer:Lvc/p;

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "nativeFloatBuffer capacity must be divisible by 2, in order to be able to store an array of Vector2"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "nativeFloatBuffer can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lvc/p;)V
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
    iput-object p1, p0, LJAVARuntime/Vector2Buffer;->buffer:Lvc/p;

    .line 4
    invoke-virtual {p1, p0}, Lvc/p;->w(LJAVARuntime/Vector2Buffer;)V

    return-void
.end method


# virtual methods
.method public array()[LJAVARuntime/Vector2;
    .locals 3

    invoke-virtual {p0}, LJAVARuntime/Vector2Buffer;->capacity()I

    move-result v0

    new-array v0, v0, [LJAVARuntime/Vector2;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, LJAVARuntime/Vector2Buffer;->capacity()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, LJAVARuntime/Vector2Buffer;->get(I)LJAVARuntime/Vector2;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public capacity()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/Vector2Buffer;->buffer:Lvc/p;

    invoke-virtual {v0}, Lvc/p;->b()I

    move-result v0

    return v0
.end method

.method public copy()LJAVARuntime/Vector2Buffer;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Vector2Buffer;->buffer:Lvc/p;

    invoke-virtual {v0}, Lvc/p;->d()Lvc/p;

    move-result-object v0

    invoke-virtual {v0}, Lvc/p;->x()LJAVARuntime/Vector2Buffer;

    move-result-object v0

    return-object v0
.end method

.method public get(I)LJAVARuntime/Vector2;
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

    iget-object v0, p0, LJAVARuntime/Vector2Buffer;->buffer:Lvc/p;

    invoke-virtual {v0, p1}, Lvc/p;->f(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public getFloatBuffer()LJAVARuntime/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Vector2Buffer;->buffer:Lvc/p;

    invoke-virtual {v0}, Lvc/p;->h()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->toJAVARuntime()LJAVARuntime/NativeFloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getX(I)F
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

    iget-object v0, p0, LJAVARuntime/Vector2Buffer;->buffer:Lvc/p;

    invoke-virtual {v0, p1}, Lvc/p;->i(I)F

    move-result p1

    return p1
.end method

.method public getY(I)F
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

    iget-object v0, p0, LJAVARuntime/Vector2Buffer;->buffer:Lvc/p;

    invoke-virtual {v0, p1}, Lvc/p;->j(I)F

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

    iget-object v0, p0, LJAVARuntime/Vector2Buffer;->buffer:Lvc/p;

    invoke-virtual {v0, p1}, Lvc/p;->l(I)V

    return-void
.end method

.method public put(FF)V
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

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector2Buffer;->buffer:Lvc/p;

    invoke-virtual {v0, p1, p2}, Lvc/p;->m(FF)V

    return-void
.end method

.method public put(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector2Buffer;->buffer:Lvc/p;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lvc/p;->n(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void
.end method

.method public set(IFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "idx",
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "idx",
            "x",
            "y"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector2Buffer;->buffer:Lvc/p;

    invoke-virtual {v0, p1, p2, p3}, Lvc/p;->r(IFF)V

    return-void
.end method

.method public set(ILJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "idx",
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
            "idx",
            "vector"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector2Buffer;->buffer:Lvc/p;

    iget-object p2, p2, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lvc/p;->s(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void
.end method
