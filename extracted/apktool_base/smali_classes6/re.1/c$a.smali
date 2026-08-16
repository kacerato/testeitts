.class public Lre/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lre/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Landroid/graphics/Typeface;

.field public o:Landroid/graphics/Typeface;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:Landroid/graphics/Typeface;

.field public u:[F

.field public v:I

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lre/c$a;->b:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lre/c$a;->r:I

    .line 4
    iput v0, p0, Lre/c$a;->w:I

    return-void
.end method

.method public constructor <init>(Lre/c;)V
    .locals 1
    .param p1    # Lre/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lre/c$a;->b:Z

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lre/c$a;->r:I

    .line 8
    iput v0, p0, Lre/c$a;->w:I

    .line 9
    iget v0, p1, Lre/c;->a:I

    iput v0, p0, Lre/c$a;->a:I

    .line 10
    iget-boolean v0, p1, Lre/c;->b:Z

    iput-boolean v0, p0, Lre/c$a;->b:Z

    .line 11
    iget v0, p1, Lre/c;->c:I

    iput v0, p0, Lre/c$a;->c:I

    .line 12
    iget v0, p1, Lre/c;->d:I

    iput v0, p0, Lre/c$a;->d:I

    .line 13
    iget v0, p1, Lre/c;->e:I

    iput v0, p0, Lre/c$a;->e:I

    .line 14
    iget v0, p1, Lre/c;->f:I

    iput v0, p0, Lre/c$a;->f:I

    .line 15
    iget v0, p1, Lre/c;->g:I

    iput v0, p0, Lre/c$a;->g:I

    .line 16
    iget v0, p1, Lre/c;->h:I

    iput v0, p0, Lre/c$a;->h:I

    .line 17
    iget v0, p1, Lre/c;->i:I

    iput v0, p0, Lre/c$a;->i:I

    .line 18
    iget v0, p1, Lre/c;->j:I

    iput v0, p0, Lre/c$a;->j:I

    .line 19
    iget v0, p1, Lre/c;->k:I

    iput v0, p0, Lre/c$a;->k:I

    .line 20
    iget v0, p1, Lre/c;->l:I

    iput v0, p0, Lre/c$a;->l:I

    .line 21
    iget v0, p1, Lre/c;->m:I

    iput v0, p0, Lre/c$a;->m:I

    .line 22
    iget-object v0, p1, Lre/c;->n:Landroid/graphics/Typeface;

    iput-object v0, p0, Lre/c$a;->n:Landroid/graphics/Typeface;

    .line 23
    iget v0, p1, Lre/c;->p:I

    iput v0, p0, Lre/c$a;->p:I

    .line 24
    iget v0, p1, Lre/c;->r:I

    iput v0, p0, Lre/c$a;->r:I

    .line 25
    iget v0, p1, Lre/c;->s:I

    iput v0, p0, Lre/c$a;->s:I

    .line 26
    iget-object v0, p1, Lre/c;->t:Landroid/graphics/Typeface;

    iput-object v0, p0, Lre/c$a;->t:Landroid/graphics/Typeface;

    .line 27
    iget-object v0, p1, Lre/c;->u:[F

    iput-object v0, p0, Lre/c$a;->u:[F

    .line 28
    iget v0, p1, Lre/c;->v:I

    iput v0, p0, Lre/c$a;->v:I

    .line 29
    iget p1, p1, Lre/c;->w:I

    iput p1, p0, Lre/c$a;->w:I

    return-void
.end method

.method public static synthetic a(Lre/c$a;)I
    .locals 0

    iget p0, p0, Lre/c$a;->a:I

    return p0
.end method

.method public static synthetic b(Lre/c$a;)Z
    .locals 0

    iget-boolean p0, p0, Lre/c$a;->b:Z

    return p0
.end method

.method public static synthetic c(Lre/c$a;)I
    .locals 0

    iget p0, p0, Lre/c$a;->k:I

    return p0
.end method

.method public static synthetic d(Lre/c$a;)I
    .locals 0

    iget p0, p0, Lre/c$a;->l:I

    return p0
.end method

.method public static synthetic e(Lre/c$a;)I
    .locals 0

    iget p0, p0, Lre/c$a;->m:I

    return p0
.end method

.method public static synthetic f(Lre/c$a;)Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lre/c$a;->n:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public static synthetic g(Lre/c$a;)Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lre/c$a;->o:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public static synthetic h(Lre/c$a;)I
    .locals 0

    iget p0, p0, Lre/c$a;->p:I

    return p0
.end method

.method public static synthetic i(Lre/c$a;)I
    .locals 0

    iget p0, p0, Lre/c$a;->q:I

    return p0
.end method

.method public static synthetic j(Lre/c$a;)I
    .locals 0

    iget p0, p0, Lre/c$a;->r:I

    return p0
.end method

.method public static synthetic k(Lre/c$a;)I
    .locals 0

    iget p0, p0, Lre/c$a;->s:I

    return p0
.end method

.method public static synthetic l(Lre/c$a;)Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lre/c$a;->t:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public static synthetic m(Lre/c$a;)I
    .locals 0

    iget p0, p0, Lre/c$a;->c:I

    return p0
.end method

.method public static synthetic n(Lre/c$a;)[F
    .locals 0

    iget-object p0, p0, Lre/c$a;->u:[F

    return-object p0
.end method

.method public static synthetic o(Lre/c$a;)I
    .locals 0

    iget p0, p0, Lre/c$a;->v:I

    return p0
.end method

.method public static synthetic p(Lre/c$a;)I
    .locals 0

    iget p0, p0, Lre/c$a;->w:I

    return p0
.end method

.method public static synthetic q(Lre/c$a;)I
    .locals 0

    iget p0, p0, Lre/c$a;->d:I

    return p0
.end method

.method public static synthetic r(Lre/c$a;)I
    .locals 0

    iget p0, p0, Lre/c$a;->e:I

    return p0
.end method

.method public static synthetic s(Lre/c$a;)I
    .locals 0

    iget p0, p0, Lre/c$a;->f:I

    return p0
.end method

.method public static synthetic t(Lre/c$a;)I
    .locals 0

    iget p0, p0, Lre/c$a;->g:I

    return p0
.end method

.method public static synthetic u(Lre/c$a;)I
    .locals 0

    iget p0, p0, Lre/c$a;->h:I

    return p0
.end method

.method public static synthetic v(Lre/c$a;)I
    .locals 0

    iget p0, p0, Lre/c$a;->i:I

    return p0
.end method

.method public static synthetic w(Lre/c$a;)I
    .locals 0

    iget p0, p0, Lre/c$a;->j:I

    return p0
.end method


# virtual methods
.method public A()Lre/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lre/c;

    invoke-direct {v0, p0}, Lre/c;-><init>(Lre/c$a;)V

    return-object v0
.end method

.method public B(I)Lre/c$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lre/c$a;->g:I

    return-object p0
.end method

.method public C(I)Lre/c$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lre/c$a;->h:I

    return-object p0
.end method

.method public D(I)Lre/c$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lre/c$a;->k:I

    return-object p0
.end method

.method public E(I)Lre/c$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lre/c$a;->l:I

    return-object p0
.end method

.method public F(I)Lre/c$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lre/c$a;->m:I

    return-object p0
.end method

.method public G(I)Lre/c$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lre/c$a;->j:I

    return-object p0
.end method

.method public H(I)Lre/c$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lre/c$a;->q:I

    return-object p0
.end method

.method public I(Landroid/graphics/Typeface;)Lre/c$a;
    .locals 0
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lre/c$a;->o:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public J(I)Lre/c$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lre/c$a;->i:I

    return-object p0
.end method

.method public K(I)Lre/c$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lre/c$a;->p:I

    return-object p0
.end method

.method public L(Landroid/graphics/Typeface;)Lre/c$a;
    .locals 0
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lre/c$a;->n:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public M(I)Lre/c$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lre/c$a;->s:I

    return-object p0
.end method

.method public N(I)Lre/c$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lre/c$a;->r:I

    return-object p0
.end method

.method public O([F)Lre/c$a;
    .locals 0
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            value = 0x6L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lre/c$a;->u:[F

    return-object p0
.end method

.method public P(Landroid/graphics/Typeface;)Lre/c$a;
    .locals 0
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lre/c$a;->t:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public Q(Z)Lre/c$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lre/c$a;->b:Z

    return-object p0
.end method

.method public R(I)Lre/c$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lre/c$a;->a:I

    return-object p0
.end method

.method public S(I)Lre/c$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lre/c$a;->f:I

    return-object p0
.end method

.method public T(I)Lre/c$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lre/c$a;->v:I

    return-object p0
.end method

.method public U(I)Lre/c$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lre/c$a;->w:I

    return-object p0
.end method

.method public x(I)Lre/c$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lre/c$a;->c:I

    return-object p0
.end method

.method public y(I)Lre/c$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lre/c$a;->e:I

    return-object p0
.end method

.method public z(I)Lre/c$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lre/c$a;->d:I

    return-object p0
.end method
