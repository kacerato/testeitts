.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;
.super Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements LM9/e;


# static fields
.field public static final e:LM9/c;


# instance fields
.field public b:Z

.field public c:Ljava/lang/Runnable;

.field public d:[J

.field private final vertexBuffer:Lcom/google/android/filament/VertexBuffer;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer$a;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->e:LM9/c;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/VertexBuffer$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->d:[J

    invoke-static {}, LK8/a;->G()V

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/VertexBuffer$b;->d(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/VertexBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-virtual {p1}, Lcom/google/android/filament/VertexBuffer;->j()J

    move-result-wide v0

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->e:LM9/c;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;Z)V

    return-void
.end method

.method private static e(Ljava/nio/ByteBuffer;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    int-to-long v0, p0

    :goto_0
    return-wide v0
.end method

.method private static f(Ljava/nio/FloatBuffer;)J
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method private static h(Ljava/nio/ShortBuffer;)J
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public static z(Ljava/nio/ByteBuffer;II)J
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "destOffsetInBytes",
            "countInBytes"
        }
    .end annotation

    if-lez p2, :cond_0

    int-to-long v0, p2

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->e(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    int-to-long p0, p1

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    add-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public destroyChannel()LM9/a;
    .locals 1

    sget-object v0, LM9/a;->GPU:LM9/a;

    return-object v0
.end method

.method public destroyImmediate()V
    .locals 2

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->b:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isUsed(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->b:Z

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "Stills in use"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public destroyPriority()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public gpuUsageType()LM9/d;
    .locals 1

    sget-object v0, LM9/d;->MODEL:LM9/d;

    return-object v0
.end method

.method public gpuUsedBytes()J
    .locals 7

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->b:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->d:[J

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-wide v5, v0, v4

    add-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v1
.end method

.method public final i(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferIndex"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->d:[J

    array-length v1, v0

    if-ge p1, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [J

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->d:[J

    return-void
.end method

.method public j()Lcom/google/android/filament/VertexBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    return-object v0
.end method

.method public k(ILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "value"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result v5

    int-to-long v0, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->y(IJ)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->getNativeAllocationPointer()J

    move-result-wide v3

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filament/VertexBuffer;->l(Lcom/google/android/filament/Engine;IJI)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(ILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Ljava/lang/Runnable;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "value",
            "post"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result v8

    int-to-long v0, v8

    invoke-virtual {p0, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->y(IJ)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->getNativeAllocationPointer()J

    move-result-wide v4

    const/4 v7, 0x0

    invoke-static {}, LQb/e;->a()Landroid/os/Handler;

    move-result-object v9

    move v3, p1

    move v6, v8

    move-object v10, p0

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/filament/VertexBuffer;->n(Lcom/google/android/filament/Engine;IJIIILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Double setBufferAt call, await callback"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "value"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationSizeInBytes()I

    move-result v5

    int-to-long v0, v5

    invoke-virtual {p0, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->y(IJ)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationPointer()J

    move-result-wide v3

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filament/VertexBuffer;->l(Lcom/google/android/filament/Engine;IJI)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Ljava/lang/Runnable;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "value",
            "post"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationSizeInBytes()I

    move-result v8

    int-to-long v0, v8

    invoke-virtual {p0, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->y(IJ)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationPointer()J

    move-result-wide v4

    const/4 v7, 0x0

    invoke-static {}, LQb/e;->a()Landroid/os/Handler;

    move-result-object v9

    move v3, p1

    move v6, v8

    move-object v10, p0

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/filament/VertexBuffer;->n(Lcom/google/android/filament/Engine;IJIIILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Double setBufferAt call, await callback"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nativeUsageType()LM9/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public nativeUsedBytes()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public o(ILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "value"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v6, v0, 0x2

    int-to-long v0, v6

    invoke-virtual {p0, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->y(IJ)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->getNativeAllocationPointer()J

    move-result-wide v4

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/filament/VertexBuffer;->l(Lcom/google/android/filament/Engine;IJI)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p(ILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Ljava/lang/Runnable;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "value",
            "post"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity()I

    move-result p3

    mul-int/lit8 v7, p3, 0x2

    int-to-long v0, v7

    invoke-virtual {p0, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->y(IJ)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->getNativeAllocationPointer()J

    move-result-wide v3

    const/4 v6, 0x0

    invoke-static {}, LQb/e;->a()Landroid/os/Handler;

    move-result-object v8

    move v2, p1

    move v5, v7

    move-object v9, p0

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/filament/VertexBuffer;->n(Lcom/google/android/filament/Engine;IJIIILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Double setBufferAt call, await callback"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(ILjava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->e(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->y(IJ)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/filament/VertexBuffer;->o(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;)V

    return-void
.end method

.method public r(ILjava/nio/ByteBuffer;IILjava/lang/Runnable;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "value",
            "destOffsetInBytes",
            "countInBytes",
            "post"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p5, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    invoke-static {p2, p3, p4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->z(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->y(IJ)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v3

    invoke-static {}, LQb/e;->a()Landroid/os/Handler;

    move-result-object v8

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v9, p0

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/filament/VertexBuffer;->q(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;IILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Double setBufferAt call, await callback"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public s(ILjava/nio/ByteBuffer;Ljava/lang/Runnable;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "value",
            "post"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->e(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->y(IJ)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v3

    const/4 v7, 0x0

    invoke-static {}, LQb/e;->a()Landroid/os/Handler;

    move-result-object v8

    const/4 v6, 0x0

    move v4, p1

    move-object v5, p2

    move-object v9, p0

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/filament/VertexBuffer;->q(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;IILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Double setBufferAt call, await callback"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u(ILjava/nio/FloatBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->f(Ljava/nio/FloatBuffer;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->y(IJ)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/filament/VertexBuffer;->o(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;)V

    return-void
.end method

.method public v(ILjava/nio/FloatBuffer;Ljava/lang/Runnable;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "value",
            "post"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->f(Ljava/nio/FloatBuffer;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->y(IJ)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v3

    const/4 v7, 0x0

    invoke-static {}, LQb/e;->a()Landroid/os/Handler;

    move-result-object v8

    const/4 v6, 0x0

    move v4, p1

    move-object v5, p2

    move-object v9, p0

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/filament/VertexBuffer;->q(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;IILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Double setBufferAt call, await callback"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w(ILjava/nio/ShortBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->h(Ljava/nio/ShortBuffer;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->y(IJ)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/filament/VertexBuffer;->o(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;)V

    return-void
.end method

.method public x(ILjava/nio/ShortBuffer;Ljava/lang/Runnable;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "value",
            "post"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->h(Ljava/nio/ShortBuffer;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->y(IJ)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v3

    const/4 v7, 0x0

    invoke-static {}, LQb/e;->a()Landroid/os/Handler;

    move-result-object v8

    const/4 v6, 0x0

    move v4, p1

    move-object v5, p2

    move-object v9, p0

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/filament/VertexBuffer;->q(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;IILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Double setBufferAt call, await callback"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final y(IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bufferIndex",
            "bytes"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->i(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->d:[J

    aget-wide v1, v0, p1

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    aput-wide p2, v0, p1

    return-void
.end method
