.class public LJAVARuntime/ShortVector3Buffer;
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
.field public transient buffer:Lvc/o;
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
    new-instance v0, Lvc/o;

    invoke-direct {v0, p1}, Lvc/o;-><init>(I)V

    iput-object v0, p0, LJAVARuntime/ShortVector3Buffer;->buffer:Lvc/o;

    return-void
.end method

.method public constructor <init>(LJAVARuntime/NativeShortBuffer;)V
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
    invoke-virtual {p1}, LJAVARuntime/NativeShortBuffer;->capacity()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lvc/o;

    iget-object p1, p1, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-direct {v0, p1}, Lvc/o;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V

    iput-object v0, p0, LJAVARuntime/ShortVector3Buffer;->buffer:Lvc/o;

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "nativeFloatBuffer capacity must be divisible by 3, in order to be able to store an array of Vector3"

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

.method public constructor <init>(Lvc/o;)V
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
    iput-object p1, p0, LJAVARuntime/ShortVector3Buffer;->buffer:Lvc/o;

    .line 4
    invoke-virtual {p1, p0}, Lvc/o;->F(LJAVARuntime/ShortVector3Buffer;)V

    return-void
.end method


# virtual methods
.method public array()[LJAVARuntime/Vector3;
    .locals 3

    invoke-virtual {p0}, LJAVARuntime/ShortVector3Buffer;->capacity()I

    move-result v0

    new-array v0, v0, [LJAVARuntime/Vector3;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, LJAVARuntime/ShortVector3Buffer;->capacity()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, LJAVARuntime/ShortVector3Buffer;->get(I)LJAVARuntime/Vector3;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public capacity()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/ShortVector3Buffer;->buffer:Lvc/o;

    invoke-virtual {v0}, Lvc/o;->d()I

    move-result v0

    return v0
.end method

.method public copy()LJAVARuntime/ShortVector3Buffer;
    .locals 1

    iget-object v0, p0, LJAVARuntime/ShortVector3Buffer;->buffer:Lvc/o;

    invoke-virtual {v0}, Lvc/o;->f()Lvc/o;

    move-result-object v0

    invoke-virtual {v0}, Lvc/o;->G()LJAVARuntime/ShortVector3Buffer;

    move-result-object v0

    return-object v0
.end method

.method public get(I)LJAVARuntime/Vector3;
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

    iget-object v0, p0, LJAVARuntime/ShortVector3Buffer;->buffer:Lvc/o;

    invoke-virtual {v0, p1}, Lvc/o;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public getFloatBuffer()LJAVARuntime/NativeShortBuffer;
    .locals 1

    iget-object v0, p0, LJAVARuntime/ShortVector3Buffer;->buffer:Lvc/o;

    invoke-virtual {v0}, Lvc/o;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->toJAVARuntime()LJAVARuntime/NativeShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/ShortVector3Buffer;->buffer:Lvc/o;

    invoke-virtual {v0}, Lvc/o;->l()I

    move-result v0

    return v0
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

    iget-object v0, p0, LJAVARuntime/ShortVector3Buffer;->buffer:Lvc/o;

    invoke-virtual {v0, p1}, Lvc/o;->m(I)F

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

    iget-object v0, p0, LJAVARuntime/ShortVector3Buffer;->buffer:Lvc/o;

    invoke-virtual {v0, p1}, Lvc/o;->n(I)F

    move-result p1

    return p1
.end method

.method public getZ(I)F
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

    iget-object v0, p0, LJAVARuntime/ShortVector3Buffer;->buffer:Lvc/o;

    invoke-virtual {v0, p1}, Lvc/o;->o(I)F

    move-result p1

    return p1
.end method

.method public position(I)I
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

    iget-object v0, p0, LJAVARuntime/ShortVector3Buffer;->buffer:Lvc/o;

    invoke-virtual {v0, p1}, Lvc/o;->r(I)V

    iget-object p1, p0, LJAVARuntime/ShortVector3Buffer;->buffer:Lvc/o;

    invoke-virtual {p1}, Lvc/o;->l()I

    move-result p1

    return p1
.end method

.method public put(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/ShortVector3Buffer;->buffer:Lvc/o;

    invoke-virtual {v0, p1, p2, p3}, Lvc/o;->s(FFF)V

    return-void
.end method

.method public put(LJAVARuntime/Vector3;)V
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
            "vector3"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/ShortVector3Buffer;->buffer:Lvc/o;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lvc/o;->u(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public set(IFFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "idx",
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "idx",
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/ShortVector3Buffer;->buffer:Lvc/o;

    invoke-virtual {v0, p1, p2, p3, p4}, Lvc/o;->A(IFFF)V

    return-void
.end method

.method public set(ILJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "idx",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "vector3"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/ShortVector3Buffer;->buffer:Lvc/o;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lvc/o;->C(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public setPosition(I)V
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

    iget-object v0, p0, LJAVARuntime/ShortVector3Buffer;->buffer:Lvc/o;

    invoke-virtual {v0, p1}, Lvc/o;->r(I)V

    return-void
.end method
