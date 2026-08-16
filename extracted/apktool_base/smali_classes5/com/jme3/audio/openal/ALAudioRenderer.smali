.class public Lcom/jme3/audio/openal/ALAudioRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/audio/AudioRenderer;
.implements Ljava/lang/Runnable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BUFFER_SIZE:I = 0x89d0

.field private static final MAX_NUM_CHANNELS:I = 0x40

.field private static final STREAMING_BUFFER_COUNT:I = 0x5

.field private static final THREAD_NAME:Ljava/lang/String; = "jME3 Audio Decoder"

.field private static final UPDATE_RATE:F = 0.05f

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final al:Lcom/jme3/audio/openal/AL;

.field private final alc:Lcom/jme3/audio/openal/ALC;

.field private final arrayBuf:[B

.field private audioDisabled:Z

.field private channelSources:[Lcom/jme3/audio/AudioSource;

.field private channels:[I

.field private final decoderThread:Ljava/lang/Thread;

.field private final efx:Lcom/jme3/audio/openal/EFX;

.field private environment:Lcom/jme3/audio/Environment;

.field private final fb:Ljava/nio/FloatBuffer;

.field private final freeChannels:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ib:Ljava/nio/IntBuffer;

.field private listener:Lcom/jme3/audio/Listener;

.field private final nativeBuf:Ljava/nio/ByteBuffer;

.field private nextChannelIndex:I

.field private final objManager:Lcom/jme3/util/NativeObjectManager;

.field private reverbFx:I

.field private reverbFxSlot:I

.field private supportDisconnect:Z

.field private supportEfx:Z

.field private supportPauseDevice:Z

.field private final threadLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/audio/openal/ALAudioRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/audio/openal/AL;Lcom/jme3/audio/openal/ALC;Lcom/jme3/audio/openal/EFX;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/util/NativeObjectManager;

    invoke-direct {v0}, Lcom/jme3/util/NativeObjectManager;-><init>()V

    iput-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->objManager:Lcom/jme3/util/NativeObjectManager;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->fb:Ljava/nio/FloatBuffer;

    const v0, 0x89d0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->nativeBuf:Ljava/nio/ByteBuffer;

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->arrayBuf:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->nextChannelIndex:I

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->freeChannels:Ljava/util/ArrayDeque;

    const/4 v1, -0x1

    iput v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFx:I

    iput v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFxSlot:I

    iput-boolean v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->audioDisabled:Z

    iput-boolean v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->supportEfx:Z

    iput-boolean v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->supportPauseDevice:Z

    iput-boolean v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->supportDisconnect:Z

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "jME3 Audio Decoder"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->decoderThread:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->threadLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    iput-object p2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->alc:Lcom/jme3/audio/openal/ALC;

    iput-object p3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    return-void
.end method

.method private applyListenerPosition(Lcom/jme3/audio/Listener;)V
    .locals 4

    invoke-virtual {p1}, Lcom/jme3/audio/Listener;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    const/16 v3, 0x1004

    invoke-interface {v0, v3, v1, v2, p1}, Lcom/jme3/audio/openal/AL;->alListener3f(IFFF)V

    return-void
.end method

.method private applyListenerRotation(Lcom/jme3/audio/Listener;)V
    .locals 4

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1}, Lcom/jme3/audio/Listener;->getDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v2}, Lcom/jme3/audio/Listener;->getUp(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->fb:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->fb:Ljava/nio/FloatBuffer;

    iget v3, v1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v3, v1, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->fb:Ljava/nio/FloatBuffer;

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->fb:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/16 v1, 0x100f

    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->fb:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v2}, Lcom/jme3/audio/openal/AL;->alListener(ILjava/nio/FloatBuffer;)V

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method

.method private applyListenerVelocity(Lcom/jme3/audio/Listener;)V
    .locals 4

    invoke-virtual {p1}, Lcom/jme3/audio/Listener;->getVelocity()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    const/16 v3, 0x1006

    invoke-interface {v0, v3, v1, v2, p1}, Lcom/jme3/audio/openal/AL;->alListener3f(IFFF)V

    return-void
.end method

.method private applyListenerVolume(Lcom/jme3/audio/Listener;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/16 v1, 0x100a

    invoke-virtual {p1}, Lcom/jme3/audio/Listener;->getVolume()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/jme3/audio/openal/AL;->alListenerf(IF)V

    return-void
.end method

.method private applySourceDirectionalState(ILcom/jme3/audio/AudioSource;)V
    .locals 10

    invoke-interface {p2}, Lcom/jme3/audio/AudioSource;->isDirectional()Z

    move-result v0

    const/16 v1, 0x1022

    const/16 v2, 0x1002

    const/16 v3, 0x1001

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/jme3/audio/AudioSource;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v4, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    iget v7, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v8, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v9, v0, Lcom/jme3/math/Vector3f;->z:F

    const/16 v6, 0x1005

    move v5, p1

    invoke-interface/range {v4 .. v9}, Lcom/jme3/audio/openal/AL;->alSource3f(IIFFF)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    invoke-interface {p2}, Lcom/jme3/audio/AudioSource;->getInnerAngle()F

    move-result v4

    invoke-interface {v0, p1, v3, v4}, Lcom/jme3/audio/openal/AL;->alSourcef(IIF)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    invoke-interface {p2}, Lcom/jme3/audio/AudioSource;->getOuterAngle()F

    move-result p2

    invoke-interface {v0, p1, v2, p2}, Lcom/jme3/audio/openal/AL;->alSourcef(IIF)V

    iget-object p2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v1, v0}, Lcom/jme3/audio/openal/AL;->alSourcef(IIF)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/high16 v0, 0x43b40000    # 360.0f

    invoke-interface {p2, p1, v3, v0}, Lcom/jme3/audio/openal/AL;->alSourcef(IIF)V

    iget-object p2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    invoke-interface {p2, p1, v2, v0}, Lcom/jme3/audio/openal/AL;->alSourcef(IIF)V

    iget-object p2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p2, p1, v1, v0}, Lcom/jme3/audio/openal/AL;->alSourcef(IIF)V

    :goto_0
    return-void
.end method

.method private applySourceDryFilter(ILcom/jme3/audio/AudioSource;)V
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->supportEfx:Z

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/jme3/audio/AudioSource;->getDryFilter()Lcom/jme3/audio/Filter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/jme3/audio/AudioSource;->getDryFilter()Lcom/jme3/audio/Filter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/jme3/audio/openal/ALAudioRenderer;->updateFilter(Lcom/jme3/audio/Filter;)V

    :cond_0
    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->getId()I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const v1, 0x20005

    invoke-interface {v0, p1, v1, p2}, Lcom/jme3/audio/openal/AL;->alSourcei(III)V

    :cond_2
    return-void
.end method

.method private applySourceLooping(ILcom/jme3/audio/AudioSource;Z)V
    .locals 1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    invoke-interface {p2}, Lcom/jme3/audio/AudioSource;->isLooping()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    invoke-interface {p2}, Lcom/jme3/audio/AudioSource;->getAudioData()Lcom/jme3/audio/AudioData;

    move-result-object p2

    instance-of p2, p2, Lcom/jme3/audio/AudioStream;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    iget-object p2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/16 p3, 0x1007

    invoke-interface {p2, p1, p3, v0}, Lcom/jme3/audio/openal/AL;->alSourcei(III)V

    return-void
.end method

.method private applySourcePositionalState(ILcom/jme3/audio/AudioSource;)V
    .locals 8

    invoke-interface {p2}, Lcom/jme3/audio/AudioSource;->isPositional()Z

    move-result v0

    const/16 v6, 0x202

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/jme3/audio/AudioSource;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-interface {p2}, Lcom/jme3/audio/AudioSource;->getVelocity()Lcom/jme3/math/Vector3f;

    move-result-object v7

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    iget v3, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v4, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v5, v0, Lcom/jme3/math/Vector3f;->z:F

    const/16 v2, 0x1004

    move-object v0, v1

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/jme3/audio/openal/AL;->alSource3f(IIFFF)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    iget v3, v7, Lcom/jme3/math/Vector3f;->x:F

    iget v4, v7, Lcom/jme3/math/Vector3f;->y:F

    iget v5, v7, Lcom/jme3/math/Vector3f;->z:F

    const/16 v2, 0x1006

    invoke-interface/range {v0 .. v5}, Lcom/jme3/audio/openal/AL;->alSource3f(IIFFF)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/16 v1, 0x1020

    invoke-interface {p2}, Lcom/jme3/audio/AudioSource;->getRefDistance()F

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/jme3/audio/openal/AL;->alSourcef(IIF)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/16 v1, 0x1023

    invoke-interface {p2}, Lcom/jme3/audio/AudioSource;->getMaxDistance()F

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/jme3/audio/openal/AL;->alSourcef(IIF)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v6, v1}, Lcom/jme3/audio/openal/AL;->alSourcei(III)V

    iget-boolean v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->supportEfx:Z

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/jme3/audio/AudioSource;->isReverbEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v2, 0x20006

    const/4 v3, 0x0

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/jme3/audio/openal/AL;->alSource3i(IIIII)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/jme3/audio/openal/ALAudioRenderer;->applySourceReverbFilter(ILcom/jme3/audio/AudioSource;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v2, 0x1004

    const/4 v3, 0x0

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/jme3/audio/openal/AL;->alSource3f(IIFFF)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/16 v2, 0x1006

    invoke-interface/range {v0 .. v5}, Lcom/jme3/audio/openal/AL;->alSource3f(IIFFF)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v6, v1}, Lcom/jme3/audio/openal/AL;->alSourcei(III)V

    iget-boolean v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->supportEfx:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v2, 0x20006

    const/4 v3, 0x0

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/jme3/audio/openal/AL;->alSource3i(IIIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method private applySourceReverbFilter(ILcom/jme3/audio/AudioSource;)V
    .locals 6

    iget-boolean v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->supportEfx:Z

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/jme3/audio/AudioSource;->isReverbEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/jme3/audio/AudioSource;->getReverbFilter()Lcom/jme3/audio/Filter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/jme3/audio/AudioSource;->getReverbFilter()Lcom/jme3/audio/Filter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/jme3/audio/openal/ALAudioRenderer;->updateFilter(Lcom/jme3/audio/Filter;)V

    :cond_0
    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->getId()I

    move-result p2

    :goto_0
    move v5, p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    iget v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFxSlot:I

    const/4 v4, 0x0

    const v2, 0x20006

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/jme3/audio/openal/AL;->alSource3i(IIIII)V

    :cond_2
    return-void
.end method

.method private attachAudioToSource(ILcom/jme3/audio/AudioData;Z)V
    .locals 1

    instance-of v0, p2, Lcom/jme3/audio/AudioBuffer;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/jme3/audio/AudioBuffer;

    invoke-direct {p0, p1, p2}, Lcom/jme3/audio/openal/ALAudioRenderer;->attachBufferToSource(ILcom/jme3/audio/AudioBuffer;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/jme3/audio/AudioStream;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/jme3/audio/AudioStream;

    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/audio/openal/ALAudioRenderer;->attachStreamToSource(ILcom/jme3/audio/AudioStream;Z)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method private attachBufferToSource(ILcom/jme3/audio/AudioBuffer;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/16 v1, 0x1009

    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->getId()I

    move-result p2

    invoke-interface {v0, p1, v1, p2}, Lcom/jme3/audio/openal/AL;->alSourcei(III)V

    return-void
.end method

.method private attachStreamToSource(ILcom/jme3/audio/AudioStream;Z)V
    .locals 8

    invoke-virtual {p2}, Lcom/jme3/audio/AudioStream;->isEOF()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Lcom/jme3/audio/AudioStream;->setTime(F)V

    :cond_0
    invoke-virtual {p2}, Lcom/jme3/audio/AudioStream;->getIds()[I

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_6

    aget v5, v0, v3

    invoke-direct {p0, p2, v5}, Lcom/jme3/audio/openal/ALAudioRenderer;->fillBuffer(Lcom/jme3/audio/AudioStream;I)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p2}, Lcom/jme3/audio/AudioStream;->isEOF()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    if-nez v6, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p2, v1}, Lcom/jme3/audio/AudioStream;->setTime(F)V

    invoke-direct {p0, p2, v5}, Lcom/jme3/audio/openal/ALAudioRenderer;->fillBuffer(Lcom/jme3/audio/AudioStream;I)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Looping streaming source was rewound but could not be filled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    iget-object v4, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    iget-object v5, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-interface {v4, p1, v6, v5}, Lcom/jme3/audio/openal/AL;->alSourceQueueBuffers(IILjava/nio/IntBuffer;)V

    move v4, v6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    if-eqz v4, :cond_7

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No valid data could be read from stream"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkDead()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->decoderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Decoding thread is terminated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkDevice()V
    .locals 3

    invoke-direct {p0}, Lcom/jme3/audio/openal/ALAudioRenderer;->isDeviceDisconnected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Audio device disconnected! Attempting to restart audio renderer..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/jme3/audio/openal/ALAudioRenderer;->restartAudioRenderer()V

    :cond_0
    return-void
.end method

.method private clearChannel(I)V
    .locals 8

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channelSources:[Lcom/jme3/audio/AudioSource;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channels:[I

    aget v3, v1, p1

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    invoke-interface {v1, v3}, Lcom/jme3/audio/openal/AL;->alSourceStop(I)V

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/16 v2, 0x1009

    const/4 v4, 0x0

    invoke-interface {v1, v3, v2, v4}, Lcom/jme3/audio/openal/AL;->alSourcei(III)V

    iget-boolean v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->supportEfx:Z

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/jme3/audio/AudioSource;->getDryFilter()Lcom/jme3/audio/Filter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const v2, 0x20005

    invoke-interface {v1, v3, v2, v4}, Lcom/jme3/audio/openal/AL;->alSourcei(III)V

    :cond_0
    invoke-interface {v0}, Lcom/jme3/audio/AudioSource;->isPositional()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/jme3/audio/AudioSource;->isReverbEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v4, 0x20006

    const/4 v5, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/jme3/audio/openal/AL;->alSource3i(IIIII)V

    :cond_1
    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channelSources:[Lcom/jme3/audio/AudioSource;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_2
    return-void
.end method

.method private convertStatus(I)Lcom/jme3/audio/AudioSource$Status;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized OpenAL state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p1, Lcom/jme3/audio/AudioSource$Status;->Paused:Lcom/jme3/audio/AudioSource$Status;

    return-object p1

    :pswitch_1
    sget-object p1, Lcom/jme3/audio/AudioSource$Status;->Playing:Lcom/jme3/audio/AudioSource$Status;

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/jme3/audio/AudioSource$Status;->Stopped:Lcom/jme3/audio/AudioSource$Status;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1011
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private destroyOpenAL()V
    .locals 5

    iget-boolean v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->audioDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channelSources:[Lcom/jme3/audio/AudioSource;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/jme3/audio/openal/ALAudioRenderer;->clearChannel(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channels:[I

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channels:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-interface {v1, v2, v3}, Lcom/jme3/audio/openal/AL;->alDeleteSources(ILjava/nio/IntBuffer;)V

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->objManager:Lcom/jme3/util/NativeObjectManager;

    invoke-virtual {v1, p0}, Lcom/jme3/util/NativeObjectManager;->deleteAllObjects(Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->supportEfx:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFx:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    iget v4, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFx:I

    invoke-virtual {v1, v0, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    iget-object v4, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-interface {v1, v3, v4}, Lcom/jme3/audio/openal/EFX;->alDeleteEffects(ILjava/nio/IntBuffer;)V

    iput v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFx:I

    :cond_3
    iget v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFxSlot:I

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    iget v4, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFxSlot:I

    invoke-virtual {v1, v0, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    iget-object v4, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-interface {v1, v3, v4}, Lcom/jme3/audio/openal/EFX;->alDeleteAuxiliaryEffectSlots(ILjava/nio/IntBuffer;)V

    iput v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFxSlot:I

    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channels:[I

    iput-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channelSources:[Lcom/jme3/audio/AudioSource;

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->freeChannels:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iput v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->nextChannelIndex:I

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->alc:Lcom/jme3/audio/openal/ALC;

    invoke-interface {v0}, Lcom/jme3/audio/openal/ALC;->destroyALC()V

    sget-object v0, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "OpenAL context destroyed."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method private enumerateAvailableChannels()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    invoke-interface {v3}, Lcom/jme3/audio/openal/AL;->alGenSources()I

    move-result v3

    iget-object v4, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    invoke-interface {v4}, Lcom/jme3/audio/openal/AL;->alGetError()I

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channels:[I

    :goto_2
    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channels:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    array-length v0, v2

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channels:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/jme3/audio/AudioSource;

    iput-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channelSources:[Lcom/jme3/audio/AudioSource;

    return-void
.end method

.method private fillBuffer(Lcom/jme3/audio/AudioStream;I)Z
    .locals 7

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->arrayBuf:[B

    array-length v2, v1

    if-ge v5, v2, :cond_0

    array-length v2, v1

    sub-int/2addr v2, v5

    invoke-virtual {p1, v1, v5, v2}, Lcom/jme3/audio/AudioStream;->readSamples([BII)I

    move-result v1

    if-lez v1, :cond_0

    add-int/2addr v5, v1

    goto :goto_0

    :cond_0
    if-nez v5, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->nativeBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->nativeBuf:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->arrayBuf:[B

    invoke-virtual {v1, v2, v0, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->nativeBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-direct {p0, p1}, Lcom/jme3/audio/openal/ALAudioRenderer;->getOpenALFormat(Lcom/jme3/audio/AudioData;)I

    move-result v3

    invoke-virtual {p1}, Lcom/jme3/audio/AudioData;->getSampleRate()I

    move-result v6

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    iget-object v4, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->nativeBuf:Ljava/nio/ByteBuffer;

    move v2, p2

    invoke-interface/range {v1 .. v6}, Lcom/jme3/audio/openal/AL;->alBufferData(IILjava/nio/ByteBuffer;II)V

    const/4 p1, 0x1

    return p1
.end method

.method private fillStreamingSource(ILcom/jme3/audio/AudioStream;Z)Z
    .locals 9

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/16 v1, 0x1016

    invoke-interface {v0, p1, v1}, Lcom/jme3/audio/openal/AL;->alGetSourcei(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v5, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v5}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v5, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    iget-object v7, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-interface {v5, p1, v6, v7}, Lcom/jme3/audio/openal/AL;->alSourceUnqueueBuffers(IILjava/nio/IntBuffer;)V

    iget-object v5, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    const v7, 0x89d0

    add-int/2addr v3, v7

    invoke-direct {p0, p2, v5}, Lcom/jme3/audio/openal/ALAudioRenderer;->fillBuffer(Lcom/jme3/audio/AudioStream;I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p2}, Lcom/jme3/audio/AudioStream;->isEOF()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_1
    if-nez v7, :cond_3

    if-eqz p3, :cond_3

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/jme3/audio/AudioStream;->setTime(F)V

    invoke-direct {p0, p2, v5}, Lcom/jme3/audio/openal/ALAudioRenderer;->fillBuffer(Lcom/jme3/audio/AudioStream;I)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Looping streaming source was rewound but could not be filled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    iget-object v4, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v1, v5}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v4, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    iget-object v5, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-interface {v4, p1, v6, v5}, Lcom/jme3/audio/openal/AL;->alSourceQueueBuffers(IILjava/nio/IntBuffer;)V

    add-int/lit8 v2, v2, 0x1

    move v4, v6

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/jme3/audio/AudioStream;->getUnqueuedBufferBytes()I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {p2, p1}, Lcom/jme3/audio/AudioStream;->setUnqueuedBufferBytes(I)V

    return v4
.end method

.method private freeChannel(I)V
    .locals 2

    iget v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->nextChannelIndex:I

    add-int/lit8 v1, v0, -0x1

    if-ne p1, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->nextChannelIndex:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->freeChannels:Ljava/util/ArrayDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private getOpenALFormat(Lcom/jme3/audio/AudioData;)I
    .locals 4

    invoke-virtual {p1}, Lcom/jme3/audio/AudioData;->getChannels()I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/audio/AudioData;->getBitsPerSample()I

    move-result p1

    const/4 v1, 0x1

    const/16 v2, 0x10

    const/16 v3, 0x8

    if-ne v0, v1, :cond_1

    if-ne p1, v3, :cond_0

    const/16 p1, 0x1100

    return p1

    :cond_0
    if-ne p1, v2, :cond_3

    const/16 p1, 0x1101

    return p1

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    if-ne p1, v3, :cond_2

    const/16 p1, 0x1102

    return p1

    :cond_2
    if-ne p1, v2, :cond_3

    const/16 p1, 0x1103

    return p1

    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported audio format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " channels, "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bits per sample."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initEfx()V
    .locals 7

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->alc:Lcom/jme3/audio/openal/ALC;

    const-string v1, "ALC_EXT_EFX"

    invoke-interface {v0, v1}, Lcom/jme3/audio/openal/ALC;->alcIsExtensionPresent(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->supportEfx:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->alc:Lcom/jme3/audio/openal/ALC;

    const v2, 0x20001

    iget-object v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-interface {v0, v2, v3, v1}, Lcom/jme3/audio/openal/ALC;->alcGetInteger(ILjava/nio/IntBuffer;I)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->alc:Lcom/jme3/audio/openal/ALC;

    const v4, 0x20002

    iget-object v5, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-interface {v3, v4, v5, v1}, Lcom/jme3/audio/openal/ALC;->alcGetInteger(ILjava/nio/IntBuffer;I)V

    iget-object v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    sget-object v4, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "Audio effect extension version: {0}.{1}"

    invoke-virtual {v4, v5, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->alc:Lcom/jme3/audio/openal/ALC;

    const v3, 0x20003

    iget-object v6, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-interface {v0, v3, v6, v1}, Lcom/jme3/audio/openal/ALC;->alcGetInteger(ILjava/nio/IntBuffer;I)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "Audio max auxiliary sends: {0}"

    invoke-virtual {v4, v5, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    iget-object v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v3}, Lcom/jme3/audio/openal/EFX;->alGenAuxiliaryEffectSlots(ILjava/nio/IntBuffer;)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    iput v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFxSlot:I

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    iget-object v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v3}, Lcom/jme3/audio/openal/EFX;->alGenEffects(ILjava/nio/IntBuffer;)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    iput v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFx:I

    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    const v3, 0x8001

    invoke-interface {v2, v0, v3, v1}, Lcom/jme3/audio/openal/EFX;->alEffecti(III)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    iget v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFxSlot:I

    iget v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFx:I

    invoke-interface {v0, v2, v1, v3}, Lcom/jme3/audio/openal/EFX;->alAuxiliaryEffectSloti(III)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "OpenAL EFX not available! Audio effects won\'t work."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initOpenAL()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->alc:Lcom/jme3/audio/openal/ALC;

    invoke-interface {v0}, Lcom/jme3/audio/openal/ALC;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->alc:Lcom/jme3/audio/openal/ALC;

    invoke-interface {v0}, Lcom/jme3/audio/openal/ALC;->createALC()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/jme3/audio/openal/ALAudioRenderer;->enumerateAvailableChannels()V

    invoke-direct {p0}, Lcom/jme3/audio/openal/ALAudioRenderer;->printAudioRendererInfo()V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->alc:Lcom/jme3/audio/openal/ALC;

    const-string v1, "ALC_SOFT_pause_device"

    invoke-interface {v0, v1}, Lcom/jme3/audio/openal/ALC;->alcIsExtensionPresent(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->supportPauseDevice:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Pausing audio device not supported (ALC_SOFT_pause_device)."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->alc:Lcom/jme3/audio/openal/ALC;

    const-string v1, "ALC_EXT_disconnect"

    invoke-interface {v0, v1}, Lcom/jme3/audio/openal/ALC;->alcIsExtensionPresent(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->supportDisconnect:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Device disconnect detection not supported (ALC_EXT_disconnect)."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/jme3/audio/openal/ALAudioRenderer;->initEfx()V

    return-void

    :goto_1
    sget-object v1, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Failed to load audio library (OpenAL). Audio will be disabled."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->audioDisabled:Z

    return-void
.end method

.method private isDeviceDisconnected()Z
    .locals 5

    iget-boolean v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->audioDisabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->supportDisconnect:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->alc:Lcom/jme3/audio/openal/ALC;

    const/16 v3, 0x313

    iget-object v4, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-interface {v0, v3, v4, v2}, Lcom/jme3/audio/openal/ALC;->alcGetInteger(ILjava/nio/IntBuffer;I)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    :goto_0
    return v1
.end method

.method private newChannel()I
    .locals 2

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->freeChannels:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->freeChannels:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->nextChannelIndex:I

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channels:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->nextChannelIndex:I

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private printAudioRendererInfo()V
    .locals 10

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->alc:Lcom/jme3/audio/openal/ALC;

    const/16 v1, 0x1005

    invoke-interface {v0, v1}, Lcom/jme3/audio/openal/ALC;->alcGetString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    iget-object v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const v4, 0xb001

    invoke-interface {v3, v4}, Lcom/jme3/audio/openal/AL;->alGetString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const v5, 0xb003

    invoke-interface {v4, v5}, Lcom/jme3/audio/openal/AL;->alGetString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const v6, 0xb002

    invoke-interface {v5, v6}, Lcom/jme3/audio/openal/AL;->alGetString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channels:[I

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->alc:Lcom/jme3/audio/openal/ALC;

    const/16 v8, 0x1006

    invoke-interface {v7, v8}, Lcom/jme3/audio/openal/ALC;->alcGetString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const v9, 0xb004

    invoke-interface {v8, v9}, Lcom/jme3/audio/openal/AL;->alGetString(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Audio Renderer Information\n * Device: {0}\n * Vendor: {1}\n * Renderer: {2}\n * Version: {3}\n * Supported channels: {4}\n * ALC extensions: {5}\n * AL extensions: {6}"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private restartAudioRenderer()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->listener:Lcom/jme3/audio/Listener;

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->environment:Lcom/jme3/audio/Environment;

    invoke-direct {p0}, Lcom/jme3/audio/openal/ALAudioRenderer;->destroyOpenAL()V

    invoke-direct {p0}, Lcom/jme3/audio/openal/ALAudioRenderer;->initOpenAL()V

    iget-boolean v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->audioDisabled:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/jme3/audio/openal/ALAudioRenderer;->setListener(Lcom/jme3/audio/Listener;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/jme3/audio/openal/ALAudioRenderer;->setEnvironment(Lcom/jme3/audio/Environment;)V

    :cond_1
    sget-object v0, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "Audio renderer restarted. Application may need to re-play active sounds."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "Audio remained disabled after attempting restart."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setListenerParams(Lcom/jme3/audio/Listener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/audio/openal/ALAudioRenderer;->applyListenerPosition(Lcom/jme3/audio/Listener;)V

    invoke-direct {p0, p1}, Lcom/jme3/audio/openal/ALAudioRenderer;->applyListenerRotation(Lcom/jme3/audio/Listener;)V

    invoke-direct {p0, p1}, Lcom/jme3/audio/openal/ALAudioRenderer;->applyListenerVelocity(Lcom/jme3/audio/Listener;)V

    invoke-direct {p0, p1}, Lcom/jme3/audio/openal/ALAudioRenderer;->applyListenerVolume(Lcom/jme3/audio/Listener;)V

    return-void
.end method

.method private setSourceParams(ILcom/jme3/audio/AudioSource;Z)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    invoke-interface {p2}, Lcom/jme3/audio/AudioSource;->getVolume()F

    move-result v1

    const/16 v2, 0x100a

    invoke-interface {v0, p1, v2, v1}, Lcom/jme3/audio/openal/AL;->alSourcef(IIF)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/16 v1, 0x1003

    invoke-interface {p2}, Lcom/jme3/audio/AudioSource;->getPitch()F

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/jme3/audio/openal/AL;->alSourcef(IIF)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/16 v1, 0x1024

    invoke-interface {p2}, Lcom/jme3/audio/AudioSource;->getTimeOffset()F

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/jme3/audio/openal/AL;->alSourcef(IIF)V

    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/audio/openal/ALAudioRenderer;->applySourceLooping(ILcom/jme3/audio/AudioSource;Z)V

    invoke-direct {p0, p1, p2}, Lcom/jme3/audio/openal/ALAudioRenderer;->applySourcePositionalState(ILcom/jme3/audio/AudioSource;)V

    invoke-direct {p0, p1, p2}, Lcom/jme3/audio/openal/ALAudioRenderer;->applySourceDirectionalState(ILcom/jme3/audio/AudioSource;)V

    invoke-direct {p0, p1, p2}, Lcom/jme3/audio/openal/ALAudioRenderer;->applySourceDryFilter(ILcom/jme3/audio/AudioSource;)V

    return-void
.end method

.method private updateAudioBuffer(Lcom/jme3/audio/AudioBuffer;)V
    .locals 8

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v2}, Lcom/jme3/audio/openal/AL;->alGenBuffers(ILjava/nio/IntBuffer;)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jme3/util/NativeObject;->setId(I)V

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->objManager:Lcom/jme3/util/NativeObjectManager;

    invoke-virtual {v1, p1}, Lcom/jme3/util/NativeObjectManager;->registerObject(Lcom/jme3/util/NativeObject;)V

    :cond_0
    move v3, v0

    invoke-virtual {p1}, Lcom/jme3/audio/AudioBuffer;->getData()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-direct {p0, p1}, Lcom/jme3/audio/openal/ALAudioRenderer;->getOpenALFormat(Lcom/jme3/audio/AudioData;)I

    move-result v4

    invoke-virtual {p1}, Lcom/jme3/audio/AudioData;->getSampleRate()I

    move-result v7

    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    invoke-virtual {v5}, Ljava/nio/Buffer;->capacity()I

    move-result v6

    invoke-interface/range {v2 .. v7}, Lcom/jme3/audio/openal/AL;->alBufferData(IILjava/nio/ByteBuffer;II)V

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->clearUpdateNeeded()V

    return-void
.end method

.method private updateAudioData(Lcom/jme3/audio/AudioData;)V
    .locals 1

    instance-of v0, p1, Lcom/jme3/audio/AudioBuffer;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/audio/AudioBuffer;

    invoke-direct {p0, p1}, Lcom/jme3/audio/openal/ALAudioRenderer;->updateAudioBuffer(Lcom/jme3/audio/AudioBuffer;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/jme3/audio/AudioStream;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/jme3/audio/AudioStream;

    invoke-direct {p0, p1}, Lcom/jme3/audio/openal/ALAudioRenderer;->updateAudioStream(Lcom/jme3/audio/AudioStream;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateAudioStream(Lcom/jme3/audio/AudioStream;)V
    .locals 4

    invoke-virtual {p1}, Lcom/jme3/audio/AudioStream;->getIds()[I

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jme3/audio/openal/ALAudioRenderer;->deleteAudioData(Lcom/jme3/audio/AudioData;)V

    :cond_0
    const/4 v0, 0x5

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    iget-object v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-interface {v2, v0, v3}, Lcom/jme3/audio/openal/AL;->alGenBuffers(ILjava/nio/IntBuffer;)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    invoke-virtual {p1, v1}, Lcom/jme3/audio/AudioStream;->setIds([I)V

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->clearUpdateNeeded()V

    return-void
.end method

.method private updateFilter(Lcom/jme3/audio/Filter;)V
    .locals 7

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-interface {v0, v2, v1}, Lcom/jme3/audio/openal/EFX;->alGenFilters(ILjava/nio/IntBuffer;)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jme3/util/NativeObject;->setId(I)V

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->objManager:Lcom/jme3/util/NativeObjectManager;

    invoke-virtual {v1, p1}, Lcom/jme3/util/NativeObjectManager;->registerObject(Lcom/jme3/util/NativeObject;)V

    :cond_0
    instance-of v1, p1, Lcom/jme3/audio/LowPassFilter;

    const v3, 0x8001

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/jme3/audio/LowPassFilter;

    iget-object v5, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    invoke-interface {v5, v0, v3, v2}, Lcom/jme3/audio/openal/EFX;->alFilteri(III)V

    iget-object v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    invoke-virtual {v1}, Lcom/jme3/audio/LowPassFilter;->getVolume()F

    move-result v5

    invoke-interface {v3, v0, v2, v5}, Lcom/jme3/audio/openal/EFX;->alFilterf(IIF)V

    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    invoke-virtual {v1}, Lcom/jme3/audio/LowPassFilter;->getHighFreqVolume()F

    move-result v1

    invoke-interface {v2, v0, v4, v1}, Lcom/jme3/audio/openal/EFX;->alFilterf(IIF)V

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcom/jme3/audio/HighPassFilter;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/jme3/audio/HighPassFilter;

    iget-object v5, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    invoke-interface {v5, v0, v3, v4}, Lcom/jme3/audio/openal/EFX;->alFilteri(III)V

    iget-object v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    invoke-virtual {v1}, Lcom/jme3/audio/HighPassFilter;->getVolume()F

    move-result v5

    invoke-interface {v3, v0, v2, v5}, Lcom/jme3/audio/openal/EFX;->alFilterf(IIF)V

    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    invoke-virtual {v1}, Lcom/jme3/audio/HighPassFilter;->getLowFreqVolume()F

    move-result v1

    invoke-interface {v2, v0, v4, v1}, Lcom/jme3/audio/openal/EFX;->alFilterf(IIF)V

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/jme3/audio/BandPassFilter;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/jme3/audio/BandPassFilter;

    iget-object v5, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    const/4 v6, 0x3

    invoke-interface {v5, v0, v3, v6}, Lcom/jme3/audio/openal/EFX;->alFilteri(III)V

    iget-object v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    invoke-virtual {v1}, Lcom/jme3/audio/BandPassFilter;->getVolume()F

    move-result v5

    invoke-interface {v3, v0, v2, v5}, Lcom/jme3/audio/openal/EFX;->alFilterf(IIF)V

    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    invoke-virtual {v1}, Lcom/jme3/audio/BandPassFilter;->getHighFreqVolume()F

    move-result v3

    invoke-interface {v2, v0, v6, v3}, Lcom/jme3/audio/openal/EFX;->alFilterf(IIF)V

    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    invoke-virtual {v1}, Lcom/jme3/audio/BandPassFilter;->getLowFreqVolume()F

    move-result v1

    invoke-interface {v2, v0, v4, v1}, Lcom/jme3/audio/openal/EFX;->alFilterf(IIF)V

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->clearUpdateNeeded()V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported filter type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cleanup()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->decoderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->decoderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :try_start_0
    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->decoderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    sget-object v1, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Interrupted while waiting for audio thread to finish."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/jme3/audio/openal/ALAudioRenderer;->destroyOpenAL()V

    return-void
.end method

.method public deleteAudioData(Lcom/jme3/audio/AudioData;)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->audioDisabled:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    instance-of v1, p1, Lcom/jme3/audio/AudioBuffer;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/jme3/audio/AudioBuffer;

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    iget-object v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-interface {v1, v2, v3}, Lcom/jme3/audio/openal/AL;->alDeleteBuffers(ILjava/nio/IntBuffer;)V

    invoke-virtual {p1}, Lcom/jme3/audio/AudioBuffer;->resetObject()V

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcom/jme3/audio/AudioStream;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/jme3/audio/AudioStream;

    invoke-virtual {p1}, Lcom/jme3/audio/AudioStream;->getIds()[I

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    array-length v1, v1

    iget-object v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-interface {v2, v1, v3}, Lcom/jme3/audio/openal/AL;->alDeleteBuffers(ILjava/nio/IntBuffer;)V

    invoke-virtual {p1}, Lcom/jme3/audio/AudioStream;->resetObject()V

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public deleteFilter(Lcom/jme3/audio/Filter;)V
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->ib:Ljava/nio/IntBuffer;

    invoke-interface {v0, v2, v1}, Lcom/jme3/audio/openal/EFX;->alDeleteFilters(ILjava/nio/IntBuffer;)V

    invoke-virtual {p1}, Lcom/jme3/audio/Filter;->resetObject()V

    :cond_0
    return-void
.end method

.method public getSourcePlaybackTime(Lcom/jme3/audio/AudioSource;)F
    .locals 6

    invoke-direct {p0}, Lcom/jme3/audio/openal/ALAudioRenderer;->checkDead()V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->audioDisabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getChannel()I

    move-result v1

    if-gez v1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channels:[I

    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getChannel()I

    move-result v3

    aget v1, v1, v3

    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getAudioData()Lcom/jme3/audio/AudioData;

    move-result-object p1

    if-nez p1, :cond_2

    monitor-exit v0

    return v2

    :cond_2
    instance-of v3, p1, Lcom/jme3/audio/AudioStream;

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Lcom/jme3/audio/AudioStream;

    invoke-virtual {v3}, Lcom/jme3/audio/AudioStream;->getUnqueuedBufferBytes()I

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/16 v5, 0x1026

    invoke-interface {v4, v1, v5}, Lcom/jme3/audio/openal/AL;->alGetSourcei(II)I

    move-result v1

    add-int/2addr v3, v1

    invoke-virtual {p1}, Lcom/jme3/audio/AudioData;->getSampleRate()I

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/audio/AudioData;->getChannels()I

    move-result v4

    mul-int/2addr v1, v4

    invoke-virtual {p1}, Lcom/jme3/audio/AudioData;->getBitsPerSample()I

    move-result p1

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x8

    if-gtz v1, :cond_4

    sget-object p1, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "Invalid bytesPerSecond calculated for source. Cannot get playback time."

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    monitor-exit v0

    return v2

    :cond_4
    int-to-float p1, v3

    int-to-float v1, v1

    div-float/2addr p1, v1

    monitor-exit v0

    return p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public initialize()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->decoderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/jme3/audio/openal/ALAudioRenderer;->initOpenAL()V

    iget-boolean v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->audioDisabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "Audio Disabled. Cannot start decoder thread."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->decoderThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->decoderThread:Ljava/lang/Thread;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->decoderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Initialize already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pauseAll()V
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->supportPauseDevice:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->alc:Lcom/jme3/audio/openal/ALC;

    invoke-interface {v0}, Lcom/jme3/audio/openal/ALC;->alcDevicePauseSOFT()V

    sget-object v0, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "Audio device paused."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Pausing the audio device is not supported by the current OpenAL driver (requires ALC_SOFT_pause_device)."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pauseSource(Lcom/jme3/audio/AudioSource;)V
    .locals 4

    invoke-direct {p0}, Lcom/jme3/audio/openal/ALAudioRenderer;->checkDead()V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->audioDisabled:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getAudioData()Lcom/jme3/audio/AudioData;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "pauseSource called on source with null AudioData: {0}"

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getStatus()Lcom/jme3/audio/AudioSource$Status;

    move-result-object v1

    sget-object v2, Lcom/jme3/audio/AudioSource$Status;->Playing:Lcom/jme3/audio/AudioSource$Status;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channels:[I

    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getChannel()I

    move-result v2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    invoke-interface {v2, v1}, Lcom/jme3/audio/openal/AL;->alSourcePause(I)V

    sget-object v1, Lcom/jme3/audio/AudioSource$Status;->Paused:Lcom/jme3/audio/AudioSource$Status;

    invoke-interface {p1, v1}, Lcom/jme3/audio/AudioSource;->setStatus(Lcom/jme3/audio/AudioSource$Status;)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public playSource(Lcom/jme3/audio/AudioSource;)V
    .locals 6

    invoke-direct {p0}, Lcom/jme3/audio/openal/ALAudioRenderer;->checkDead()V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->audioDisabled:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getStatus()Lcom/jme3/audio/AudioSource$Status;

    move-result-object v1

    sget-object v2, Lcom/jme3/audio/AudioSource$Status;->Playing:Lcom/jme3/audio/AudioSource$Status;

    if-ne v1, v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getStatus()Lcom/jme3/audio/AudioSource$Status;

    move-result-object v1

    sget-object v3, Lcom/jme3/audio/AudioSource$Status;->Stopped:Lcom/jme3/audio/AudioSource$Status;

    if-ne v1, v3, :cond_5

    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getAudioData()Lcom/jme3/audio/AudioData;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "playSource called on source with null AudioData: {0}"

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/jme3/audio/openal/ALAudioRenderer;->newChannel()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    sget-object v1, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "No channel available to play instance of {0}"

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_3
    iget-object v4, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channels:[I

    aget v4, v4, v3

    invoke-direct {p0, v3}, Lcom/jme3/audio/openal/ALAudioRenderer;->clearChannel(I)V

    invoke-interface {p1, v3}, Lcom/jme3/audio/AudioSource;->setChannel(I)V

    invoke-virtual {v1}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, v1}, Lcom/jme3/audio/openal/ALAudioRenderer;->updateAudioData(Lcom/jme3/audio/AudioData;)V

    :cond_4
    iget-object v5, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channelSources:[Lcom/jme3/audio/AudioSource;

    aput-object p1, v5, v3

    const/4 v3, 0x0

    invoke-direct {p0, v4, p1, v3}, Lcom/jme3/audio/openal/ALAudioRenderer;->setSourceParams(ILcom/jme3/audio/AudioSource;Z)V

    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->isLooping()Z

    move-result v3

    invoke-direct {p0, v4, v1, v3}, Lcom/jme3/audio/openal/ALAudioRenderer;->attachAudioToSource(ILcom/jme3/audio/AudioData;Z)V

    :cond_5
    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channels:[I

    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getChannel()I

    move-result v3

    aget v1, v1, v3

    iget-object v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    invoke-interface {v3, v1}, Lcom/jme3/audio/openal/AL;->alSourcePlay(I)V

    invoke-interface {p1, v2}, Lcom/jme3/audio/AudioSource;->setStatus(Lcom/jme3/audio/AudioSource$Status;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public playSourceInstance(Lcom/jme3/audio/AudioSource;)V
    .locals 5

    invoke-direct {p0}, Lcom/jme3/audio/openal/ALAudioRenderer;->checkDead()V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->audioDisabled:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getAudioData()Lcom/jme3/audio/AudioData;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "playSourceInstance called on source with null AudioData: {0}"

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_1
    instance-of v2, v1, Lcom/jme3/audio/AudioStream;

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lcom/jme3/audio/openal/ALAudioRenderer;->updateAudioData(Lcom/jme3/audio/AudioData;)V

    :cond_2
    invoke-direct {p0}, Lcom/jme3/audio/openal/ALAudioRenderer;->newChannel()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    sget-object v1, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "No channel available to play instance of {0}"

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_3
    iget-object v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channels:[I

    aget v3, v3, v2

    invoke-direct {p0, v2}, Lcom/jme3/audio/openal/ALAudioRenderer;->clearChannel(I)V

    const/4 v4, 0x1

    invoke-direct {p0, v3, p1, v4}, Lcom/jme3/audio/openal/ALAudioRenderer;->setSourceParams(ILcom/jme3/audio/AudioSource;Z)V

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4}, Lcom/jme3/audio/openal/ALAudioRenderer;->attachAudioToSource(ILcom/jme3/audio/AudioData;Z)V

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channelSources:[Lcom/jme3/audio/AudioSource;

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    invoke-interface {p1, v3}, Lcom/jme3/audio/openal/AL;->alSourcePlay(I)V

    monitor-exit v0

    return-void

    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot play instances of audio streams. Use play() instead."

    invoke-direct {p1, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resumeAll()V
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->supportPauseDevice:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->alc:Lcom/jme3/audio/openal/ALC;

    invoke-interface {v0}, Lcom/jme3/audio/openal/ALC;->alcDeviceResumeSOFT()V

    sget-object v0, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "Audio device resumed."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Resuming the audio device is not supported by the current OpenAL driver (requires ALC_SOFT_pause_device)."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run()V
    .locals 6

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "Audio decoder thread interrupted, exiting."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->threadLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/jme3/audio/openal/ALAudioRenderer;->checkDevice()V

    const v3, 0x3d4ccccd    # 0.05f

    invoke-virtual {p0, v3}, Lcom/jme3/audio/openal/ALAudioRenderer;->updateInDecoderThread(F)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0x2faf080

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    add-long/2addr v0, v4

    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    const-wide/16 v2, 0x1

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "Audio decoder thread interrupted during sleep, exiting."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "Audio decoder thread finished."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setEnvironment(Lcom/jme3/audio/Environment;)V
    .locals 6

    invoke-direct {p0}, Lcom/jme3/audio/openal/ALAudioRenderer;->checkDead()V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->audioDisabled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->supportEfx:Z

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    iget v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFx:I

    invoke-virtual {p1}, Lcom/jme3/audio/Environment;->getDensity()F

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4, v3}, Lcom/jme3/audio/openal/EFX;->alEffectf(IIF)V

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    iget v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFx:I

    invoke-virtual {p1}, Lcom/jme3/audio/Environment;->getDiffusion()F

    move-result v3

    const/4 v5, 0x2

    invoke-interface {v1, v2, v5, v3}, Lcom/jme3/audio/openal/EFX;->alEffectf(IIF)V

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    iget v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFx:I

    invoke-virtual {p1}, Lcom/jme3/audio/Environment;->getGain()F

    move-result v3

    const/4 v5, 0x3

    invoke-interface {v1, v2, v5, v3}, Lcom/jme3/audio/openal/EFX;->alEffectf(IIF)V

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    iget v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFx:I

    invoke-virtual {p1}, Lcom/jme3/audio/Environment;->getGainHf()F

    move-result v3

    const/4 v5, 0x4

    invoke-interface {v1, v2, v5, v3}, Lcom/jme3/audio/openal/EFX;->alEffectf(IIF)V

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    iget v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFx:I

    invoke-virtual {p1}, Lcom/jme3/audio/Environment;->getDecayTime()F

    move-result v3

    const/4 v5, 0x5

    invoke-interface {v1, v2, v5, v3}, Lcom/jme3/audio/openal/EFX;->alEffectf(IIF)V

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    iget v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFx:I

    invoke-virtual {p1}, Lcom/jme3/audio/Environment;->getDecayHFRatio()F

    move-result v3

    const/4 v5, 0x6

    invoke-interface {v1, v2, v5, v3}, Lcom/jme3/audio/openal/EFX;->alEffectf(IIF)V

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    iget v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFx:I

    invoke-virtual {p1}, Lcom/jme3/audio/Environment;->getReflectGain()F

    move-result v3

    const/4 v5, 0x7

    invoke-interface {v1, v2, v5, v3}, Lcom/jme3/audio/openal/EFX;->alEffectf(IIF)V

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    iget v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFx:I

    invoke-virtual {p1}, Lcom/jme3/audio/Environment;->getReflectDelay()F

    move-result v3

    const/16 v5, 0x8

    invoke-interface {v1, v2, v5, v3}, Lcom/jme3/audio/openal/EFX;->alEffectf(IIF)V

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    iget v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFx:I

    invoke-virtual {p1}, Lcom/jme3/audio/Environment;->getLateReverbGain()F

    move-result v3

    const/16 v5, 0x9

    invoke-interface {v1, v2, v5, v3}, Lcom/jme3/audio/openal/EFX;->alEffectf(IIF)V

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    iget v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFx:I

    invoke-virtual {p1}, Lcom/jme3/audio/Environment;->getLateReverbDelay()F

    move-result v3

    const/16 v5, 0xa

    invoke-interface {v1, v2, v5, v3}, Lcom/jme3/audio/openal/EFX;->alEffectf(IIF)V

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    iget v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFx:I

    invoke-virtual {p1}, Lcom/jme3/audio/Environment;->getAirAbsorbGainHf()F

    move-result v3

    const/16 v5, 0xb

    invoke-interface {v1, v2, v5, v3}, Lcom/jme3/audio/openal/EFX;->alEffectf(IIF)V

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    iget v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFx:I

    invoke-virtual {p1}, Lcom/jme3/audio/Environment;->getRoomRolloffFactor()F

    move-result v3

    const/16 v5, 0xc

    invoke-interface {v1, v2, v5, v3}, Lcom/jme3/audio/openal/EFX;->alEffectf(IIF)V

    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->efx:Lcom/jme3/audio/openal/EFX;

    iget v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFxSlot:I

    iget v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->reverbFx:I

    invoke-interface {v1, v2, v4, v3}, Lcom/jme3/audio/openal/EFX;->alAuxiliaryEffectSloti(III)V

    iput-object p1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->environment:Lcom/jme3/audio/Environment;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setListener(Lcom/jme3/audio/Listener;)V
    .locals 3

    invoke-direct {p0}, Lcom/jme3/audio/openal/ALAudioRenderer;->checkDead()V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->audioDisabled:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->listener:Lcom/jme3/audio/Listener;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jme3/audio/Listener;->setRenderer(Lcom/jme3/audio/AudioRenderer;)V

    :cond_1
    iput-object p1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->listener:Lcom/jme3/audio/Listener;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lcom/jme3/audio/Listener;->setRenderer(Lcom/jme3/audio/AudioRenderer;)V

    invoke-direct {p0, p1}, Lcom/jme3/audio/openal/ALAudioRenderer;->setListenerParams(Lcom/jme3/audio/Listener;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "Listener set to null."

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopSource(Lcom/jme3/audio/AudioSource;)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->audioDisabled:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getAudioData()Lcom/jme3/audio/AudioData;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "stopSource called on source with null AudioData: {0}"

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getStatus()Lcom/jme3/audio/AudioSource$Status;

    move-result-object v1

    sget-object v2, Lcom/jme3/audio/AudioSource$Status;->Stopped:Lcom/jme3/audio/AudioSource$Status;

    if-eq v1, v2, :cond_3

    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getChannel()I

    move-result v1

    invoke-interface {p1, v2}, Lcom/jme3/audio/AudioSource;->setStatus(Lcom/jme3/audio/AudioSource$Status;)V

    const/4 v2, -0x1

    invoke-interface {p1, v2}, Lcom/jme3/audio/AudioSource;->setChannel(I)V

    invoke-direct {p0, v1}, Lcom/jme3/audio/openal/ALAudioRenderer;->clearChannel(I)V

    invoke-direct {p0, v1}, Lcom/jme3/audio/openal/ALAudioRenderer;->freeChannel(I)V

    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getAudioData()Lcom/jme3/audio/AudioData;

    move-result-object v1

    instance-of v1, v1, Lcom/jme3/audio/AudioStream;

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getAudioData()Lcom/jme3/audio/AudioData;

    move-result-object p1

    check-cast p1, Lcom/jme3/audio/AudioStream;

    invoke-virtual {p1}, Lcom/jme3/audio/AudioStream;->isSeekable()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/jme3/audio/AudioStream;->setTime(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/audio/AudioStream;->close()V

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public update(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jme3/audio/openal/ALAudioRenderer;->updateInRenderThread(F)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateInDecoderThread(F)V
    .locals 5

    iget-boolean p1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->audioDisabled:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channels:[I

    array-length v0, v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channelSources:[Lcom/jme3/audio/AudioSource;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/jme3/audio/AudioSource;->getAudioData()Lcom/jme3/audio/AudioData;

    move-result-object v1

    instance-of v1, v1, Lcom/jme3/audio/AudioStream;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channels:[I

    aget v1, v1, p1

    invoke-interface {v0}, Lcom/jme3/audio/AudioSource;->getAudioData()Lcom/jme3/audio/AudioData;

    move-result-object v2

    check-cast v2, Lcom/jme3/audio/AudioStream;

    iget-object v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/16 v4, 0x1010

    invoke-interface {v3, v1, v4}, Lcom/jme3/audio/openal/AL;->alGetSourcei(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/jme3/audio/openal/ALAudioRenderer;->convertStatus(I)Lcom/jme3/audio/AudioSource$Status;

    move-result-object v3

    invoke-interface {v0}, Lcom/jme3/audio/AudioSource;->getStatus()Lcom/jme3/audio/AudioSource$Status;

    move-result-object v4

    invoke-interface {v0}, Lcom/jme3/audio/AudioSource;->isLooping()Z

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lcom/jme3/audio/openal/ALAudioRenderer;->fillStreamingSource(ILcom/jme3/audio/AudioStream;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/jme3/audio/AudioSource$Status;->Stopped:Lcom/jme3/audio/AudioSource$Status;

    if-ne v3, v0, :cond_2

    sget-object v0, Lcom/jme3/audio/AudioSource$Status;->Playing:Lcom/jme3/audio/AudioSource$Status;

    if-ne v4, v0, :cond_2

    sget-object v0, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Buffer starvation detected for stream on channel {0}. Restarting playback."

    invoke-virtual {v0, v2, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    invoke-interface {v0, v1}, Lcom/jme3/audio/openal/AL;->alSourcePlay(I)V

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->objManager:Lcom/jme3/util/NativeObjectManager;

    invoke-virtual {p1, p0}, Lcom/jme3/util/NativeObjectManager;->deleteUnused(Ljava/lang/Object;)V

    return-void
.end method

.method public updateInRenderThread(F)V
    .locals 7

    iget-boolean p1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->audioDisabled:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channels:[I

    array-length v2, v1

    if-ge v0, v2, :cond_10

    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channelSources:[Lcom/jme3/audio/AudioSource;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    aget v1, v1, v0

    invoke-interface {v2}, Lcom/jme3/audio/AudioSource;->getChannel()I

    move-result v3

    if-ne v0, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, p1

    :goto_1
    iget-object v4, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/16 v5, 0x1010

    invoke-interface {v4, v1, v5}, Lcom/jme3/audio/openal/AL;->alGetSourcei(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/jme3/audio/openal/ALAudioRenderer;->convertStatus(I)Lcom/jme3/audio/AudioSource$Status;

    move-result-object v1

    if-nez v3, :cond_6

    sget-object v2, Lcom/jme3/audio/AudioSource$Status;->Stopped:Lcom/jme3/audio/AudioSource$Status;

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Reclaiming channel {0} from finished instance."

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-direct {p0, v0}, Lcom/jme3/audio/openal/ALAudioRenderer;->clearChannel(I)V

    invoke-direct {p0, v0}, Lcom/jme3/audio/openal/ALAudioRenderer;->freeChannel(I)V

    goto/16 :goto_3

    :cond_4
    sget-object v2, Lcom/jme3/audio/AudioSource$Status;->Paused:Lcom/jme3/audio/AudioSource$Status;

    if-eq v1, v2, :cond_5

    goto/16 :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instanced audio source on channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cannot be paused."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_6
    invoke-interface {v2}, Lcom/jme3/audio/AudioSource;->getStatus()Lcom/jme3/audio/AudioSource$Status;

    move-result-object v3

    if-eq v1, v3, :cond_d

    sget-object v4, Lcom/jme3/audio/AudioSource$Status;->Stopped:Lcom/jme3/audio/AudioSource$Status;

    if-ne v1, v4, :cond_c

    if-eq v3, v4, :cond_c

    invoke-interface {v2}, Lcom/jme3/audio/AudioSource;->getAudioData()Lcom/jme3/audio/AudioData;

    move-result-object v1

    instance-of v1, v1, Lcom/jme3/audio/AudioStream;

    if-eqz v1, :cond_8

    invoke-interface {v2}, Lcom/jme3/audio/AudioSource;->getAudioData()Lcom/jme3/audio/AudioData;

    move-result-object v1

    check-cast v1, Lcom/jme3/audio/AudioStream;

    invoke-virtual {v1}, Lcom/jme3/audio/AudioStream;->isEOF()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v2}, Lcom/jme3/audio/AudioSource;->isLooping()Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Stream source on channel {0} finished."

    invoke-virtual {v1, v3, v6, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    sget-object v1, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Stream source on channel {0} likely starved."

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    invoke-interface {v2}, Lcom/jme3/audio/AudioSource;->isLooping()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Looping buffer source on channel {0} stopped unexpectedly."

    invoke-virtual {v1, v3, v6, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    sget-object v1, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Buffer source on channel {0} finished."

    invoke-virtual {v1, v3, v6, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    :goto_2
    sget-object v1, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Reclaiming channel {0} from finished source."

    invoke-virtual {v1, v3, v6, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    invoke-interface {v2, v4}, Lcom/jme3/audio/AudioSource;->setStatus(Lcom/jme3/audio/AudioSource$Status;)V

    const/4 v1, -0x1

    invoke-interface {v2, v1}, Lcom/jme3/audio/AudioSource;->setChannel(I)V

    invoke-direct {p0, v0}, Lcom/jme3/audio/openal/ALAudioRenderer;->clearChannel(I)V

    invoke-direct {p0, v0}, Lcom/jme3/audio/openal/ALAudioRenderer;->freeChannel(I)V

    goto :goto_3

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected sound status. OpenAL: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", JME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_d
    sget-object v2, Lcom/jme3/audio/AudioSource$Status;->Stopped:Lcom/jme3/audio/AudioSource$Status;

    if-eq v1, v2, :cond_f

    :cond_e
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " was not reclaimed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_10
    return-void
.end method

.method public updateListenerParam(Lcom/jme3/audio/Listener;Lcom/jme3/audio/ListenerParam;)V
    .locals 3

    invoke-direct {p0}, Lcom/jme3/audio/openal/ALAudioRenderer;->checkDead()V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->listener:Lcom/jme3/audio/Listener;

    if-eq v0, p1, :cond_0

    sget-object p1, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    const-string p2, "updateListenerParam called on inactive listener."

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->audioDisabled:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/jme3/audio/openal/ALAudioRenderer$1;->$SwitchMap$com$jme3$audio$ListenerParam:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    sget-object p1, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Unhandled listener parameter: {0}"

    invoke-virtual {p1, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/jme3/audio/openal/ALAudioRenderer;->applyListenerVolume(Lcom/jme3/audio/Listener;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/jme3/audio/openal/ALAudioRenderer;->applyListenerVelocity(Lcom/jme3/audio/Listener;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/jme3/audio/openal/ALAudioRenderer;->applyListenerRotation(Lcom/jme3/audio/Listener;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/jme3/audio/openal/ALAudioRenderer;->applyListenerPosition(Lcom/jme3/audio/Listener;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateSourceParam(Lcom/jme3/audio/AudioSource;Lcom/jme3/audio/AudioParam;)V
    .locals 9

    invoke-direct {p0}, Lcom/jme3/audio/openal/ALAudioRenderer;->checkDead()V

    iget-object v0, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->audioDisabled:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getChannel()I

    move-result v1

    if-gez v1, :cond_2

    sget-object p2, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Ignoring parameter update for source {0} as it\'s not validly associated with channel {1}."

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    iget-object v2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->channels:[I

    aget v4, v2, v1

    sget-object v1, Lcom/jme3/audio/openal/ALAudioRenderer$1;->$SwitchMap$com$jme3$audio$AudioParam:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-object p1, Lcom/jme3/audio/openal/ALAudioRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Unhandled source parameter update: {0}"

    invoke-virtual {p1, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_0
    iget-object p2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getPitch()F

    move-result p1

    const/16 v1, 0x1003

    invoke-interface {p2, v4, v1, p1}, Lcom/jme3/audio/openal/AL;->alSourcef(IIF)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getVolume()F

    move-result p1

    const/16 v1, 0x100a

    invoke-interface {p2, v4, v1, p1}, Lcom/jme3/audio/openal/AL;->alSourcef(IIF)V

    goto/16 :goto_0

    :pswitch_2
    const/4 p2, 0x0

    invoke-direct {p0, v4, p1, p2}, Lcom/jme3/audio/openal/ALAudioRenderer;->applySourceLooping(ILcom/jme3/audio/AudioSource;Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-boolean p2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->supportEfx:Z

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->isPositional()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->isReverbEnabled()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v5, 0x20006

    const/4 v6, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/jme3/audio/openal/AL;->alSource3i(IIIII)V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, v4, p1}, Lcom/jme3/audio/openal/ALAudioRenderer;->applySourceReverbFilter(ILcom/jme3/audio/AudioSource;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->isPositional()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0, v4, p1}, Lcom/jme3/audio/openal/ALAudioRenderer;->applySourceReverbFilter(ILcom/jme3/audio/AudioSource;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0, v4, p1}, Lcom/jme3/audio/openal/ALAudioRenderer;->applySourceDryFilter(ILcom/jme3/audio/AudioSource;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-direct {p0, v4, p1}, Lcom/jme3/audio/openal/ALAudioRenderer;->applySourceDirectionalState(ILcom/jme3/audio/AudioSource;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->isDirectional()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getOuterAngle()F

    move-result p1

    const/16 v1, 0x1002

    invoke-interface {p2, v4, v1, p1}, Lcom/jme3/audio/openal/AL;->alSourcef(IIF)V

    goto/16 :goto_0

    :pswitch_8
    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->isDirectional()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getInnerAngle()F

    move-result p1

    const/16 v1, 0x1001

    invoke-interface {p2, v4, v1, p1}, Lcom/jme3/audio/openal/AL;->alSourcef(IIF)V

    goto/16 :goto_0

    :pswitch_9
    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->isDirectional()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    iget v6, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v7, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v8, p1, Lcom/jme3/math/Vector3f;->z:F

    const/16 v5, 0x1005

    invoke-interface/range {v3 .. v8}, Lcom/jme3/audio/openal/AL;->alSource3f(IIFFF)V

    goto :goto_0

    :pswitch_a
    invoke-direct {p0, v4, p1}, Lcom/jme3/audio/openal/ALAudioRenderer;->applySourcePositionalState(ILcom/jme3/audio/AudioSource;)V

    goto :goto_0

    :pswitch_b
    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->isPositional()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getRefDistance()F

    move-result p1

    const/16 v1, 0x1020

    invoke-interface {p2, v4, v1, p1}, Lcom/jme3/audio/openal/AL;->alSourcef(IIF)V

    goto :goto_0

    :pswitch_c
    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->isPositional()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getMaxDistance()F

    move-result p1

    const/16 v1, 0x1023

    invoke-interface {p2, v4, v1, p1}, Lcom/jme3/audio/openal/AL;->alSourcef(IIF)V

    goto :goto_0

    :pswitch_d
    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->isPositional()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getVelocity()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    iget v6, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v7, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v8, p1, Lcom/jme3/math/Vector3f;->z:F

    const/16 v5, 0x1006

    invoke-interface/range {v3 .. v8}, Lcom/jme3/audio/openal/AL;->alSource3f(IIFFF)V

    goto :goto_0

    :pswitch_e
    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->isPositional()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lcom/jme3/audio/AudioSource;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v3, p0, Lcom/jme3/audio/openal/ALAudioRenderer;->al:Lcom/jme3/audio/openal/AL;

    iget v6, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v7, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v8, p1, Lcom/jme3/math/Vector3f;->z:F

    const/16 v5, 0x1004

    invoke-interface/range {v3 .. v8}, Lcom/jme3/audio/openal/AL;->alSource3f(IIFFF)V

    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
