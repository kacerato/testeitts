.class public LRb/d;
.super Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements LM9/e;


# static fields
.field public static final g:LM9/c;


# instance fields
.field public final b:Lcom/google/android/filament/IndexBuffer;

.field public c:Z

.field public d:Ljava/lang/Runnable;

.field public e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LRb/d$a;

    invoke-direct {v0}, LRb/d$a;-><init>()V

    sput-object v0, LRb/d;->g:LM9/c;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/IndexBuffer$a;)V
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

    iput-object v0, p0, LRb/d;->d:Ljava/lang/Runnable;

    invoke-static {}, LK8/a;->G()V

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/IndexBuffer$a;->b(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/IndexBuffer;

    move-result-object p1

    iput-object p1, p0, LRb/d;->b:Lcom/google/android/filament/IndexBuffer;

    invoke-virtual {p1}, Lcom/google/android/filament/IndexBuffer;->h()J

    move-result-wide v0

    sget-object p1, LRb/d;->g:LM9/c;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;Z)V

    return-void
.end method

.method public static e(Ljava/nio/ByteBuffer;)J
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

.method public static f(Ljava/nio/FloatBuffer;)J
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

.method public static h(Ljava/nio/ShortBuffer;)J
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

.method public static z(Ljava/nio/FloatBuffer;II)J
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
    invoke-static {p0}, LRb/d;->f(Ljava/nio/FloatBuffer;)J

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

    iget-boolean v0, p0, LRb/d;->c:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isUsed(LRb/d;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LRb/d;->c:Z

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
    .locals 2

    iget-boolean v0, p0, LRb/d;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LRb/d;->b:Lcom/google/android/filament/IndexBuffer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, LRb/d;->e:J

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public i()Lcom/google/android/filament/IndexBuffer;
    .locals 1

    iget-object v0, p0, LRb/d;->b:Lcom/google/android/filament/IndexBuffer;

    return-object v0
.end method

.method public j(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result v0

    int-to-long v1, v0

    invoke-virtual {p0, v1, v2}, LRb/d;->y(J)V

    iget-object v1, p0, LRb/d;->b:Lcom/google/android/filament/IndexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->getNativeAllocationPointer()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/filament/IndexBuffer;->i(Lcom/google/android/filament/Engine;JI)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Ljava/lang/Runnable;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "post"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, LRb/d;->d:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p2, p0, LRb/d;->d:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result v7

    int-to-long v0, v7

    invoke-virtual {p0, v0, v1}, LRb/d;->y(J)V

    iget-object v1, p0, LRb/d;->b:Lcom/google/android/filament/IndexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->getNativeAllocationPointer()J

    move-result-wide v3

    const/4 v6, 0x0

    invoke-static {}, LQb/e;->a()Landroid/os/Handler;

    move-result-object v8

    move v5, v7

    move-object v9, p0

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/filament/IndexBuffer;->k(Lcom/google/android/filament/Engine;JIIILjava/lang/Object;Ljava/lang/Runnable;)V

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

.method public l(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationSizeInBytes()I

    move-result v0

    int-to-long v1, v0

    invoke-virtual {p0, v1, v2}, LRb/d;->y(J)V

    iget-object v1, p0, LRb/d;->b:Lcom/google/android/filament/IndexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationPointer()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/filament/IndexBuffer;->i(Lcom/google/android/filament/Engine;JI)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Ljava/lang/Runnable;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "post"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, LRb/d;->d:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p2, p0, LRb/d;->d:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationSizeInBytes()I

    move-result v7

    int-to-long v0, v7

    invoke-virtual {p0, v0, v1}, LRb/d;->y(J)V

    iget-object v1, p0, LRb/d;->b:Lcom/google/android/filament/IndexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationPointer()J

    move-result-wide v3

    const/4 v6, 0x0

    invoke-static {}, LQb/e;->a()Landroid/os/Handler;

    move-result-object v8

    move v5, v7

    move-object v9, p0

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/filament/IndexBuffer;->k(Lcom/google/android/filament/Engine;JIIILjava/lang/Object;Ljava/lang/Runnable;)V

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

.method public n(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    int-to-long v1, v0

    invoke-virtual {p0, v1, v2}, LRb/d;->y(J)V

    iget-object v1, p0, LRb/d;->b:Lcom/google/android/filament/IndexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getNativeAllocationPointer()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/filament/IndexBuffer;->i(Lcom/google/android/filament/Engine;JI)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

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

.method public o(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Ljava/lang/Runnable;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "post"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, LRb/d;->d:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p2, p0, LRb/d;->d:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result p2

    mul-int/lit8 v6, p2, 0x4

    int-to-long v0, v6

    invoke-virtual {p0, v0, v1}, LRb/d;->y(J)V

    iget-object v0, p0, LRb/d;->b:Lcom/google/android/filament/IndexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getNativeAllocationPointer()J

    move-result-wide v2

    const/4 v5, 0x0

    invoke-static {}, LQb/e;->a()Landroid/os/Handler;

    move-result-object v7

    move v4, v6

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/filament/IndexBuffer;->k(Lcom/google/android/filament/Engine;JIIILjava/lang/Object;Ljava/lang/Runnable;)V

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

.method public p(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v1, v0

    invoke-virtual {p0, v1, v2}, LRb/d;->y(J)V

    iget-object v1, p0, LRb/d;->b:Lcom/google/android/filament/IndexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->getNativeAllocationPointer()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/filament/IndexBuffer;->i(Lcom/google/android/filament/Engine;JI)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Ljava/lang/Runnable;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "post"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, LRb/d;->d:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p2, p0, LRb/d;->d:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity()I

    move-result p2

    mul-int/lit8 v6, p2, 0x2

    int-to-long v0, v6

    invoke-virtual {p0, v0, v1}, LRb/d;->y(J)V

    iget-object v0, p0, LRb/d;->b:Lcom/google/android/filament/IndexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->getNativeAllocationPointer()J

    move-result-wide v2

    const/4 v5, 0x0

    invoke-static {}, LQb/e;->a()Landroid/os/Handler;

    move-result-object v7

    move v4, v6

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/filament/IndexBuffer;->k(Lcom/google/android/filament/Engine;JIIILjava/lang/Object;Ljava/lang/Runnable;)V

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

.method public r(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posUv"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    invoke-static {p1}, LRb/d;->e(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LRb/d;->y(J)V

    iget-object v0, p0, LRb/d;->b:Lcom/google/android/filament/IndexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/filament/IndexBuffer;->l(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, LRb/d;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, LRb/d;->d:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public s(Ljava/nio/ByteBuffer;Ljava/lang/Runnable;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posUv",
            "post"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, LRb/d;->d:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p2, p0, LRb/d;->d:Ljava/lang/Runnable;

    invoke-static {p1}, LRb/d;->e(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LRb/d;->y(J)V

    iget-object v2, p0, LRb/d;->b:Lcom/google/android/filament/IndexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {}, LQb/e;->a()Landroid/os/Handler;

    move-result-object v7

    const/4 v5, 0x0

    move-object v4, p1

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/filament/IndexBuffer;->n(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;IILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Double setBufferAt call, await callback"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u(Ljava/nio/FloatBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posUv"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    invoke-static {p1}, LRb/d;->f(Ljava/nio/FloatBuffer;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LRb/d;->y(J)V

    iget-object v0, p0, LRb/d;->b:Lcom/google/android/filament/IndexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/filament/IndexBuffer;->l(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;)V

    return-void
.end method

.method public v(Ljava/nio/FloatBuffer;IILjava/lang/Runnable;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "posUv",
            "destOffsetInBytes",
            "countInBytes",
            "post"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, LRb/d;->d:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p4, p0, LRb/d;->d:Ljava/lang/Runnable;

    invoke-static {p1, p2, p3}, LRb/d;->z(Ljava/nio/FloatBuffer;II)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LRb/d;->y(J)V

    iget-object v2, p0, LRb/d;->b:Lcom/google/android/filament/IndexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v3

    invoke-static {}, LQb/e;->a()Landroid/os/Handler;

    move-result-object v7

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/filament/IndexBuffer;->n(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;IILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Double setBufferAt call, await callback"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w(Ljava/nio/FloatBuffer;Ljava/lang/Runnable;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posUv",
            "post"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, LRb/d;->d:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p2, p0, LRb/d;->d:Ljava/lang/Runnable;

    invoke-static {p1}, LRb/d;->f(Ljava/nio/FloatBuffer;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LRb/d;->y(J)V

    iget-object v2, p0, LRb/d;->b:Lcom/google/android/filament/IndexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {}, LQb/e;->a()Landroid/os/Handler;

    move-result-object v7

    const/4 v5, 0x0

    move-object v4, p1

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/filament/IndexBuffer;->n(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;IILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Double setBufferAt call, await callback"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x(Ljava/nio/ShortBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posUv"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    invoke-static {p1}, LRb/d;->h(Ljava/nio/ShortBuffer;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LRb/d;->y(J)V

    iget-object v0, p0, LRb/d;->b:Lcom/google/android/filament/IndexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/filament/IndexBuffer;->l(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;)V

    return-void
.end method

.method public final y(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    iget-wide v0, p0, LRb/d;->e:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, LRb/d;->e:J

    return-void
.end method
