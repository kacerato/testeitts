.class public La2/q$h;
.super La2/q$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La2/q$g;-><init>()V

    return-void
.end method

.method public static synthetic b(La2/q$h;F)V
    .locals 0

    invoke-virtual {p0, p1}, La2/q$h;->j(F)V

    return-void
.end method

.method public static synthetic c(La2/q$h;F)V
    .locals 0

    invoke-virtual {p0, p1}, La2/q$h;->k(F)V

    return-void
.end method

.method public static synthetic d(La2/q$h;F)V
    .locals 0

    invoke-direct {p0, p1}, La2/q$h;->l(F)V

    return-void
.end method

.method public static synthetic e(La2/q$h;F)V
    .locals 0

    invoke-direct {p0, p1}, La2/q$h;->m(F)V

    return-void
.end method

.method private h()F
    .locals 1

    iget v0, p0, La2/q$h;->d:F

    return v0
.end method

.method private i()F
    .locals 1

    iget v0, p0, La2/q$h;->e:F

    return v0
.end method

.method private l(F)V
    .locals 0

    iput p1, p0, La2/q$h;->d:F

    return-void
.end method

.method private m(F)V
    .locals 0

    iput p1, p0, La2/q$h;->e:F

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 4
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

    invoke-virtual {p0}, La2/q$h;->f()F

    move-result v0

    invoke-virtual {p0}, La2/q$h;->g()F

    move-result v1

    invoke-direct {p0}, La2/q$h;->h()F

    move-result v2

    invoke-direct {p0}, La2/q$h;->i()F

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final f()F
    .locals 1

    iget v0, p0, La2/q$h;->b:F

    return v0
.end method

.method public final g()F
    .locals 1

    iget v0, p0, La2/q$h;->c:F

    return v0
.end method

.method public final j(F)V
    .locals 0

    iput p1, p0, La2/q$h;->b:F

    return-void
.end method

.method public final k(F)V
    .locals 0

    iput p1, p0, La2/q$h;->c:F

    return-void
.end method
