.class public final LQb/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/filament/View;

.field public b:Lcom/google/android/filament/ColorGrading;


# direct methods
.method public constructor <init>(Lcom/google/android/filament/View;)V
    .locals 1
    .param p1    # Lcom/google/android/filament/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, LQb/d;->a:Lcom/google/android/filament/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/filament/View;->p0(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "view == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    :goto_0
    move p0, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return p0
.end method


# virtual methods
.method public b(Lcom/google/android/filament/Engine;)LQb/d;
    .locals 1
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    new-instance v0, Lcom/google/android/filament/ToneMapper$c;

    invoke-direct {v0}, Lcom/google/android/filament/ToneMapper$c;-><init>()V

    invoke-virtual {p0, p1, v0}, LQb/d;->g(Lcom/google/android/filament/Engine;Lcom/google/android/filament/ToneMapper;)LQb/d;

    invoke-virtual {p0}, LQb/d;->f()LQb/d;

    invoke-virtual {p0}, LQb/d;->s()LQb/d;

    invoke-virtual {p0}, LQb/d;->d()LQb/d;

    sget-object p1, Lcom/google/android/filament/View$q;->VSM:Lcom/google/android/filament/View$q;

    invoke-virtual {p0, p1}, LQb/d;->p(Lcom/google/android/filament/View$q;)LQb/d;

    invoke-virtual {p0}, LQb/d;->u()LQb/d;

    invoke-virtual {p0}, LQb/d;->q()LQb/d;

    invoke-virtual {p0}, LQb/d;->i()LQb/d;

    return-object p0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()LQb/d;
    .locals 4

    iget-object v0, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v0}, Lcom/google/android/filament/View;->d()Lcom/google/android/filament/View$b;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/filament/View$b;->k:Z

    const/high16 v2, 0x40400000    # 3.0f

    iput v2, v0, Lcom/google/android/filament/View$b;->c:F

    const v2, 0x3f4ccccd    # 0.8f

    iput v2, v0, Lcom/google/android/filament/View$b;->b:F

    const v2, 0x3ca3d70a    # 0.02f

    iput v2, v0, Lcom/google/android/filament/View$b;->d:F

    sget-object v2, Lcom/google/android/filament/View$n;->ULTRA:Lcom/google/android/filament/View$n;

    iput-object v2, v0, Lcom/google/android/filament/View$b;->h:Lcom/google/android/filament/View$n;

    const/high16 v2, 0x44340000    # 720.0f

    iput v2, v0, Lcom/google/android/filament/View$b;->e:F

    sget-object v2, Lcom/google/android/filament/View$n;->HIGH:Lcom/google/android/filament/View$n;

    iput-object v2, v0, Lcom/google/android/filament/View$b;->j:Lcom/google/android/filament/View$n;

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v0, Lcom/google/android/filament/View$b;->m:F

    iput-boolean v1, v0, Lcom/google/android/filament/View$b;->l:Z

    iput-boolean v1, v0, Lcom/google/android/filament/View$b;->w:Z

    iget-object v1, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/View;->V(Lcom/google/android/filament/View$b;)V

    return-object p0
.end method

.method public e()LQb/d;
    .locals 2

    iget-object v0, p0, LQb/d;->a:Lcom/google/android/filament/View;

    sget-object v1, Lcom/google/android/filament/View$c;->FXAA:Lcom/google/android/filament/View$c;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/View;->W(Lcom/google/android/filament/View$c;)V

    return-object p0
.end method

.method public f()LQb/d;
    .locals 3

    iget-object v0, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v0}, Lcom/google/android/filament/View;->g()Lcom/google/android/filament/View$e;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/filament/View$e;->h:Z

    iput-boolean v1, v0, Lcom/google/android/filament/View$e;->g:Z

    const/high16 v2, 0x40000000    # 2.0f

    iput v2, v0, Lcom/google/android/filament/View$e;->i:F

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v0, Lcom/google/android/filament/View$e;->c:F

    sget-object v2, Lcom/google/android/filament/View$e$a;->ADD:Lcom/google/android/filament/View$e$a;

    iput-object v2, v0, Lcom/google/android/filament/View$e;->f:Lcom/google/android/filament/View$e$a;

    iput-boolean v1, v0, Lcom/google/android/filament/View$e;->k:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/filament/View$e;->l:Z

    const v1, 0x3ba3d70a    # 0.005f

    iput v1, v0, Lcom/google/android/filament/View$e;->m:F

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/filament/View$e;->n:I

    const v1, 0x3f19999a    # 0.6f

    iput v1, v0, Lcom/google/android/filament/View$e;->o:F

    const/high16 v1, 0x40e00000    # 7.0f

    iput v1, v0, Lcom/google/android/filament/View$e;->p:F

    const v1, 0x3da3d70a    # 0.08f

    iput v1, v0, Lcom/google/android/filament/View$e;->r:F

    const v1, 0x3d23d70a    # 0.04f

    iput v1, v0, Lcom/google/android/filament/View$e;->q:F

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/filament/View$e;->a:Lcom/google/android/filament/Texture;

    const v1, 0x3dcccccd    # 0.1f

    iput v1, v0, Lcom/google/android/filament/View$e;->b:F

    iget-object v1, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/View;->Y(Lcom/google/android/filament/View$e;)V

    return-object p0
.end method

.method public g(Lcom/google/android/filament/Engine;Lcom/google/android/filament/ToneMapper;)LQb/d;
    .locals 1
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "engine",
            "toneMapper"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/filament/ColorGrading$a;

    invoke-direct {v0}, Lcom/google/android/filament/ColorGrading$a;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/android/filament/ColorGrading$a;->r(Lcom/google/android/filament/ToneMapper;)Lcom/google/android/filament/ColorGrading$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/filament/ColorGrading$a;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/ColorGrading;

    move-result-object p1

    iput-object p1, p0, LQb/d;->b:Lcom/google/android/filament/ColorGrading;

    iget-object p2, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {p2, p1}, Lcom/google/android/filament/View;->b0(Lcom/google/android/filament/ColorGrading;)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "engine == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h()LQb/d;
    .locals 2

    iget-object v0, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v0}, Lcom/google/android/filament/View;->j()Lcom/google/android/filament/View$f;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/filament/View$f;->d:Z

    sget-object v1, Lcom/google/android/filament/View$f$a;->MEDIAN:Lcom/google/android/filament/View$f$a;

    iput-object v1, v0, Lcom/google/android/filament/View$f;->e:Lcom/google/android/filament/View$f$a;

    const/high16 v1, 0x42480000    # 50.0f

    iput v1, v0, Lcom/google/android/filament/View$f;->a:F

    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Lcom/google/android/filament/View$f;->c:F

    iget-object v1, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/View;->c0(Lcom/google/android/filament/View$f;)V

    return-object p0
.end method

.method public i()LQb/d;
    .locals 2

    iget-object v0, p0, LQb/d;->a:Lcom/google/android/filament/View;

    sget-object v1, Lcom/google/android/filament/View$g;->TEMPORAL:Lcom/google/android/filament/View$g;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/View;->d0(Lcom/google/android/filament/View$g;)V

    return-object p0
.end method

.method public j()LQb/d;
    .locals 2

    iget-object v0, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v0}, Lcom/google/android/filament/View;->l()Lcom/google/android/filament/View$h;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/filament/View$h;->d:Z

    iget-object v1, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/View;->f0(Lcom/google/android/filament/View$h;)V

    return-object p0
.end method

.method public k()LQb/d;
    .locals 2

    iget-object v0, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v0}, Lcom/google/android/filament/View;->q()Lcom/google/android/filament/View$j;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/filament/View$j;->a:Z

    iget-object v1, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/View;->k0(Lcom/google/android/filament/View$j;)V

    return-object p0
.end method

.method public l()LQb/d;
    .locals 2

    iget-object v0, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v0}, Lcom/google/android/filament/View;->t()Lcom/google/android/filament/View$k;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/filament/View$k;->a:Z

    iget-object v1, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/View;->n0(Lcom/google/android/filament/View$k;)V

    return-object p0
.end method

.method public m()LQb/d;
    .locals 2

    iget-object v0, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v0}, Lcom/google/android/filament/View;->w()Lcom/google/android/filament/View$o;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/View$n;->ULTRA:Lcom/google/android/filament/View$n;

    iput-object v1, v0, Lcom/google/android/filament/View$o;->a:Lcom/google/android/filament/View$n;

    iget-object v1, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/View;->q0(Lcom/google/android/filament/View$o;)V

    return-object p0
.end method

.method public n()LQb/d;
    .locals 2

    iget-object v0, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v0}, Lcom/google/android/filament/View;->A()Lcom/google/android/filament/View$p;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/filament/View$p;->e:Z

    const v1, 0x3c23d70a    # 0.01f

    iput v1, v0, Lcom/google/android/filament/View$p;->b:F

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, v0, Lcom/google/android/filament/View$p;->c:F

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, v0, Lcom/google/android/filament/View$p;->a:F

    const/high16 v1, 0x3e800000    # 0.25f

    iput v1, v0, Lcom/google/android/filament/View$p;->d:F

    iget-object v1, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/View;->u0(Lcom/google/android/filament/View$p;)V

    return-object p0
.end method

.method public o()LQb/d;
    .locals 2

    iget-object v0, p0, LQb/d;->a:Lcom/google/android/filament/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/View;->v0(Z)V

    return-object p0
.end method

.method public p(Lcom/google/android/filament/View$q;)LQb/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget-object v0, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v0, p1}, Lcom/google/android/filament/View;->w0(Lcom/google/android/filament/View$q;)V

    return-object p0
.end method

.method public q()LQb/d;
    .locals 2

    iget-object v0, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v0}, Lcom/google/android/filament/View;->B()Lcom/google/android/filament/View$r;

    move-result-object v0

    iget-object v1, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/View;->y0(Lcom/google/android/filament/View$r;)V

    return-object p0
.end method

.method public r()LQb/d;
    .locals 2

    iget-object v0, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v0}, Lcom/google/android/filament/View;->D()Lcom/google/android/filament/View$u;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/filament/View$u;->e:Z

    iget-object v1, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/View;->B0(Lcom/google/android/filament/View$u;)V

    return-object p0
.end method

.method public s()LQb/d;
    .locals 2

    iget-object v0, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v0}, Lcom/google/android/filament/View;->G()Lcom/google/android/filament/View$w;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/filament/View$w;->e:Z

    iget-object v1, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/View;->F0(Lcom/google/android/filament/View$w;)V

    return-object p0
.end method

.method public t()LQb/d;
    .locals 2

    iget-object v0, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v0}, Lcom/google/android/filament/View;->o()Lcom/google/android/filament/View$i;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/filament/View$i;->l:Z

    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, v0, Lcom/google/android/filament/View$i;->a:F

    const v1, 0x3ba3d70a    # 0.005f

    iput v1, v0, Lcom/google/android/filament/View$i;->g:F

    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, v0, Lcom/google/android/filament/View$i;->d:F

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/filament/View$i;->e:F

    iget-object v1, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/View;->g0(Lcom/google/android/filament/View$i;)V

    return-object p0
.end method

.method public u()LQb/d;
    .locals 2

    iget-object v0, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v0}, Lcom/google/android/filament/View;->J()Lcom/google/android/filament/View$x;

    move-result-object v0

    iget-object v1, p0, LQb/d;->a:Lcom/google/android/filament/View;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/View;->H0(Lcom/google/android/filament/View$x;)V

    return-object p0
.end method
