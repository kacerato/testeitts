.class public final LFc/e;
.super Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;
.source "SourceFile"

# interfaces
.implements LHc/b$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFc/e$b;,
        LFc/e$a;
    }
.end annotation


# static fields
.field public static final I:I = 0x1fffffff

.field public static final J:J = 0x2L


# instance fields
.field public final A:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

.field public final B:I

.field public final C:I

.field public D:I

.field public E:I

.field public F:Z

.field public G:LFc/e$b;

.field public H:LFc/e$b;

.field public final u:LFc/e$a;


# direct methods
.method public constructor <init>(LFc/e$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LFc/e;->F:Z

    sget-object v1, LFc/e$b;->PLAYING:LFc/e$b;

    iput-object v1, p0, LFc/e;->H:LFc/e$b;

    if-eqz p1, :cond_0

    iput-object p1, p0, LFc/e;->u:LFc/e$a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->getSampleRate()I

    move-result p1

    int-to-float p1, p1

    const v1, 0x3d23d70a    # 0.04f

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, LFc/e;->B:I

    const/4 v0, 0x2

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v0, p1

    iput v0, p0, LFc/e;->C:I

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-direct {v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;-><init>(I)V

    iput-object v1, p0, LFc/e;->A:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    const p1, 0x1fffffff

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->J(II)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->a0(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "callback can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public M()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->F()Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Playing:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, LFc/e;->G:LFc/e$b;

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Stopped:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LFc/e;->F:Z

    const/4 v0, 0x0

    iput v0, p0, LFc/e;->D:I

    iput v0, p0, LFc/e;->E:I

    sget-object v0, LFc/e$b;->STOPPED:LFc/e$b;

    iput-object v0, p0, LFc/e;->H:LFc/e$b;

    iget v0, p0, LFc/e;->C:I

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->a0(I)V

    :cond_1
    invoke-virtual {p0}, LFc/e;->Y()V

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

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->getSampleRate()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x0

    iput-object v0, p0, LFc/e;->G:LFc/e$b;

    sget-object v0, LFc/e$b;->PLAYING:LFc/e$b;

    iput-object v0, p0, LFc/e;->H:LFc/e$b;

    const/4 v0, 0x1

    iput-boolean v0, p0, LFc/e;->F:Z

    iput p1, p0, LFc/e;->D:I

    iput p1, p0, LFc/e;->E:I

    iget v0, p0, LFc/e;->C:I

    add-int v1, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->a0(I)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->Z(I)V

    invoke-virtual {p0}, LFc/e;->Y()V

    return-void
.end method

.method public Y()V
    .locals 1

    invoke-virtual {p0}, LFc/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, LHc/b;->m(LHc/b$b;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, LHc/b;->k(LHc/b$b;)V

    :goto_0
    return-void
.end method

.method public a()V
    .locals 5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->A()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, LFc/e;->G:LFc/e$b;

    if-eqz v2, :cond_3

    iget v1, p0, LFc/e;->D:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, LFc/e;->G:LFc/e$b;

    sget-object v0, LFc/e$b;->PAUSED:LFc/e$b;

    if-ne v2, v0, :cond_1

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Paused:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->Q(Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Stopped:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->Q(Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, LFc/e;->d0(J)V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->F()Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    move-result-object v2

    sget-object v3, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Playing:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    if-eq v2, v3, :cond_4

    return-void

    :cond_4
    iget-boolean v2, p0, LFc/e;->F:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->U(I)V

    iput v0, p0, LFc/e;->D:I

    iput-boolean v1, p0, LFc/e;->F:Z

    iget v2, p0, LFc/e;->C:I

    add-int v3, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->a0(I)V

    :cond_5
    iget v2, p0, LFc/e;->D:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, LFc/e;->A:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->fill(S)V

    iget-object v1, p0, LFc/e;->u:LFc/e$a;

    iget-object v2, p0, LFc/e;->A:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->getSampleRate()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v1, v2, v0, v3}, LFc/e$a;->fillAudio(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;IF)LFc/e$b;

    move-result-object v1

    if-nez v1, :cond_6

    sget-object v1, LFc/e$b;->STOPPED:LFc/e$b;

    :cond_6
    iget-object v2, p0, LFc/e;->A:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget v3, p0, LFc/e;->B:I

    invoke-virtual {p0, v2, v0, v3}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->V(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;II)V

    iget v2, p0, LFc/e;->B:I

    add-int/2addr v0, v2

    iput v0, p0, LFc/e;->D:I

    iput-object v1, p0, LFc/e;->H:LFc/e$b;

    sget-object v2, LFc/e$b;->PLAYING:LFc/e$b;

    if-ne v1, v2, :cond_7

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->a0(I)V

    return-void

    :cond_7
    iput-object v1, p0, LFc/e;->G:LFc/e$b;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->a0(I)V

    return-void
.end method

.method public c()Z
    .locals 6

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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->F()Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    move-result-object v2

    sget-object v3, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Playing:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    iget v2, p0, LFc/e;->B:I

    add-int/2addr v2, v0

    iget v5, p0, LFc/e;->E:I

    if-ge v2, v5, :cond_1

    iput-boolean v4, p0, LFc/e;->F:Z

    :cond_1
    iput v0, p0, LFc/e;->E:I

    iget-object v2, p0, LFc/e;->G:LFc/e$b;

    if-eqz v2, :cond_2

    return v4

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->F()Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    move-result-object v2

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, LFc/e;->F:Z

    if-eqz v2, :cond_4

    return v4

    :cond_4
    iget v2, p0, LFc/e;->D:I

    sub-int/2addr v2, v0

    iget v0, p0, LFc/e;->B:I

    mul-int/lit8 v0, v0, 0x3

    if-gt v2, v0, :cond_5

    move v1, v4

    :cond_5
    return v1
.end method

.method public c0()LFc/e$b;
    .locals 1

    iget-object v0, p0, LFc/e;->H:LFc/e$b;

    return-object v0
.end method

.method public final d0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millis"
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public destroy()V
    .locals 2

    invoke-static {p0}, LHc/b;->k(LHc/b$b;)V

    :try_start_0
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LFc/e;->A:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LFc/e;->A:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, LFc/e;->A:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, LFc/e;->A:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    :cond_1
    throw v0
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

    invoke-virtual {p0, p1}, LFc/e;->O(F)V

    return-void
.end method
