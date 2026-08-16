.class public final LGd/d;
.super LEd/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlaybackResumer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaybackResumer.kt\ncom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer\n*L\n1#1,70:1\n*E\n"
.end annotation


# instance fields
.field public b:Z

.field public c:Z

.field public d:LDd/a$c;

.field public e:Ljava/lang/String;

.field public f:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LEd/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LGd/d;->b:Z

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LGd/d;->b:Z

    return-void
.end method

.method public final c(LDd/b;)V
    .locals 4
    .param p1    # LDd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LGd/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, LGd/d;->c:Z

    if-eqz v1, :cond_0

    iget-object v2, p0, LGd/d;->d:LDd/a$c;

    sget-object v3, LDd/a$c;->HTML_5_PLAYER:LDd/a$c;

    if-ne v2, v3, :cond_0

    iget-boolean v1, p0, LGd/d;->b:Z

    iget v2, p0, LGd/d;->f:F

    invoke-static {p1, v1, v0, v2}, LGd/g;->b(LDd/b;ZLjava/lang/String;F)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, p0, LGd/d;->d:LDd/a$c;

    sget-object v2, LDd/a$c;->HTML_5_PLAYER:LDd/a$c;

    if-ne v1, v2, :cond_1

    iget v1, p0, LGd/d;->f:F

    invoke-interface {p1, v0, v1}, LDd/b;->f(Ljava/lang/String;F)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, LGd/d;->d:LDd/a$c;

    return-void
.end method

.method public e(LDd/b;Ljava/lang/String;)V
    .locals 1
    .param p1    # LDd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoId"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, LGd/d;->e:Ljava/lang/String;

    return-void
.end method

.method public j(LDd/b;LDd/a$c;)V
    .locals 1
    .param p1    # LDd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LDd/a$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, LDd/a$c;->HTML_5_PLAYER:LDd/a$c;

    if-ne p2, p1, :cond_0

    iput-object p2, p0, LGd/d;->d:LDd/a$c;

    :cond_0
    return-void
.end method

.method public l(LDd/b;F)V
    .locals 1
    .param p1    # LDd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput p2, p0, LGd/d;->f:F

    return-void
.end method

.method public v(LDd/b;LDd/a$d;)V
    .locals 2
    .param p1    # LDd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LDd/a$d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, LGd/c;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, LGd/d;->c:Z

    return-void

    :cond_1
    iput-boolean p2, p0, LGd/d;->c:Z

    return-void

    :cond_2
    iput-boolean p2, p0, LGd/d;->c:Z

    return-void
.end method
