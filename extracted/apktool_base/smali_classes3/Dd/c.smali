.class public final LDd/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LDd/c$b;,
        LDd/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nYouTubePlayerBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 YouTubePlayerBridge.kt\ncom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge\n*L\n1#1,222:1\n*E\n"
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "UNSTARTED"

.field public static final d:Ljava/lang/String; = "ENDED"

.field public static final e:Ljava/lang/String; = "PLAYING"

.field public static final f:Ljava/lang/String; = "PAUSED"

.field public static final g:Ljava/lang/String; = "BUFFERING"

.field public static final h:Ljava/lang/String; = "CUED"

.field public static final i:Ljava/lang/String; = "small"

.field public static final j:Ljava/lang/String; = "medium"

.field public static final k:Ljava/lang/String; = "large"

.field public static final l:Ljava/lang/String; = "hd720"

.field public static final m:Ljava/lang/String; = "hd1080"

.field public static final n:Ljava/lang/String; = "highres"

.field public static final o:Ljava/lang/String; = "default"

.field public static final p:Ljava/lang/String; = "0.25"

.field public static final q:Ljava/lang/String; = "0.5"

.field public static final r:Ljava/lang/String; = "1"

.field public static final s:Ljava/lang/String; = "1.5"

.field public static final t:Ljava/lang/String; = "2"

.field public static final u:Ljava/lang/String; = "2"

.field public static final v:Ljava/lang/String; = "5"

.field public static final w:Ljava/lang/String; = "100"

.field public static final x:Ljava/lang/String; = "101"

.field public static final y:Ljava/lang/String; = "150"

.field public static final z:LDd/c$a;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:LDd/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LDd/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LDd/c$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, LDd/c;->z:LDd/c$a;

    return-void
.end method

.method public constructor <init>(LDd/c$b;)V
    .locals 1
    .param p1    # LDd/c$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayerOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDd/c;->b:LDd/c$b;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, LDd/c;->a:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic a(LDd/c;)LDd/c$b;
    .locals 0

    iget-object p0, p0, LDd/c;->b:LDd/c$b;

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)LDd/a$a;
    .locals 2

    const-string v0, "small"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, LDd/a$a;->SMALL:LDd/a$a;

    goto :goto_0

    :cond_0
    const-string v0, "medium"

    invoke-static {p1, v0, v1}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, LDd/a$a;->MEDIUM:LDd/a$a;

    goto :goto_0

    :cond_1
    const-string v0, "large"

    invoke-static {p1, v0, v1}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, LDd/a$a;->LARGE:LDd/a$a;

    goto :goto_0

    :cond_2
    const-string v0, "hd720"

    invoke-static {p1, v0, v1}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, LDd/a$a;->HD720:LDd/a$a;

    goto :goto_0

    :cond_3
    const-string v0, "hd1080"

    invoke-static {p1, v0, v1}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p1, LDd/a$a;->HD1080:LDd/a$a;

    goto :goto_0

    :cond_4
    const-string v0, "highres"

    invoke-static {p1, v0, v1}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p1, LDd/a$a;->HIGH_RES:LDd/a$a;

    goto :goto_0

    :cond_5
    const-string v0, "default"

    invoke-static {p1, v0, v1}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, LDd/a$a;->DEFAULT:LDd/a$a;

    goto :goto_0

    :cond_6
    sget-object p1, LDd/a$a;->UNKNOWN:LDd/a$a;

    :goto_0
    return-object p1
.end method

.method public final c(Ljava/lang/String;)LDd/a$b;
    .locals 2

    const-string v0, "0.25"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, LDd/a$b;->RATE_0_25:LDd/a$b;

    goto :goto_0

    :cond_0
    const-string v0, "0.5"

    invoke-static {p1, v0, v1}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, LDd/a$b;->RATE_0_5:LDd/a$b;

    goto :goto_0

    :cond_1
    const-string v0, "1"

    invoke-static {p1, v0, v1}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, LDd/a$b;->RATE_1:LDd/a$b;

    goto :goto_0

    :cond_2
    const-string v0, "1.5"

    invoke-static {p1, v0, v1}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, LDd/a$b;->RATE_1_5:LDd/a$b;

    goto :goto_0

    :cond_3
    const-string v0, "2"

    invoke-static {p1, v0, v1}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, LDd/a$b;->RATE_2:LDd/a$b;

    goto :goto_0

    :cond_4
    sget-object p1, LDd/a$b;->UNKNOWN:LDd/a$b;

    :goto_0
    return-object p1
.end method

.method public final d(Ljava/lang/String;)LDd/a$c;
    .locals 2

    const-string v0, "2"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, LDd/a$c;->INVALID_PARAMETER_IN_REQUEST:LDd/a$c;

    goto :goto_0

    :cond_0
    const-string v0, "5"

    invoke-static {p1, v0, v1}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, LDd/a$c;->HTML_5_PLAYER:LDd/a$c;

    goto :goto_0

    :cond_1
    const-string v0, "100"

    invoke-static {p1, v0, v1}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, LDd/a$c;->VIDEO_NOT_FOUND:LDd/a$c;

    goto :goto_0

    :cond_2
    const-string v0, "101"

    invoke-static {p1, v0, v1}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, LDd/a$c;->VIDEO_NOT_PLAYABLE_IN_EMBEDDED_PLAYER:LDd/a$c;

    goto :goto_0

    :cond_3
    const-string v0, "150"

    invoke-static {p1, v0, v1}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, LDd/a$c;->VIDEO_NOT_PLAYABLE_IN_EMBEDDED_PLAYER:LDd/a$c;

    goto :goto_0

    :cond_4
    sget-object p1, LDd/a$c;->UNKNOWN:LDd/a$c;

    :goto_0
    return-object p1
.end method

.method public final e(Ljava/lang/String;)LDd/a$d;
    .locals 2

    const-string v0, "UNSTARTED"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, LDd/a$d;->UNSTARTED:LDd/a$d;

    goto :goto_0

    :cond_0
    const-string v0, "ENDED"

    invoke-static {p1, v0, v1}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, LDd/a$d;->ENDED:LDd/a$d;

    goto :goto_0

    :cond_1
    const-string v0, "PLAYING"

    invoke-static {p1, v0, v1}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, LDd/a$d;->PLAYING:LDd/a$d;

    goto :goto_0

    :cond_2
    const-string v0, "PAUSED"

    invoke-static {p1, v0, v1}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, LDd/a$d;->PAUSED:LDd/a$d;

    goto :goto_0

    :cond_3
    const-string v0, "BUFFERING"

    invoke-static {p1, v0, v1}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p1, LDd/a$d;->BUFFERING:LDd/a$d;

    goto :goto_0

    :cond_4
    const-string v0, "CUED"

    invoke-static {p1, v0, v1}, Lag/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, LDd/a$d;->VIDEO_CUED:LDd/a$d;

    goto :goto_0

    :cond_5
    sget-object p1, LDd/a$d;->UNKNOWN:LDd/a$d;

    :goto_0
    return-object p1
.end method

.method public final sendApiChange()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, LDd/c;->a:Landroid/os/Handler;

    new-instance v1, LDd/c$c;

    invoke-direct {v1, p0}, LDd/c$c;-><init>(LDd/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendError(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LDd/c;->d(Ljava/lang/String;)LDd/a$c;

    move-result-object p1

    iget-object v0, p0, LDd/c;->a:Landroid/os/Handler;

    new-instance v1, LDd/c$d;

    invoke-direct {v1, p0, p1}, LDd/c$d;-><init>(LDd/c;LDd/a$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendPlaybackQualityChange(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "quality"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LDd/c;->b(Ljava/lang/String;)LDd/a$a;

    move-result-object p1

    iget-object v0, p0, LDd/c;->a:Landroid/os/Handler;

    new-instance v1, LDd/c$e;

    invoke-direct {v1, p0, p1}, LDd/c$e;-><init>(LDd/c;LDd/a$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendPlaybackRateChange(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "rate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LDd/c;->c(Ljava/lang/String;)LDd/a$b;

    move-result-object p1

    iget-object v0, p0, LDd/c;->a:Landroid/os/Handler;

    new-instance v1, LDd/c$f;

    invoke-direct {v1, p0, p1}, LDd/c$f;-><init>(LDd/c;LDd/a$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendReady()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, LDd/c;->a:Landroid/os/Handler;

    new-instance v1, LDd/c$g;

    invoke-direct {v1, p0}, LDd/c$g;-><init>(LDd/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendStateChange(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LDd/c;->e(Ljava/lang/String;)LDd/a$d;

    move-result-object p1

    iget-object v0, p0, LDd/c;->a:Landroid/os/Handler;

    new-instance v1, LDd/c$h;

    invoke-direct {v1, p0, p1}, LDd/c$h;-><init>(LDd/c;LDd/a$d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendVideoCurrentTime(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "seconds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, LDd/c;->a:Landroid/os/Handler;

    new-instance v1, LDd/c$i;

    invoke-direct {v1, p0, p1}, LDd/c$i;-><init>(LDd/c;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final sendVideoDuration(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "seconds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "0"

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, LDd/c;->a:Landroid/os/Handler;

    new-instance v1, LDd/c$j;

    invoke-direct {v1, p0, p1}, LDd/c$j;-><init>(LDd/c;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final sendVideoId(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LDd/c;->a:Landroid/os/Handler;

    new-instance v1, LDd/c$k;

    invoke-direct {v1, p0, p1}, LDd/c$k;-><init>(LDd/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendVideoLoadedFraction(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "fraction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, LDd/c;->a:Landroid/os/Handler;

    new-instance v1, LDd/c$l;

    invoke-direct {v1, p0, p1}, LDd/c$l;-><init>(LDd/c;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final sendYouTubeIFrameAPIReady()Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, LDd/c;->a:Landroid/os/Handler;

    new-instance v1, LDd/c$m;

    invoke-direct {v1, p0}, LDd/c$m;-><init>(LDd/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
