.class public final LId/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LId/c;
.implements LEd/d;
.implements LEd/c;
.implements LMd/b;


# instance fields
.field public b:LJd/b;

.field public final c:Landroid/view/View;

.field public final d:Landroid/view/View;

.field public final e:Landroid/widget/LinearLayout;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/widget/ProgressBar;

.field public final i:Landroid/widget/ImageView;

.field public final j:Landroid/widget/ImageView;

.field public final k:Landroid/widget/ImageView;

.field public final l:Landroid/widget/ImageView;

.field public final m:Landroid/widget/ImageView;

.field public final n:Landroid/widget/ImageView;

.field public final o:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/ui/views/YouTubePlayerSeekBar;

.field public p:Landroid/view/View$OnClickListener;

.field public q:Landroid/view/View$OnClickListener;

.field public final r:LLd/a;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public final w:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;

.field public final x:LDd/b;


# direct methods
.method public constructor <init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;LDd/b;)V
    .locals 2
    .param p1    # Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LDd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "youTubePlayer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LId/a;->w:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;

    iput-object p2, p0, LId/a;->x:LDd/b;

    const/4 p2, 0x1

    iput-boolean p2, p0, LId/a;->t:Z

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, LCd/b$j;->C:I

    invoke-static {p2, v0, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, LKd/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "youTubePlayerView.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, LKd/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LId/a;->b:LJd/b;

    sget p1, LCd/b$g;->b1:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "controlsView.findViewById(R.id.panel)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LId/a;->c:Landroid/view/View;

    sget p1, LCd/b$g;->l0:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "controlsView.findViewById(R.id.controls_container)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LId/a;->d:Landroid/view/View;

    sget v0, LCd/b$g;->z0:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "controlsView.findViewByI\u2026id.extra_views_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LId/a;->e:Landroid/widget/LinearLayout;

    sget v0, LCd/b$g;->g2:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "controlsView.findViewById(R.id.video_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LId/a;->f:Landroid/widget/TextView;

    sget v0, LCd/b$g;->P0:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "controlsView.findViewByI\u2026.id.live_video_indicator)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LId/a;->g:Landroid/widget/TextView;

    sget v0, LCd/b$g;->e1:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "controlsView.findViewById(R.id.progress)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, LId/a;->h:Landroid/widget/ProgressBar;

    sget v0, LCd/b$g;->Q0:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "controlsView.findViewById(R.id.menu_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LId/a;->i:Landroid/widget/ImageView;

    sget v0, LCd/b$g;->d1:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "controlsView.findViewById(R.id.play_pause_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LId/a;->j:Landroid/widget/ImageView;

    sget v0, LCd/b$g;->i2:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "controlsView.findViewById(R.id.youtube_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LId/a;->k:Landroid/widget/ImageView;

    sget v0, LCd/b$g;->B0:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "controlsView.findViewById(R.id.fullscreen_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LId/a;->l:Landroid/widget/ImageView;

    sget v0, LCd/b$g;->o0:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "controlsView.findViewByI\u2026ustom_action_left_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LId/a;->m:Landroid/widget/ImageView;

    sget v0, LCd/b$g;->p0:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "controlsView.findViewByI\u2026stom_action_right_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LId/a;->n:Landroid/widget/ImageView;

    sget v0, LCd/b$g;->j2:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "controlsView.findViewByI\u2026d.youtube_player_seekbar)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/ui/views/YouTubePlayerSeekBar;

    iput-object p2, p0, LId/a;->o:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/ui/views/YouTubePlayerSeekBar;

    new-instance p2, LLd/a;

    invoke-direct {p2, p1}, LLd/a;-><init>(Landroid/view/View;)V

    iput-object p2, p0, LId/a;->r:LLd/a;

    new-instance p1, LId/a$a;

    invoke-direct {p1, p0}, LId/a$a;-><init>(LId/a;)V

    iput-object p1, p0, LId/a;->p:Landroid/view/View$OnClickListener;

    new-instance p1, LId/a$b;

    invoke-direct {p1, p0}, LId/a$b;-><init>(LId/a;)V

    iput-object p1, p0, LId/a;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, LId/a;->S()V

    return-void
.end method

.method public static final synthetic F(LId/a;)LLd/a;
    .locals 0

    iget-object p0, p0, LId/a;->r:LLd/a;

    return-object p0
.end method

.method public static final synthetic G(LId/a;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, LId/a;->l:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic H(LId/a;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, LId/a;->i:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic I(LId/a;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, LId/a;->p:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static final synthetic J(LId/a;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, LId/a;->q:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static final synthetic K(LId/a;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, LId/a;->k:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic L(LId/a;)LJd/b;
    .locals 0

    iget-object p0, p0, LId/a;->b:LJd/b;

    return-object p0
.end method

.method public static final synthetic M(LId/a;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;
    .locals 0

    iget-object p0, p0, LId/a;->w:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;

    return-object p0
.end method

.method public static final synthetic N(LId/a;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/ui/views/YouTubePlayerSeekBar;
    .locals 0

    iget-object p0, p0, LId/a;->o:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/ui/views/YouTubePlayerSeekBar;

    return-object p0
.end method

.method public static final synthetic O(LId/a;)V
    .locals 0

    invoke-virtual {p0}, LId/a;->T()V

    return-void
.end method

.method public static final synthetic P(LId/a;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, LId/a;->p:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static final synthetic Q(LId/a;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, LId/a;->q:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static final synthetic R(LId/a;LJd/b;)V
    .locals 0

    iput-object p1, p0, LId/a;->b:LJd/b;

    return-void
.end method


# virtual methods
.method public A(LDd/b;LDd/a$b;)V
    .locals 1
    .param p1    # LDd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LDd/a$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playbackRate"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public B(Z)LId/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LId/a;->o:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/ui/views/YouTubePlayerSeekBar;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/ui/views/YouTubePlayerSeekBar;->getVideoCurrentTimeTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public C(LDd/b;)V
    .locals 1
    .param p1    # LDd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public D(Z)LId/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LId/a;->o:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/ui/views/YouTubePlayerSeekBar;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/ui/views/YouTubePlayerSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public E(Z)LId/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LId/a;->o:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/ui/views/YouTubePlayerSeekBar;

    invoke-virtual {v0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/ui/views/YouTubePlayerSeekBar;->setShowBufferingProgress(Z)V

    return-object p0
.end method

.method public final S()V
    .locals 2

    iget-object v0, p0, LId/a;->x:LDd/b;

    iget-object v1, p0, LId/a;->o:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/ui/views/YouTubePlayerSeekBar;

    invoke-interface {v0, v1}, LDd/b;->d(LEd/d;)Z

    iget-object v0, p0, LId/a;->x:LDd/b;

    iget-object v1, p0, LId/a;->r:LLd/a;

    invoke-interface {v0, v1}, LDd/b;->d(LEd/d;)Z

    iget-object v0, p0, LId/a;->o:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/ui/views/YouTubePlayerSeekBar;

    invoke-virtual {v0, p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/ui/views/YouTubePlayerSeekBar;->setYoutubePlayerSeekBarListener(LMd/b;)V

    iget-object v0, p0, LId/a;->c:Landroid/view/View;

    new-instance v1, LId/a$c;

    invoke-direct {v1, p0}, LId/a$c;-><init>(LId/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LId/a;->j:Landroid/widget/ImageView;

    new-instance v1, LId/a$d;

    invoke-direct {v1, p0}, LId/a$d;-><init>(LId/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LId/a;->l:Landroid/widget/ImageView;

    new-instance v1, LId/a$e;

    invoke-direct {v1, p0}, LId/a$e;-><init>(LId/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LId/a;->i:Landroid/widget/ImageView;

    new-instance v1, LId/a$f;

    invoke-direct {v1, p0}, LId/a$f;-><init>(LId/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final T()V
    .locals 1

    iget-boolean v0, p0, LId/a;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LId/a;->x:LDd/b;

    invoke-interface {v0}, LDd/b;->pause()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LId/a;->x:LDd/b;

    invoke-interface {v0}, LDd/b;->play()V

    :goto_0
    return-void
.end method

.method public final U(Z)V
    .locals 1

    iget-object v0, p0, LId/a;->j:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    sget p1, LCd/b$f;->C0:I

    goto :goto_0

    :cond_0
    sget p1, LCd/b$f;->D0:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final V(LDd/a$d;)V
    .locals 3

    sget-object v0, LId/b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, LId/a;->s:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, LId/a;->s:Z

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, LId/a;->s:Z

    :goto_0
    iget-boolean p1, p0, LId/a;->s:Z

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, LId/a;->U(Z)V

    return-void
.end method

.method public a(F)V
    .locals 1

    iget-object v0, p0, LId/a;->x:LDd/b;

    invoke-interface {v0, p1}, LDd/b;->a(F)V

    return-void
.end method

.method public addView(Landroid/view/View;)LId/c;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LId/a;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object p0
.end method

.method public b(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)LId/c;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LId/a;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, LId/a;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, LId/a;->p(Z)LId/c;

    return-object p0
.end method

.method public c(Landroid/view/View$OnClickListener;)LId/c;
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "customMenuButtonClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LId/a;->q:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public d(Z)LId/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LId/a;->k:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p0
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

    iget-object p1, p0, LId/a;->k:Landroid/widget/ImageView;

    new-instance v0, LId/a$g;

    invoke-direct {v0, p0, p2}, LId/a$g;-><init>(LId/a;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public f(LDd/b;F)V
    .locals 0
    .param p1    # LDd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "youTubePlayer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, LId/a;->l:Landroid/widget/ImageView;

    sget v1, LCd/b$f;->z0:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public getMenu()LJd/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LId/a;->b:LJd/b;

    return-object v0
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, LId/a;->l:Landroid/widget/ImageView;

    sget v1, LCd/b$f;->A0:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public i(Z)LId/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LId/a;->o:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/ui/views/YouTubePlayerSeekBar;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/ui/views/YouTubePlayerSeekBar;->getVideoDurationTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-object p0
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

    return-void
.end method

.method public k(Z)LId/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LId/a;->i:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p0
.end method

.method public l(LDd/b;F)V
    .locals 0
    .param p1    # LDd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "youTubePlayer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public m(LDd/b;LDd/a$a;)V
    .locals 1
    .param p1    # LDd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LDd/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playbackQuality"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public n(Z)LId/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, LId/a;->u:Z

    iget-object v0, p0, LId/a;->m:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p0
.end method

.method public o(Z)LId/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LId/a;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public p(Z)LId/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, LId/a;->v:Z

    iget-object v0, p0, LId/a;->n:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p0
.end method

.method public q(Z)LId/c;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LId/a;->j:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean p1, p0, LId/a;->t:Z

    return-object p0
.end method

.method public r(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)LId/c;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LId/a;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, LId/a;->m:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, LId/a;->n(Z)LId/c;

    return-object p0
.end method

.method public removeView(Landroid/view/View;)LId/c;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LId/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-object p0
.end method

.method public s(LDd/b;)V
    .locals 1
    .param p1    # LDd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public t(Ljava/lang/String;)LId/c;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "videoTitle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LId/a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public u(Z)LId/c;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LId/a;->o:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/ui/views/YouTubePlayerSeekBar;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LId/a;->g:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public v(LDd/b;LDd/a$d;)V
    .locals 5
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

    invoke-virtual {p0, p2}, LId/a;->V(LDd/a$d;)V

    sget-object p1, LDd/a$d;->PLAYING:LDd/a$d;

    const v0, 0x106000d

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p2, p1, :cond_3

    sget-object v3, LDd/a$d;->PAUSED:LDd/a$d;

    if-eq p2, v3, :cond_3

    sget-object v3, LDd/a$d;->VIDEO_CUED:LDd/a$d;

    if-ne p2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, LId/a;->U(Z)V

    sget-object p1, LDd/a$d;->BUFFERING:LDd/a$d;

    if-ne p2, p1, :cond_2

    iget-object p1, p0, LId/a;->h:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, LId/a;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-boolean p1, p0, LId/a;->t:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, LId/a;->j:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, LId/a;->m:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, LId/a;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    sget-object p1, LDd/a$d;->UNSTARTED:LDd/a$d;

    if-ne p2, p1, :cond_8

    iget-object p1, p0, LId/a;->h:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p1, p0, LId/a;->t:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, LId/a;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v3, p0, LId/a;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, LId/a;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, LId/a;->t:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, LId/a;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-boolean v0, p0, LId/a;->u:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, LId/a;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-boolean v0, p0, LId/a;->v:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, LId/a;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    if-ne p2, p1, :cond_7

    const/4 v2, 0x1

    :cond_7
    invoke-virtual {p0, v2}, LId/a;->U(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method public w(LDd/b;F)V
    .locals 0
    .param p1    # LDd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "youTubePlayer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public x(Z)LId/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LId/a;->l:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p0
.end method

.method public y(Z)LId/c;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LId/a;->r:LLd/a;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, LLd/a;->k(Z)V

    iget-object v0, p0, LId/a;->d:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public z(Landroid/view/View$OnClickListener;)LId/c;
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "customFullScreenButtonClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LId/a;->p:Landroid/view/View$OnClickListener;

    return-object p0
.end method
