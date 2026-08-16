.class public Lt9/c;
.super Lt9/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt9/c$f;
    }
.end annotation


# instance fields
.field public a:Landroid/media/SoundPool;

.field public b:Lt9/c$f;

.field public c:Ljava/io/FileDescriptor;

.field public d:J

.field public e:J

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:I

.field public n:I

.field public o:Z

.field public p:Z

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field public u:Landroid/os/Handler;

.field public final v:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;JJZ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fd",
            "offset",
            "length",
            "loop"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p6}, Lt9/b;-><init>(Z)V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lt9/c;->g:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    iput v0, p0, Lt9/c;->k:F

    .line 15
    iput v0, p0, Lt9/c;->l:F

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lt9/c;->m:I

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lt9/c;->t:J

    .line 18
    new-instance v0, Lt9/c$a;

    invoke-direct {v0, p0}, Lt9/c$a;-><init>(Lt9/c;)V

    iput-object v0, p0, Lt9/c;->v:Ljava/lang/Runnable;

    .line 19
    sget-object v0, Lt9/c$f;->Assets:Lt9/c$f;

    iput-object v0, p0, Lt9/c;->b:Lt9/c$f;

    .line 20
    iput-object p1, p0, Lt9/c;->c:Ljava/io/FileDescriptor;

    .line 21
    iput-wide p2, p0, Lt9/c;->d:J

    .line 22
    iput-wide p4, p0, Lt9/c;->e:J

    .line 23
    iput-boolean p6, p0, Lt9/c;->g:Z

    .line 24
    iget-object v2, p0, Lt9/c;->f:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lt9/c;->E(Ljava/lang/String;Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "loop"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lt9/b;-><init>(Z)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lt9/c;->g:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lt9/c;->k:F

    .line 4
    iput v0, p0, Lt9/c;->l:F

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lt9/c;->m:I

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lt9/c;->t:J

    .line 7
    new-instance v0, Lt9/c$a;

    invoke-direct {v0, p0}, Lt9/c$a;-><init>(Lt9/c;)V

    iput-object v0, p0, Lt9/c;->v:Ljava/lang/Runnable;

    .line 8
    sget-object v0, Lt9/c$f;->Path:Lt9/c$f;

    iput-object v0, p0, Lt9/c;->b:Lt9/c$f;

    .line 9
    iput-object p1, p0, Lt9/c;->f:Ljava/lang/String;

    .line 10
    iput-boolean p2, p0, Lt9/c;->g:Z

    .line 11
    iget-object v3, p0, Lt9/c;->c:Ljava/io/FileDescriptor;

    iget-wide v4, p0, Lt9/c;->d:J

    iget-wide v6, p0, Lt9/c;->e:J

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lt9/c;->E(Ljava/lang/String;Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public static synthetic A(Lt9/c;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lt9/c;->u:Landroid/os/Handler;

    return-object p1
.end method

.method public static synthetic B(Lt9/c;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lt9/c;->v:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic C(Lt9/c;)J
    .locals 2

    iget-wide v0, p0, Lt9/c;->q:J

    return-wide v0
.end method

.method private E(Ljava/lang/String;Ljava/io/FileDescriptor;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "fd",
            "offset",
            "length"
        }
    .end annotation

    invoke-virtual {p0}, Lt9/c;->D()J

    move-result-wide v0

    iput-wide v0, p0, Lt9/c;->q:J

    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v2

    iput-object v2, p0, Lt9/c;->a:Landroid/media/SoundPool;

    iget-object v0, p0, Lt9/c;->b:Lt9/c$f;

    sget-object v1, Lt9/c$f;->Assets:Lt9/c$f;

    if-ne v0, v1, :cond_0

    const/4 v8, 0x1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result p1

    iput p1, p0, Lt9/c;->m:I

    goto :goto_0

    :cond_0
    sget-object p2, Lt9/c$f;->Path:Lt9/c$f;

    if-ne v0, p2, :cond_1

    const/4 p2, 0x1

    invoke-virtual {v2, p1, p2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lt9/c;->m:I

    :cond_1
    :goto_0
    iget-object p1, p0, Lt9/c;->a:Landroid/media/SoundPool;

    new-instance p2, Lt9/c$b;

    invoke-direct {p2, p0}, Lt9/c$b;-><init>(Lt9/c;)V

    invoke-virtual {p1, p2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method

.method public static synthetic r(Lt9/c;)Z
    .locals 0

    iget-boolean p0, p0, Lt9/c;->o:Z

    return p0
.end method

.method public static synthetic s(Lt9/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lt9/c;->o:Z

    return p1
.end method

.method public static synthetic t(Lt9/c;)Z
    .locals 0

    iget-boolean p0, p0, Lt9/c;->h:Z

    return p0
.end method

.method public static synthetic u(Lt9/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lt9/c;->h:Z

    return p1
.end method

.method public static synthetic v(Lt9/c;)J
    .locals 2

    iget-wide v0, p0, Lt9/c;->t:J

    return-wide v0
.end method

.method public static synthetic w(Lt9/c;J)J
    .locals 0

    iput-wide p1, p0, Lt9/c;->t:J

    return-wide p1
.end method

.method public static synthetic x(Lt9/c;)Z
    .locals 0

    iget-boolean p0, p0, Lt9/c;->g:Z

    return p0
.end method

.method public static synthetic y(Lt9/c;J)J
    .locals 0

    iput-wide p1, p0, Lt9/c;->r:J

    return-wide p1
.end method

.method public static synthetic z(Lt9/c;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lt9/c;->u:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final D()J
    .locals 7

    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    :try_start_0
    iget-object v0, p0, Lt9/c;->b:Lt9/c$f;

    sget-object v1, Lt9/c$f;->Assets:Lt9/c$f;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lt9/c;->c:Ljava/io/FileDescriptor;

    iget-wide v2, p0, Lt9/c;->d:J

    iget-wide v4, p0, Lt9/c;->e:J

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    sget-object v1, Lt9/c$f;->Path:Lt9/c$f;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lt9/c;->f:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x1

    return-wide v0

    :cond_2
    int-to-long v0, v0

    return-wide v0
.end method

.method public a()F
    .locals 1

    iget v0, p0, Lt9/c;->k:F

    return v0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lt9/c;->l:F

    return v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lt9/c;->k:F

    return v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lt9/c;->q:J

    return-wide v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lt9/c;->l:F

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lt9/c;->g:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lt9/c;->p:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lt9/c;->o:Z

    return v0
.end method

.method public i()V
    .locals 6

    iget-boolean v0, p0, Lt9/c;->p:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lt9/c;->s:J

    iget-wide v2, p0, Lt9/c;->t:J

    iget-wide v4, p0, Lt9/c;->r:J

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lt9/c;->t:J

    iget-object v0, p0, Lt9/c;->a:Landroid/media/SoundPool;

    iget v1, p0, Lt9/c;->n:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->pause(I)V

    iget-object v0, p0, Lt9/c;->u:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lt9/c$e;

    invoke-direct {v1, p0}, Lt9/c$e;-><init>(Lt9/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lt9/c;->p:Z

    :cond_1
    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lt9/c;->a:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt9/c;->p:Z

    iput-boolean v0, p0, Lt9/c;->o:Z

    return-void
.end method

.method public k(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loop"
        }
    .end annotation

    iget-boolean v0, p0, Lt9/c;->g:Z

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lt9/c;->a:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lt9/c;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt9/c;->a:Landroid/media/SoundPool;

    iget v1, p0, Lt9/c;->n:I

    if-eqz p1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->setLoop(II)V

    :cond_1
    iput-boolean p1, p0, Lt9/c;->g:Z

    return-void
.end method

.method public l(F)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pitch"
        }
    .end annotation

    iget v0, p0, Lt9/c;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt9/c;->a:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lt9/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt9/c;->a:Landroid/media/SoundPool;

    iget v1, p0, Lt9/c;->n:I

    iget v2, p0, Lt9/c;->l:F

    mul-float/2addr v2, p1

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v4, v2, v3}, LNc/b;->E(FFF)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->setRate(IF)V

    :cond_0
    iput p1, p0, Lt9/c;->k:F

    return-void
.end method

.method public m(FF)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pitch",
            "speed"
        }
    .end annotation

    iget v0, p0, Lt9/c;->k:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lt9/c;->l:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lt9/c;->a:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lt9/c;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt9/c;->a:Landroid/media/SoundPool;

    iget v1, p0, Lt9/c;->n:I

    mul-float v2, p1, p2

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v4, v2, v3}, LNc/b;->E(FFF)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->setRate(IF)V

    :cond_1
    iput p1, p0, Lt9/c;->k:F

    iput p2, p0, Lt9/c;->l:F

    return-void
.end method

.method public n(F)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    iget v0, p0, Lt9/c;->l:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt9/c;->a:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lt9/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt9/c;->a:Landroid/media/SoundPool;

    iget v1, p0, Lt9/c;->n:I

    iget v2, p0, Lt9/c;->k:F

    mul-float/2addr v2, p1

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v4, v2, v3}, LNc/b;->E(FFF)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->setRate(IF)V

    :cond_0
    iput p1, p0, Lt9/c;->l:F

    return-void
.end method

.method public o(FF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "leftVolume",
            "rightVolume"
        }
    .end annotation

    iget v0, p0, Lt9/c;->i:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lt9/c;->j:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lt9/c;->a:Landroid/media/SoundPool;

    iget v1, p0, Lt9/c;->n:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/SoundPool;->setVolume(IFF)V

    :cond_1
    iput p1, p0, Lt9/c;->i:F

    iput p2, p0, Lt9/c;->j:F

    return-void
.end method

.method public p()V
    .locals 9

    iget-boolean v0, p0, Lt9/c;->o:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v2, p0, Lt9/c;->a:Landroid/media/SoundPool;

    iget v3, p0, Lt9/c;->m:I

    iget v4, p0, Lt9/c;->i:F

    iget v5, p0, Lt9/c;->j:F

    iget-boolean v0, p0, Lt9/c;->g:Z

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    :cond_0
    move v7, v1

    iget v0, p0, Lt9/c;->k:F

    iget v1, p0, Lt9/c;->l:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v6, v0, v1}, LNc/b;->E(FFF)F

    move-result v8

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lt9/c;->n:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lt9/c;->r:J

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lt9/c$c;

    invoke-direct {v1, p0}, Lt9/c$c;-><init>(Lt9/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt9/c;->o:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lt9/c;->p:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lt9/c;->r:J

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lt9/c$d;

    invoke-direct {v2, p0}, Lt9/c$d;-><init>(Lt9/c;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lt9/c;->a:Landroid/media/SoundPool;

    iget v2, p0, Lt9/c;->n:I

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->resume(I)V

    iput-boolean v1, p0, Lt9/c;->p:Z

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lt9/c;->g:Z

    iput-boolean v0, p0, Lt9/c;->h:Z

    return-void
.end method

.method public q()V
    .locals 2

    iget-boolean v0, p0, Lt9/c;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt9/c;->o:Z

    iget-object v0, p0, Lt9/c;->a:Landroid/media/SoundPool;

    iget v1, p0, Lt9/c;->n:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lt9/c;->t:J

    return-void
.end method
