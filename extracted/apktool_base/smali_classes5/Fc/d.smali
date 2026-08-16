.class public final LFc/d;
.super LFc/a;
.source "SourceFile"

# interfaces
.implements LHc/b$b;


# instance fields
.field public final C:Lcom/itsmagic/engine/Engines/Sound/Imported/g;

.field public final D:I

.field public final E:I

.field public final F:I

.field public final G:I

.field public final H:I

.field public final I:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

.field public final J:Ljava/lang/Object;

.field public K:I

.field public L:I

.field public M:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ioFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->c(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    move-result-object p1

    invoke-direct {p0, v0, p1}, LFc/d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->d(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    move-result-object v0

    invoke-direct {p0, p1, v0}, LFc/d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "preparedAudio"
        }
    .end annotation

    .line 3
    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->a:Lcom/itsmagic/engine/Engines/Sound/Imported/b;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->b:Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

    invoke-direct {p0, p1, v0, v1}, LFc/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;)V

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LFc/d;->J:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, LFc/d;->M:Z

    .line 6
    new-instance v0, Lcom/itsmagic/engine/Engines/Sound/Imported/g;

    invoke-direct {v0, p2}, Lcom/itsmagic/engine/Engines/Sound/Imported/g;-><init>(Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;)V

    iput-object v0, p0, LFc/d;->C:Lcom/itsmagic/engine/Engines/Sound/Imported/g;

    .line 7
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->getSampleRate()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3d23d70a    # 0.04f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, LFc/d;->D:I

    .line 8
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->getSampleRate()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LFc/d;->E:I

    add-int v1, v0, p1

    const/4 v2, 0x2

    const/4 v3, 0x6

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, LFc/d;->H:I

    sub-int v2, v1, p1

    .line 10
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LFc/d;->F:I

    mul-int/lit8 v2, p1, 0x2

    .line 11
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LFc/d;->G:I

    .line 12
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;-><init>(I)V

    iput-object v0, p0, LFc/d;->I:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    .line 13
    iget-object p1, p2, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->b:Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

    iget p1, p1, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->pcmFrames:I

    invoke-virtual {p0, p1, v1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->J(II)V

    .line 14
    invoke-virtual {p0}, LFc/d;->i0()V

    .line 15
    invoke-virtual {p0}, LFc/d;->Y()V

    return-void
.end method


# virtual methods
.method public M()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->F()Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Stopped:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LFc/d;->M:Z

    const/4 v0, 0x0

    iput v0, p0, LFc/d;->K:I

    iput v0, p0, LFc/d;->L:I

    :cond_0
    invoke-virtual {p0}, LFc/d;->Y()V

    return-void
.end method

.method public Y()V
    .locals 1

    invoke-virtual {p0}, LFc/d;->j0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LFc/d;->F:I

    invoke-virtual {p0, v0}, LFc/d;->f0(I)V

    :cond_0
    invoke-virtual {p0}, LFc/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, LHc/b;->m(LHc/b$b;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, LHc/b;->k(LHc/b$b;)V

    :goto_0
    return-void
.end method

.method public a()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LFc/d;->J:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, LFc/d;->h0()Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()Z
    .locals 5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->K()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->A()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->isLoop()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget v2, p0, LFc/d;->D:I

    add-int/2addr v2, v0

    iget v4, p0, LFc/d;->L:I

    if-ge v2, v4, :cond_1

    iput-boolean v3, p0, LFc/d;->M:Z

    :cond_1
    iput v0, p0, LFc/d;->L:I

    iget-boolean v2, p0, LFc/d;->M:Z

    if-eqz v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->F()Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    move-result-object v2

    sget-object v4, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Stopped:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    if-ne v2, v4, :cond_3

    iget v2, p0, LFc/d;->K:I

    if-le v2, v0, :cond_3

    return v1

    :cond_3
    iget v2, p0, LFc/d;->K:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->G()I

    move-result v4

    if-lt v2, v4, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0, v0}, LFc/d;->g0(I)I

    move-result v0

    iget v2, p0, LFc/d;->F:I

    if-ge v0, v2, :cond_5

    move v1, v3

    :cond_5
    return v1
.end method

.method public destroy()V
    .locals 1

    invoke-static {p0}, LHc/b;->k(LHc/b$b;)V

    iget-object v0, p0, LFc/d;->I:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LFc/d;->I:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    :cond_0
    invoke-super {p0}, LFc/a;->destroy()V

    return-void
.end method

.method public e0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f0(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wantedAheadFrames"
        }
    .end annotation

    iget-object v0, p0, LFc/d;->J:Ljava/lang/Object;

    monitor-enter v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->K()Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->A()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-boolean v2, p0, LFc/d;->M:Z

    if-nez v2, :cond_2

    invoke-virtual {p0, v1}, LFc/d;->g0(I)I

    move-result v1

    if-lt v1, p1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    iget-boolean v1, p0, LFc/d;->M:Z

    if-nez v1, :cond_3

    iget v1, p0, LFc/d;->K:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->G()I

    move-result v2

    if-lt v1, v2, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    invoke-virtual {p0}, LFc/d;->h0()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final g0(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentFrame"
        }
    .end annotation

    iget v0, p0, LFc/d;->K:I

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final h0()Z
    .locals 5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->K()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->A()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-boolean v2, p0, LFc/d;->M:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->U(I)V

    iput v0, p0, LFc/d;->K:I

    iput-boolean v1, p0, LFc/d;->M:Z

    :cond_1
    iget v2, p0, LFc/d;->K:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, LFc/d;->D:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->G()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-gtz v2, :cond_2

    return v1

    :cond_2
    iget-object v3, p0, LFc/d;->C:Lcom/itsmagic/engine/Engines/Sound/Imported/g;

    iget-object v4, p0, LFc/d;->I:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v3, v0, v2, v4}, Lcom/itsmagic/engine/Engines/Sound/Imported/g;->b(IILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)I

    move-result v2

    if-lez v2, :cond_3

    iget-object v1, p0, LFc/d;->I:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p0, v1, v0, v2}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->V(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;II)V

    add-int/2addr v0, v2

    iput v0, p0, LFc/d;->K:I

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method public final i0()V
    .locals 1

    iget v0, p0, LFc/d;->F:I

    invoke-virtual {p0, v0}, LFc/d;->f0(I)V

    return-void
.end method

.method public final j0()Z
    .locals 5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->K()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->F()Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    move-result-object v0

    sget-object v2, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Playing:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->A()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-boolean v2, p0, LFc/d;->M:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    return v3

    :cond_2
    iget v2, p0, LFc/d;->K:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->G()I

    move-result v4

    if-lt v2, v4, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, v0}, LFc/d;->g0(I)I

    move-result v0

    iget v2, p0, LFc/d;->G:I

    if-ge v0, v2, :cond_4

    move v1, v3

    :cond_4
    return v1
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

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->seekTo(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LFc/d;->M:Z

    const/4 p1, 0x0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->A()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, LFc/d;->K:I

    invoke-virtual {p0}, LFc/d;->Y()V

    return-void
.end method
