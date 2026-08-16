.class public La2/q$e;
.super La2/q$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    invoke-direct {p0}, La2/q$g;-><init>()V

    invoke-virtual {p0, p1}, La2/q$e;->h(F)V

    invoke-virtual {p0, p2}, La2/q$e;->j(F)V

    invoke-virtual {p0, p3}, La2/q$e;->i(F)V

    invoke-virtual {p0, p4}, La2/q$e;->k(F)V

    invoke-virtual {p0, p5}, La2/q$e;->l(F)V

    invoke-virtual {p0, p6}, La2/q$e;->m(F)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 8
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

    iget v2, p0, La2/q$e;->b:F

    iget v3, p0, La2/q$e;->c:F

    iget v4, p0, La2/q$e;->d:F

    iget v5, p0, La2/q$e;->e:F

    iget v6, p0, La2/q$e;->f:F

    iget v7, p0, La2/q$e;->g:F

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final b()F
    .locals 1

    iget v0, p0, La2/q$e;->b:F

    return v0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, La2/q$e;->d:F

    return v0
.end method

.method public final d()F
    .locals 1

    iget v0, p0, La2/q$e;->c:F

    return v0
.end method

.method public final e()F
    .locals 1

    iget v0, p0, La2/q$e;->c:F

    return v0
.end method

.method public final f()F
    .locals 1

    iget v0, p0, La2/q$e;->f:F

    return v0
.end method

.method public final g()F
    .locals 1

    iget v0, p0, La2/q$e;->g:F

    return v0
.end method

.method public final h(F)V
    .locals 0

    iput p1, p0, La2/q$e;->b:F

    return-void
.end method

.method public final i(F)V
    .locals 0

    iput p1, p0, La2/q$e;->d:F

    return-void
.end method

.method public final j(F)V
    .locals 0

    iput p1, p0, La2/q$e;->c:F

    return-void
.end method

.method public final k(F)V
    .locals 0

    iput p1, p0, La2/q$e;->e:F

    return-void
.end method

.method public final l(F)V
    .locals 0

    iput p1, p0, La2/q$e;->f:F

    return-void
.end method

.method public final m(F)V
    .locals 0

    iput p1, p0, La2/q$e;->g:F

    return-void
.end method
