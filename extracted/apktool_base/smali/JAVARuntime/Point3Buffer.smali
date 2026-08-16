.class public LJAVARuntime/Point3Buffer;
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
.field public transient buffer:Lvc/n;
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
    new-instance v0, Lvc/n;

    invoke-direct {v0, p1}, Lvc/n;-><init>(I)V

    iput-object v0, p0, LJAVARuntime/Point3Buffer;->buffer:Lvc/n;

    return-void
.end method

.method public constructor <init>(LJAVARuntime/NativeIntBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeIntBuffer"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, LJAVARuntime/NativeIntBuffer;->capacity()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lvc/n;

    iget-object p1, p1, LJAVARuntime/NativeIntBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v0, p1}, Lvc/n;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    iput-object v0, p0, LJAVARuntime/Point3Buffer;->buffer:Lvc/n;

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "nativeIntBuffer capacity must be divisible by 3, in order to be able to store an array of Point3"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "nativeIntBuffer can\'t be null"

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

.method public constructor <init>(Lvc/n;)V
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
    iput-object p1, p0, LJAVARuntime/Point3Buffer;->buffer:Lvc/n;

    .line 4
    invoke-virtual {p1, p0}, Lvc/n;->r(LJAVARuntime/Point3Buffer;)V

    return-void
.end method


# virtual methods
.method public array()[LJAVARuntime/Point3;
    .locals 3

    invoke-virtual {p0}, LJAVARuntime/Point3Buffer;->capacity()I

    move-result v0

    new-array v0, v0, [LJAVARuntime/Point3;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, LJAVARuntime/Point3Buffer;->capacity()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, LJAVARuntime/Point3Buffer;->get(I)LJAVARuntime/Point3;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public capacity()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/Point3Buffer;->buffer:Lvc/n;

    invoke-virtual {v0}, Lvc/n;->b()I

    move-result v0

    return v0
.end method

.method public get(I)LJAVARuntime/Point3;
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

    iget-object v0, p0, LJAVARuntime/Point3Buffer;->buffer:Lvc/n;

    invoke-virtual {v0, p1}, Lvc/n;->e(I)LJAVARuntime/Point3;

    move-result-object p1

    return-object p1
.end method

.method public getFloatBuffer()LJAVARuntime/NativeIntBuffer;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Point3Buffer;->buffer:Lvc/n;

    invoke-virtual {v0}, Lvc/n;->g()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->toJAVARuntime()LJAVARuntime/NativeIntBuffer;

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

    iget-object v0, p0, LJAVARuntime/Point3Buffer;->buffer:Lvc/n;

    invoke-virtual {v0, p1}, Lvc/n;->h(I)I

    move-result p1

    int-to-float p1, p1

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

    iget-object v0, p0, LJAVARuntime/Point3Buffer;->buffer:Lvc/n;

    invoke-virtual {v0, p1}, Lvc/n;->i(I)I

    move-result p1

    int-to-float p1, p1

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

    iget-object v0, p0, LJAVARuntime/Point3Buffer;->buffer:Lvc/n;

    invoke-virtual {v0, p1}, Lvc/n;->j(I)I

    move-result p1

    int-to-float p1, p1

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

    iget-object v0, p0, LJAVARuntime/Point3Buffer;->buffer:Lvc/n;

    invoke-virtual {v0, p1}, Lvc/n;->k(I)V

    return-void
.end method

.method public put(III)V
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
    iget-object v0, p0, LJAVARuntime/Point3Buffer;->buffer:Lvc/n;

    invoke-virtual {v0, p1, p2, p3}, Lvc/n;->l(III)V

    return-void
.end method

.method public put(LJAVARuntime/Point3;)V
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
            "point3"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Point3Buffer;->buffer:Lvc/n;

    invoke-virtual {v0, p1}, Lvc/n;->m(LJAVARuntime/Point3;)V

    return-void
.end method

.method public set(IIII)V
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
    iget-object v0, p0, LJAVARuntime/Point3Buffer;->buffer:Lvc/n;

    invoke-virtual {v0, p1, p2, p3, p4}, Lvc/n;->o(IIII)V

    return-void
.end method

.method public set(ILJAVARuntime/Point3;)V
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
            "point3"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Point3Buffer;->buffer:Lvc/n;

    invoke-virtual {v0, p1, p2}, Lvc/n;->p(ILJAVARuntime/Point3;)V

    return-void
.end method
