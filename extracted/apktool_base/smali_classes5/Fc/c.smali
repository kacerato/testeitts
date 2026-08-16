.class public final LFc/c;
.super Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;
.source "SourceFile"


# instance fields
.field public final A:I

.field public u:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "audioData",
            "sampleRate"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity()I

    move-result v0

    if-lez v0, :cond_1

    iput p2, p0, LFc/c;->A:I

    invoke-virtual {p0, p1, p2}, LFc/c;->d0(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;I)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object p1

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position(I)V

    iput-object p1, p0, LFc/c;->u:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->I(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    :cond_0
    throw p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "audioData is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "audioData is garbage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "audioData can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public C()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
    .locals 1

    iget-object v0, p0, LFc/c;->u:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    return-object v0
.end method

.method public c0()I
    .locals 1

    iget v0, p0, LFc/c;->A:I

    return v0
.end method

.method public final d0(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;I)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "audioData",
            "sampleRate"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->getSampleRate()I

    move-result v0

    if-lez p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/AudioUtils;->c(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;II)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->clone()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object p1

    return-object p1
.end method

.method public destroy()V
    .locals 3

    iget-object v0, p0, LFc/c;->u:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    const/4 v1, 0x0

    iput-object v1, p0, LFc/c;->u:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    :try_start_0
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    :cond_1
    throw v1
.end method
