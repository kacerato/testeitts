.class public abstract Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;
.super Lcom/itsmagic/engine/Engines/Native/Base/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;,
        Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$b;
    }
.end annotation


# static fields
.field public static final p:I = 0x55f0

.field public static final q:Ljava/lang/Object;

.field public static final r:Lwc/b;

.field public static s:J = 0x0L

.field public static final t:I = 0x55f0


# instance fields
.field public b:J

.field public c:Z

.field public d:F

.field public e:F

.field public g:F

.field public i:F

.field public j:F

.field public k:I

.field public l:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

.field public m:Z

.field public n:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$b;

.field public final o:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->q:Ljava/lang/Object;

    new-instance v0, Lwc/a;

    new-instance v1, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$a;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$a;-><init>()V

    invoke-direct {v0, v1}, Lwc/a;-><init>(Lwc/b$a;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->r:Lwc/b;

    const-string v0, "native-sound-emitter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeTryInit()J

    move-result-wide v0

    sput-wide v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->s:J

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v1, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x226

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->N(Ljava/lang/String;I)I

    move-result v0

    sget-wide v1, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->s:J

    const/16 v3, 0x55f0

    invoke-static {v1, v2, v3, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeInit(JII)J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->d:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->e:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->g:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->i:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->j:F

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Stopped:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->l:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static D()I
    .locals 1

    const/16 v0, 0x55f0

    return v0
.end method

.method public static N(Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "fallback"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return p1
.end method

.method public static synthetic access$100()V
    .locals 0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->z()V

    return-void
.end method

.method private callTryCreate()J
    .locals 3

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->z()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeTryCreate()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic e()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic f()J
    .locals 2

    sget-wide v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->s:J

    return-wide v0
.end method

.method public static native nativeAllocImmediate(JJJI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bufferPointer",
            "soundPointer",
            "pcmPointer",
            "frameCount"
        }
    .end annotation
.end method

.method public static native nativeAllocStream(JJII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bufferPointer",
            "soundPointer",
            "totalFrames",
            "ringBufferFrames"
        }
    .end annotation
.end method

.method public static native nativeDeleteBuffer(JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bufferPointer",
            "soundPointer"
        }
    .end annotation
.end method

.method public static native nativeGetLeftVolume(J)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method public static native nativeGetPitch(J)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method public static native nativeGetRightVolume(J)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method public static native nativeGetSpeed(J)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method public static native nativeGetSteps(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method public static native nativeInit(JII)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "sampleRate",
            "framesPerBurst"
        }
    .end annotation
.end method

.method public static native nativeIsActive(J)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferPointer"
        }
    .end annotation
.end method

.method public static native nativeIsFinished(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method public static native nativeIsLoop(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method public static native nativeIsPlaying(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method public static native nativeSetLeftVolume(JF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "value"
        }
    .end annotation
.end method

.method public static native nativeSetLoop(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "value"
        }
    .end annotation
.end method

.method public static native nativeSetPitch(JF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "value"
        }
    .end annotation
.end method

.method public static native nativeSetRightVolume(JF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "value"
        }
    .end annotation
.end method

.method public static native nativeSetSpeed(JF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "value"
        }
    .end annotation
.end method

.method public static native nativeSetSteps(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "value"
        }
    .end annotation
.end method

.method public static native nativeSetTotalFrames(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "value"
        }
    .end annotation
.end method

.method public static native nativeStart(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method public static native nativeStreamReset(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "soundPointer",
            "frameOffset"
        }
    .end annotation
.end method

.method public static native nativeStreamWrite(JJII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "soundPointer",
            "pcmPointer",
            "startFrame",
            "frameCount"
        }
    .end annotation
.end method

.method public static native nativeTryCreate()J
.end method

.method public static native nativeTryInit()J
.end method

.method public static native turnOffEngine(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method public static z()V
    .locals 4

    sget-wide v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->s:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeIsActive(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v1, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->N(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeTryInit()J

    move-result-wide v1

    sput-wide v1, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->s:J

    const/16 v3, 0x55f0

    invoke-static {v1, v2, v3, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeInit(JII)J

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->k()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->c:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public B()F
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->k:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->A()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x46abe000    # 22000.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public C()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public E()Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->n:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$b;

    return-object v0
.end method

.method public F()Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->x()I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->l:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    return-object v0
.end method

.method public G()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->k:I

    return v0
.end method

.method public H()F
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->k:I

    if-lez v0, :cond_0

    int-to-float v0, v0

    const v1, 0x46abe000    # 22000.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final I(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pcmData",
            "totalFrames"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->k:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->callTryCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    iget p2, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->k:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->h(JLcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->c:Z

    sget-object p1, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->r:Lwc/b;

    new-instance p2, Lwc/c;

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    invoke-direct {p2, p0, v0, v1}, Lwc/c;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/a;J)V

    invoke-virtual {p1, p2}, Lwc/b;->a(Lwc/c;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->updateNativeState()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Sound emitter already initialized"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final J(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "totalFrames",
            "ringBufferFrames"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->k:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->callTryCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    iget p1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->k:I

    const/4 v2, 0x1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->i(JII)V

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->c:Z

    sget-object p1, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->r:Lwc/b;

    new-instance p2, Lwc/c;

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    invoke-direct {p2, p0, v0, v1}, Lwc/c;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/a;J)V

    invoke-virtual {p1, p2}, Lwc/b;->a(Lwc/c;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->updateNativeState()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Sound emitter already initialized"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final K()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public L()Z
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->c:Z

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->x()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public M()V
    .locals 0

    return-void
.end method

.method public O(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "second"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->k:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x38d1b717    # 1.0E-4f

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->H()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr p1, v0

    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->k:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->r(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->M()V

    return-void
.end method

.method public P(Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onPlayEndListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->n:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$b;

    return-void
.end method

.method public Q(Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Playing:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->l()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->l:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    if-ne v2, p1, :cond_1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->l:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->l()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->u()V

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->updateNativeState()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->M()V

    return-void
.end method

.method public S(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->g:F

    invoke-virtual {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->T(FFF)V

    return-void
.end method

.method public T(FFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "right",
            "volume"
        }
    .end annotation

    iput p3, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->g:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->d:F

    iput p2, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->e:F

    mul-float/2addr p1, p3

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->m(F)V

    mul-float/2addr p2, p3

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->p(F)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->updateNativeState()V

    return-void
.end method

.method public final U(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameOffset"
        }
    .end annotation

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->v(JI)V

    return-void
.end method

.method public final V(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pcmData",
            "startFrame",
            "frameCount"
        }
    .end annotation

    if-gtz p3, :cond_0

    return-void

    :cond_0
    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->w(JLcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;II)V

    return-void
.end method

.method public final W()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sound emitter is destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final X()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sound emitter is not prepared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Y()V
    .locals 0

    return-void
.end method

.method public final Z(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->r(I)V

    return-void
.end method

.method public final a0(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalFrames"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->k:I

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->c:Z

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->k:I

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->s(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b0()V
    .locals 4

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->c:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->X()V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->W()V

    :cond_2
    return-void
.end method

.method public bytesPerItem()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Stopped:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->l:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->M()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->destroyImmediate()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->n:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$b;

    return-void
.end method

.method public destroyImmediate()V
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->r:Lwc/b;

    invoke-virtual {v1, p0}, Lwc/b;->b(Lcom/itsmagic/engine/Engines/Native/Base/a;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLeftVolume()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->d:F

    return v0
.end method

.method public getPitch()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->j:F

    return v0
.end method

.method public getPointerCritical()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    return-wide v0
.end method

.method public getRightVolume()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->e:F

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    const/16 v0, 0x55f0

    return v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->i:F

    return v0
.end method

.method public getVolume()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->g:F

    return v0
.end method

.method public gpuUsedBytes()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final h(JLcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "soundPointer",
            "pcmData",
            "frameCount"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->W()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->z()V

    sget-wide v1, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->s:J

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v5

    move-wide v3, p1

    move v7, p4

    invoke-static/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeAllocImmediate(JJJI)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final i(JII)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "soundPointer",
            "totalFrames",
            "ringBufferFrames"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->W()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->z()V

    sget-wide v1, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->s:J

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeAllocStream(JJII)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isLoop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->m:Z

    return v0
.end method

.method public isNative()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPaused()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->l:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    sget-object v1, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Paused:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->x()I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->l:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    sget-object v1, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Playing:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStopped()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->l:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    sget-object v1, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Stopped:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()I
    .locals 5

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->c:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->z()V

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeIsFinished(J)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final k()I
    .locals 3

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b0()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->z()V

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeGetSteps(J)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l()Z
    .locals 7

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->c:Z

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->z()V

    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    invoke-static {v3, v4}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeIsPlaying(J)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v2, v3

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final m(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b0()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->z()V

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeSetLeftVolume(JF)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final n(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b0()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->z()V

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeSetLoop(JI)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public nativeUsedBytes()J
    .locals 2

    const-wide/16 v0, 0x44

    return-wide v0
.end method

.method public final o(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b0()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->z()V

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeSetPitch(JF)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final p(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b0()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->z()V

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeSetRightVolume(JF)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pause()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Paused:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->Q(Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;)V

    return-void
.end method

.method public play()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Playing:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->Q(Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;)V

    return-void
.end method

.method public final q(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b0()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->z()V

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeSetSpeed(JF)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final r(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b0()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->z()V

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    iget v3, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->k:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeSetSteps(JI)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final s(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b0()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->z()V

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeSetTotalFrames(JI)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public seekTo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msec"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->O(F)V

    return-void
.end method

.method public setLeftVolume(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftVolume"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->d:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->g:F

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->m(F)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->updateNativeState()V

    return-void
.end method

.method public setLoop(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loop"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->m:Z

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->n(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->M()V

    return-void
.end method

.method public setPitch(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pitch"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->j:F

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->o(F)V

    return-void
.end method

.method public setRightVolume(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rightVolume"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->e:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->g:F

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->p(F)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->updateNativeState()V

    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->i:F

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->q(F)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->updateNativeState()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->M()V

    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->g:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->d:F

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->m(F)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->e:F

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->p(F)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->updateNativeState()V

    return-void
.end method

.method public stop()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Stopped:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->Q(Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;)V

    return-void
.end method

.method public final u()V
    .locals 3

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b0()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->z()V

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeStart(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final updateNativeState()V
    .locals 5

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->c:Z

    if-eqz v1, :cond_6

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->z()V

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeIsFinished(J)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->y(I)I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->c:Z

    if-eqz v1, :cond_5

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->l:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeSetSteps(JI)V

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    invoke-static {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeSetSpeed(JF)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_3
    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    invoke-static {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeSetSpeed(JF)V

    goto :goto_0

    :cond_4
    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    iget v3, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->i:F

    invoke-static {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeSetSpeed(JF)V

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b:J

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeStart(J)V

    :goto_0
    monitor-exit v0

    return-void

    :cond_5
    :goto_1
    monitor-exit v0

    return-void

    :cond_6
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final v(JI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "soundPointer",
            "frameOffset"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b0()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->z()V

    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeStreamReset(JI)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final w(JLcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;II)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "soundPointer",
            "pcmData",
            "startFrame",
            "frameCount"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->b0()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->z()V

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v3

    move-wide v1, p1

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeStreamWrite(JJII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final x()I
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->j()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->y(I)I

    move-result v0

    return v0
.end method

.method public final y(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "finishedCount"
        }
    .end annotation

    const/4 v0, 0x0

    if-lez p1, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->l:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    sget-object v2, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Playing:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->n:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$b;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->m:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Stopped:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->l:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->n:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$b;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$b;->b()V

    :cond_3
    return p1

    :cond_4
    :goto_2
    return v0
.end method
