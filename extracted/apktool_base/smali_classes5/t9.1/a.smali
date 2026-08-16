.class public Lt9/a;
.super Lt9/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt9/a$b;
    }
.end annotation


# static fields
.field public static final s:Ljava/lang/String; = "LoopSoundEngine"


# instance fields
.field public a:I

.field public b:Landroid/media/MediaPlayer;

.field public c:Landroid/media/MediaPlayer;

.field public d:Lt9/a$b;

.field public e:Ljava/io/FileDescriptor;

.field public f:J

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Z

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:Z

.field public p:I

.field public q:J

.field public final r:Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 14
    invoke-direct {p0, p6}, Lt9/b;-><init>(Z)V

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lt9/a;->a:I

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    .line 17
    iput-object v1, p0, Lt9/a;->c:Landroid/media/MediaPlayer;

    .line 18
    iput-boolean v0, p0, Lt9/a;->i:Z

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lt9/a;->j:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    iput v0, p0, Lt9/a;->m:F

    .line 21
    iput v0, p0, Lt9/a;->n:F

    .line 22
    new-instance v0, Lt9/a$a;

    invoke-direct {v0, p0}, Lt9/a$a;-><init>(Lt9/a;)V

    iput-object v0, p0, Lt9/a;->r:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 23
    sget-object v0, Lt9/a$b;->Assets:Lt9/a$b;

    iput-object v0, p0, Lt9/a;->d:Lt9/a$b;

    .line 24
    iput-object p1, p0, Lt9/a;->e:Ljava/io/FileDescriptor;

    .line 25
    iput-wide p2, p0, Lt9/a;->f:J

    .line 26
    iput-wide p4, p0, Lt9/a;->g:J

    .line 27
    iput-boolean p6, p0, Lt9/a;->i:Z

    .line 28
    iget-object v2, p0, Lt9/a;->h:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lt9/a;->D(Ljava/lang/String;Ljava/io/FileDescriptor;JJ)V

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
    iput v0, p0, Lt9/a;->a:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    .line 4
    iput-object v1, p0, Lt9/a;->c:Landroid/media/MediaPlayer;

    .line 5
    iput-boolean v0, p0, Lt9/a;->i:Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lt9/a;->j:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lt9/a;->m:F

    .line 8
    iput v0, p0, Lt9/a;->n:F

    .line 9
    new-instance v0, Lt9/a$a;

    invoke-direct {v0, p0}, Lt9/a$a;-><init>(Lt9/a;)V

    iput-object v0, p0, Lt9/a;->r:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 10
    sget-object v0, Lt9/a$b;->Path:Lt9/a$b;

    iput-object v0, p0, Lt9/a;->d:Lt9/a$b;

    .line 11
    iput-object p1, p0, Lt9/a;->h:Ljava/lang/String;

    .line 12
    iput-boolean p2, p0, Lt9/a;->i:Z

    .line 13
    iget-object v3, p0, Lt9/a;->e:Ljava/io/FileDescriptor;

    iget-wide v4, p0, Lt9/a;->f:J

    iget-wide v6, p0, Lt9/a;->g:J

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lt9/a;->D(Ljava/lang/String;Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public static synthetic A(Lt9/a;)F
    .locals 0

    iget p0, p0, Lt9/a;->k:F

    return p0
.end method

.method public static synthetic B(Lt9/a;)F
    .locals 0

    iget p0, p0, Lt9/a;->l:F

    return p0
.end method

.method public static synthetic r(Lt9/a;)Z
    .locals 0

    iget-boolean p0, p0, Lt9/a;->i:Z

    return p0
.end method

.method public static synthetic s(Lt9/a;)Z
    .locals 0

    iget-boolean p0, p0, Lt9/a;->j:Z

    return p0
.end method

.method public static synthetic t(Lt9/a;)V
    .locals 0

    invoke-virtual {p0}, Lt9/a;->C()V

    return-void
.end method

.method public static synthetic u(Lt9/a;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static synthetic v(Lt9/a;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method public static synthetic w(Lt9/a;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lt9/a;->c:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static synthetic x(Lt9/a;)F
    .locals 0

    iget p0, p0, Lt9/a;->m:F

    return p0
.end method

.method public static synthetic y(Lt9/a;)F
    .locals 0

    iget p0, p0, Lt9/a;->n:F

    return p0
.end method

.method public static synthetic z(Lt9/a;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lt9/a;->r:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method


# virtual methods
.method public final C()V
    .locals 8

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lt9/a;->c:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    :try_start_0
    iget-object v0, p0, Lt9/a;->d:Lt9/a$b;

    sget-object v1, Lt9/a$b;->Assets:Lt9/a$b;

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lt9/a;->c:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lt9/a;->e:Ljava/io/FileDescriptor;

    iget-wide v4, p0, Lt9/a;->f:J

    iget-wide v6, p0, Lt9/a;->g:J

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    sget-object v1, Lt9/a$b;->Path:Lt9/a$b;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lt9/a;->c:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lt9/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lt9/a;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    iget v1, p0, Lt9/a;->m:F

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    iget v1, p0, Lt9/a;->n:F

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    iget-object v1, p0, Lt9/a;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    :try_start_2
    iget-object v0, p0, Lt9/a;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    iget-object v0, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lt9/a;->c:Landroid/media/MediaPlayer;

    :try_start_3
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    iget-object v1, p0, Lt9/a;->r:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public final D(Ljava/lang/String;Ljava/io/FileDescriptor;JJ)V
    .locals 8
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

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    :try_start_0
    iget-object v0, p0, Lt9/a;->d:Lt9/a$b;

    sget-object v1, Lt9/a$b;->Assets:Lt9/a$b;

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    sget-object p2, Lt9/a$b;->Path:Lt9/a$b;

    if-ne v0, p2, :cond_1

    iget-object p2, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    :try_start_1
    iget-object p1, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object p1

    iget p2, p0, Lt9/a;->m:F

    invoke-virtual {p1, p2}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    iget p2, p0, Lt9/a;->n:F

    invoke-virtual {p1, p2}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    iget-object p2, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    :try_start_2
    iget-object p1, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    iget-object p1, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lt9/a;->q:J

    iget-object p1, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    iget-object p2, p0, Lt9/a;->r:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object p1, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    iget-boolean p1, p0, Lt9/a;->i:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lt9/a;->C()V

    :cond_2
    return-void
.end method

.method public a()F
    .locals 1

    iget-object v0, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getPitch()F

    move-result v0

    return v0
.end method

.method public b()F
    .locals 1

    iget-object v0, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v0

    return v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lt9/a;->m:F

    return v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lt9/a;->q:J

    return-wide v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lt9/a;->n:F

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lt9/a;->i:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lt9/a;->o:Z

    return v0
.end method

.method public h()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public i()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lt9/a;->p:I

    iget-object v0, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt9/a;->o:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public j()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lt9/a;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lt9/a;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method public k(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loop"
        }
    .end annotation

    iput-boolean p1, p0, Lt9/a;->i:Z

    return-void
.end method

.method public l(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pitch"
        }
    .end annotation

    iput p1, p0, Lt9/a;->m:F

    iget-object v0, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    iget p1, p0, Lt9/a;->n:F

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    iget-object p1, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    return-void
.end method

.method public m(FF)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

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

    iput p1, p0, Lt9/a;->m:F

    iput p2, p0, Lt9/a;->n:F

    iget-object v0, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    invoke-virtual {v0, p2}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    iget-object p1, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    return-void
.end method

.method public n(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    iput p1, p0, Lt9/a;->n:F

    iget-object v0, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    iget v1, p0, Lt9/a;->m:F

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    iget-object p1, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    return-void
.end method

.method public o(FF)V
    .locals 1
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

    iget v0, p0, Lt9/a;->k:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lt9/a;->l:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_1
    iput p1, p0, Lt9/a;->k:F

    iput p2, p0, Lt9/a;->l:F

    return-void
.end method

.method public p()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lt9/a;->j:Z

    iget-boolean v1, p0, Lt9/a;->o:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    iget v2, p0, Lt9/a;->p:I

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    iput-boolean v0, p0, Lt9/a;->o:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :try_start_0
    iget-object v0, p0, Lt9/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lt9/a;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :try_start_1
    iget-object v0, p0, Lt9/a;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lt9/a;->j:Z

    return-void
.end method
