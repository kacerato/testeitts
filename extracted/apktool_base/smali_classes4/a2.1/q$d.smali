.class public La2/q$d;
.super La2/q$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final h:Landroid/graphics/RectF;


# instance fields
.field public b:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public f:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public g:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, La2/q$d;->h:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, La2/q$g;-><init>()V

    invoke-virtual {p0, p1}, La2/q$d;->q(F)V

    invoke-virtual {p0, p2}, La2/q$d;->u(F)V

    invoke-virtual {p0, p3}, La2/q$d;->r(F)V

    invoke-virtual {p0, p4}, La2/q$d;->p(F)V

    return-void
.end method

.method public static synthetic b(La2/q$d;)F
    .locals 0

    invoke-virtual {p0}, La2/q$d;->k()F

    move-result p0

    return p0
.end method

.method public static synthetic c(La2/q$d;)F
    .locals 0

    invoke-virtual {p0}, La2/q$d;->o()F

    move-result p0

    return p0
.end method

.method public static synthetic d(La2/q$d;)F
    .locals 0

    invoke-virtual {p0}, La2/q$d;->l()F

    move-result p0

    return p0
.end method

.method public static synthetic e(La2/q$d;)F
    .locals 0

    invoke-virtual {p0}, La2/q$d;->j()F

    move-result p0

    return p0
.end method

.method public static synthetic f(La2/q$d;F)V
    .locals 0

    invoke-virtual {p0, p1}, La2/q$d;->s(F)V

    return-void
.end method

.method public static synthetic g(La2/q$d;F)V
    .locals 0

    invoke-virtual {p0, p1}, La2/q$d;->t(F)V

    return-void
.end method

.method public static synthetic h(La2/q$d;)F
    .locals 0

    invoke-virtual {p0}, La2/q$d;->m()F

    move-result p0

    return p0
.end method

.method public static synthetic i(La2/q$d;)F
    .locals 0

    invoke-virtual {p0}, La2/q$d;->n()F

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 5
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, La2/q$g;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    sget-object v0, La2/q$d;->h:Landroid/graphics/RectF;

    invoke-virtual {p0}, La2/q$d;->k()F

    move-result v1

    invoke-virtual {p0}, La2/q$d;->o()F

    move-result v2

    invoke-virtual {p0}, La2/q$d;->l()F

    move-result v3

    invoke-virtual {p0}, La2/q$d;->j()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, La2/q$d;->m()F

    move-result v1

    invoke-virtual {p0}, La2/q$d;->n()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final j()F
    .locals 1

    iget v0, p0, La2/q$d;->e:F

    return v0
.end method

.method public final k()F
    .locals 1

    iget v0, p0, La2/q$d;->b:F

    return v0
.end method

.method public final l()F
    .locals 1

    iget v0, p0, La2/q$d;->d:F

    return v0
.end method

.method public final m()F
    .locals 1

    iget v0, p0, La2/q$d;->f:F

    return v0
.end method

.method public final n()F
    .locals 1

    iget v0, p0, La2/q$d;->g:F

    return v0
.end method

.method public final o()F
    .locals 1

    iget v0, p0, La2/q$d;->c:F

    return v0
.end method

.method public final p(F)V
    .locals 0

    iput p1, p0, La2/q$d;->e:F

    return-void
.end method

.method public final q(F)V
    .locals 0

    iput p1, p0, La2/q$d;->b:F

    return-void
.end method

.method public final r(F)V
    .locals 0

    iput p1, p0, La2/q$d;->d:F

    return-void
.end method

.method public final s(F)V
    .locals 0

    iput p1, p0, La2/q$d;->f:F

    return-void
.end method

.method public final t(F)V
    .locals 0

    iput p1, p0, La2/q$d;->g:F

    return-void
.end method

.method public final u(F)V
    .locals 0

    iput p1, p0, La2/q$d;->c:F

    return-void
.end method
