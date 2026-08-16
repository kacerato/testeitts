.class public final La2/o$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:La2/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public b:La2/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public c:La2/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public d:La2/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public e:La2/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public f:La2/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public g:La2/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public h:La2/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public i:La2/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public j:La2/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public k:La2/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public l:La2/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, La2/k;->b()La2/e;

    move-result-object v0

    iput-object v0, p0, La2/o$b;->a:La2/e;

    .line 3
    invoke-static {}, La2/k;->b()La2/e;

    move-result-object v0

    iput-object v0, p0, La2/o$b;->b:La2/e;

    .line 4
    invoke-static {}, La2/k;->b()La2/e;

    move-result-object v0

    iput-object v0, p0, La2/o$b;->c:La2/e;

    .line 5
    invoke-static {}, La2/k;->b()La2/e;

    move-result-object v0

    iput-object v0, p0, La2/o$b;->d:La2/e;

    .line 6
    new-instance v0, La2/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La2/a;-><init>(F)V

    iput-object v0, p0, La2/o$b;->e:La2/d;

    .line 7
    new-instance v0, La2/a;

    invoke-direct {v0, v1}, La2/a;-><init>(F)V

    iput-object v0, p0, La2/o$b;->f:La2/d;

    .line 8
    new-instance v0, La2/a;

    invoke-direct {v0, v1}, La2/a;-><init>(F)V

    iput-object v0, p0, La2/o$b;->g:La2/d;

    .line 9
    new-instance v0, La2/a;

    invoke-direct {v0, v1}, La2/a;-><init>(F)V

    iput-object v0, p0, La2/o$b;->h:La2/d;

    .line 10
    invoke-static {}, La2/k;->c()La2/g;

    move-result-object v0

    iput-object v0, p0, La2/o$b;->i:La2/g;

    .line 11
    invoke-static {}, La2/k;->c()La2/g;

    move-result-object v0

    iput-object v0, p0, La2/o$b;->j:La2/g;

    .line 12
    invoke-static {}, La2/k;->c()La2/g;

    move-result-object v0

    iput-object v0, p0, La2/o$b;->k:La2/g;

    .line 13
    invoke-static {}, La2/k;->c()La2/g;

    move-result-object v0

    iput-object v0, p0, La2/o$b;->l:La2/g;

    return-void
.end method

.method public constructor <init>(La2/o;)V
    .locals 2
    .param p1    # La2/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, La2/k;->b()La2/e;

    move-result-object v0

    iput-object v0, p0, La2/o$b;->a:La2/e;

    .line 16
    invoke-static {}, La2/k;->b()La2/e;

    move-result-object v0

    iput-object v0, p0, La2/o$b;->b:La2/e;

    .line 17
    invoke-static {}, La2/k;->b()La2/e;

    move-result-object v0

    iput-object v0, p0, La2/o$b;->c:La2/e;

    .line 18
    invoke-static {}, La2/k;->b()La2/e;

    move-result-object v0

    iput-object v0, p0, La2/o$b;->d:La2/e;

    .line 19
    new-instance v0, La2/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La2/a;-><init>(F)V

    iput-object v0, p0, La2/o$b;->e:La2/d;

    .line 20
    new-instance v0, La2/a;

    invoke-direct {v0, v1}, La2/a;-><init>(F)V

    iput-object v0, p0, La2/o$b;->f:La2/d;

    .line 21
    new-instance v0, La2/a;

    invoke-direct {v0, v1}, La2/a;-><init>(F)V

    iput-object v0, p0, La2/o$b;->g:La2/d;

    .line 22
    new-instance v0, La2/a;

    invoke-direct {v0, v1}, La2/a;-><init>(F)V

    iput-object v0, p0, La2/o$b;->h:La2/d;

    .line 23
    invoke-static {}, La2/k;->c()La2/g;

    move-result-object v0

    iput-object v0, p0, La2/o$b;->i:La2/g;

    .line 24
    invoke-static {}, La2/k;->c()La2/g;

    move-result-object v0

    iput-object v0, p0, La2/o$b;->j:La2/g;

    .line 25
    invoke-static {}, La2/k;->c()La2/g;

    move-result-object v0

    iput-object v0, p0, La2/o$b;->k:La2/g;

    .line 26
    invoke-static {}, La2/k;->c()La2/g;

    move-result-object v0

    iput-object v0, p0, La2/o$b;->l:La2/g;

    .line 27
    iget-object v0, p1, La2/o;->a:La2/e;

    iput-object v0, p0, La2/o$b;->a:La2/e;

    .line 28
    iget-object v0, p1, La2/o;->b:La2/e;

    iput-object v0, p0, La2/o$b;->b:La2/e;

    .line 29
    iget-object v0, p1, La2/o;->c:La2/e;

    iput-object v0, p0, La2/o$b;->c:La2/e;

    .line 30
    iget-object v0, p1, La2/o;->d:La2/e;

    iput-object v0, p0, La2/o$b;->d:La2/e;

    .line 31
    iget-object v0, p1, La2/o;->e:La2/d;

    iput-object v0, p0, La2/o$b;->e:La2/d;

    .line 32
    iget-object v0, p1, La2/o;->f:La2/d;

    iput-object v0, p0, La2/o$b;->f:La2/d;

    .line 33
    iget-object v0, p1, La2/o;->g:La2/d;

    iput-object v0, p0, La2/o$b;->g:La2/d;

    .line 34
    iget-object v0, p1, La2/o;->h:La2/d;

    iput-object v0, p0, La2/o$b;->h:La2/d;

    .line 35
    iget-object v0, p1, La2/o;->i:La2/g;

    iput-object v0, p0, La2/o$b;->i:La2/g;

    .line 36
    iget-object v0, p1, La2/o;->j:La2/g;

    iput-object v0, p0, La2/o$b;->j:La2/g;

    .line 37
    iget-object v0, p1, La2/o;->k:La2/g;

    iput-object v0, p0, La2/o$b;->k:La2/g;

    .line 38
    iget-object p1, p1, La2/o;->l:La2/g;

    iput-object p1, p0, La2/o$b;->l:La2/g;

    return-void
.end method

.method public static synthetic a(La2/o$b;)La2/e;
    .locals 0

    iget-object p0, p0, La2/o$b;->a:La2/e;

    return-object p0
.end method

.method public static synthetic b(La2/o$b;)La2/g;
    .locals 0

    iget-object p0, p0, La2/o$b;->j:La2/g;

    return-object p0
.end method

.method public static synthetic c(La2/o$b;)La2/g;
    .locals 0

    iget-object p0, p0, La2/o$b;->k:La2/g;

    return-object p0
.end method

.method public static synthetic d(La2/o$b;)La2/g;
    .locals 0

    iget-object p0, p0, La2/o$b;->l:La2/g;

    return-object p0
.end method

.method public static synthetic e(La2/o$b;)La2/e;
    .locals 0

    iget-object p0, p0, La2/o$b;->b:La2/e;

    return-object p0
.end method

.method public static synthetic f(La2/o$b;)La2/e;
    .locals 0

    iget-object p0, p0, La2/o$b;->c:La2/e;

    return-object p0
.end method

.method public static synthetic g(La2/o$b;)La2/e;
    .locals 0

    iget-object p0, p0, La2/o$b;->d:La2/e;

    return-object p0
.end method

.method public static synthetic h(La2/o$b;)La2/d;
    .locals 0

    iget-object p0, p0, La2/o$b;->e:La2/d;

    return-object p0
.end method

.method public static synthetic i(La2/o$b;)La2/d;
    .locals 0

    iget-object p0, p0, La2/o$b;->f:La2/d;

    return-object p0
.end method

.method public static synthetic j(La2/o$b;)La2/d;
    .locals 0

    iget-object p0, p0, La2/o$b;->g:La2/d;

    return-object p0
.end method

.method public static synthetic k(La2/o$b;)La2/d;
    .locals 0

    iget-object p0, p0, La2/o$b;->h:La2/d;

    return-object p0
.end method

.method public static synthetic l(La2/o$b;)La2/g;
    .locals 0

    iget-object p0, p0, La2/o$b;->i:La2/g;

    return-object p0
.end method

.method public static n(La2/e;)F
    .locals 1

    instance-of v0, p0, La2/n;

    if-eqz v0, :cond_0

    check-cast p0, La2/n;

    iget p0, p0, La2/n;->a:F

    return p0

    :cond_0
    instance-of v0, p0, La2/f;

    if-eqz v0, :cond_1

    check-cast p0, La2/f;

    iget p0, p0, La2/f;->a:F

    return p0

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method


# virtual methods
.method public A(ILa2/d;)La2/o$b;
    .locals 0
    .param p2    # La2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, La2/k;->a(I)La2/e;

    move-result-object p1

    invoke-virtual {p0, p1}, La2/o$b;->B(La2/e;)La2/o$b;

    move-result-object p1

    invoke-virtual {p1, p2}, La2/o$b;->D(La2/d;)La2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public B(La2/e;)La2/o$b;
    .locals 1
    .param p1    # La2/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La2/o$b;->c:La2/e;

    invoke-static {p1}, La2/o$b;->n(La2/e;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, La2/o$b;->C(F)La2/o$b;

    :cond_0
    return-object p0
.end method

.method public C(F)La2/o$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, La2/a;

    invoke-direct {v0, p1}, La2/a;-><init>(F)V

    iput-object v0, p0, La2/o$b;->g:La2/d;

    return-object p0
.end method

.method public D(La2/d;)La2/o$b;
    .locals 0
    .param p1    # La2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La2/o$b;->g:La2/d;

    return-object p0
.end method

.method public E(La2/g;)La2/o$b;
    .locals 0
    .param p1    # La2/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La2/o$b;->l:La2/g;

    return-object p0
.end method

.method public F(La2/g;)La2/o$b;
    .locals 0
    .param p1    # La2/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La2/o$b;->j:La2/g;

    return-object p0
.end method

.method public G(La2/g;)La2/o$b;
    .locals 0
    .param p1    # La2/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La2/o$b;->i:La2/g;

    return-object p0
.end method

.method public H(IF)La2/o$b;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, La2/k;->a(I)La2/e;

    move-result-object p1

    invoke-virtual {p0, p1}, La2/o$b;->J(La2/e;)La2/o$b;

    move-result-object p1

    invoke-virtual {p1, p2}, La2/o$b;->K(F)La2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public I(ILa2/d;)La2/o$b;
    .locals 0
    .param p2    # La2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, La2/k;->a(I)La2/e;

    move-result-object p1

    invoke-virtual {p0, p1}, La2/o$b;->J(La2/e;)La2/o$b;

    move-result-object p1

    invoke-virtual {p1, p2}, La2/o$b;->L(La2/d;)La2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public J(La2/e;)La2/o$b;
    .locals 1
    .param p1    # La2/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La2/o$b;->a:La2/e;

    invoke-static {p1}, La2/o$b;->n(La2/e;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, La2/o$b;->K(F)La2/o$b;

    :cond_0
    return-object p0
.end method

.method public K(F)La2/o$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, La2/a;

    invoke-direct {v0, p1}, La2/a;-><init>(F)V

    iput-object v0, p0, La2/o$b;->e:La2/d;

    return-object p0
.end method

.method public L(La2/d;)La2/o$b;
    .locals 0
    .param p1    # La2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La2/o$b;->e:La2/d;

    return-object p0
.end method

.method public M(IF)La2/o$b;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, La2/k;->a(I)La2/e;

    move-result-object p1

    invoke-virtual {p0, p1}, La2/o$b;->O(La2/e;)La2/o$b;

    move-result-object p1

    invoke-virtual {p1, p2}, La2/o$b;->P(F)La2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public N(ILa2/d;)La2/o$b;
    .locals 0
    .param p2    # La2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, La2/k;->a(I)La2/e;

    move-result-object p1

    invoke-virtual {p0, p1}, La2/o$b;->O(La2/e;)La2/o$b;

    move-result-object p1

    invoke-virtual {p1, p2}, La2/o$b;->Q(La2/d;)La2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public O(La2/e;)La2/o$b;
    .locals 1
    .param p1    # La2/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La2/o$b;->b:La2/e;

    invoke-static {p1}, La2/o$b;->n(La2/e;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, La2/o$b;->P(F)La2/o$b;

    :cond_0
    return-object p0
.end method

.method public P(F)La2/o$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, La2/a;

    invoke-direct {v0, p1}, La2/a;-><init>(F)V

    iput-object v0, p0, La2/o$b;->f:La2/d;

    return-object p0
.end method

.method public Q(La2/d;)La2/o$b;
    .locals 0
    .param p1    # La2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La2/o$b;->f:La2/d;

    return-object p0
.end method

.method public m()La2/o;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, La2/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La2/o;-><init>(La2/o$b;La2/o$a;)V

    return-object v0
.end method

.method public o(F)La2/o$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, La2/o$b;->K(F)La2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, La2/o$b;->P(F)La2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, La2/o$b;->C(F)La2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, La2/o$b;->x(F)La2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public p(La2/d;)La2/o$b;
    .locals 1
    .param p1    # La2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, La2/o$b;->L(La2/d;)La2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, La2/o$b;->Q(La2/d;)La2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, La2/o$b;->D(La2/d;)La2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, La2/o$b;->y(La2/d;)La2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public q(IF)La2/o$b;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, La2/k;->a(I)La2/e;

    move-result-object p1

    invoke-virtual {p0, p1}, La2/o$b;->r(La2/e;)La2/o$b;

    move-result-object p1

    invoke-virtual {p1, p2}, La2/o$b;->o(F)La2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public r(La2/e;)La2/o$b;
    .locals 1
    .param p1    # La2/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, La2/o$b;->J(La2/e;)La2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, La2/o$b;->O(La2/e;)La2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, La2/o$b;->B(La2/e;)La2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, La2/o$b;->w(La2/e;)La2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public s(La2/g;)La2/o$b;
    .locals 1
    .param p1    # La2/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, La2/o$b;->E(La2/g;)La2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, La2/o$b;->G(La2/g;)La2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, La2/o$b;->F(La2/g;)La2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, La2/o$b;->t(La2/g;)La2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public t(La2/g;)La2/o$b;
    .locals 0
    .param p1    # La2/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La2/o$b;->k:La2/g;

    return-object p0
.end method

.method public u(IF)La2/o$b;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, La2/k;->a(I)La2/e;

    move-result-object p1

    invoke-virtual {p0, p1}, La2/o$b;->w(La2/e;)La2/o$b;

    move-result-object p1

    invoke-virtual {p1, p2}, La2/o$b;->x(F)La2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public v(ILa2/d;)La2/o$b;
    .locals 0
    .param p2    # La2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, La2/k;->a(I)La2/e;

    move-result-object p1

    invoke-virtual {p0, p1}, La2/o$b;->w(La2/e;)La2/o$b;

    move-result-object p1

    invoke-virtual {p1, p2}, La2/o$b;->y(La2/d;)La2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public w(La2/e;)La2/o$b;
    .locals 1
    .param p1    # La2/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La2/o$b;->d:La2/e;

    invoke-static {p1}, La2/o$b;->n(La2/e;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, La2/o$b;->x(F)La2/o$b;

    :cond_0
    return-object p0
.end method

.method public x(F)La2/o$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, La2/a;

    invoke-direct {v0, p1}, La2/a;-><init>(F)V

    iput-object v0, p0, La2/o$b;->h:La2/d;

    return-object p0
.end method

.method public y(La2/d;)La2/o$b;
    .locals 0
    .param p1    # La2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La2/o$b;->h:La2/d;

    return-object p0
.end method

.method public z(IF)La2/o$b;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, La2/k;->a(I)La2/e;

    move-result-object p1

    invoke-virtual {p0, p1}, La2/o$b;->B(La2/e;)La2/o$b;

    move-result-object p1

    invoke-virtual {p1, p2}, La2/o$b;->C(F)La2/o$b;

    move-result-object p1

    return-object p1
.end method
