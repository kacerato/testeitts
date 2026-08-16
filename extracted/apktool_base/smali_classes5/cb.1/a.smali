.class public final Lcb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final h:J = 0x15285b8a50dae163L


# instance fields
.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcb/a;->b:F

    const/4 v1, 0x0

    iput v1, p0, Lcb/a;->c:F

    iput v1, p0, Lcb/a;->d:F

    .line 3
    iput v1, p0, Lcb/a;->e:F

    iput v0, p0, Lcb/a;->f:F

    iput v1, p0, Lcb/a;->g:F

    return-void
.end method

.method public constructor <init>(Lcb/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcb/a;->b:F

    const/4 v1, 0x0

    iput v1, p0, Lcb/a;->c:F

    iput v1, p0, Lcb/a;->d:F

    .line 6
    iput v1, p0, Lcb/a;->e:F

    iput v0, p0, Lcb/a;->f:F

    iput v1, p0, Lcb/a;->g:F

    .line 7
    invoke-virtual {p0, p1}, Lcb/a;->w(Lcb/a;)Lcb/a;

    return-void
.end method


# virtual methods
.method public A(F)Lcb/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "degrees"
        }
    .end annotation

    invoke-static {p1}, Lcb/h;->n(F)F

    move-result v0

    invoke-static {p1}, Lcb/h;->U(F)F

    move-result p1

    iput v0, p0, Lcb/a;->b:F

    neg-float v1, p1

    iput v1, p0, Lcb/a;->c:F

    const/4 v1, 0x0

    iput v1, p0, Lcb/a;->d:F

    iput p1, p0, Lcb/a;->e:F

    iput v0, p0, Lcb/a;->f:F

    iput v1, p0, Lcb/a;->g:F

    return-object p0
.end method

.method public B(FF)Lcb/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cos",
            "sin"
        }
    .end annotation

    iput p1, p0, Lcb/a;->b:F

    neg-float v0, p2

    iput v0, p0, Lcb/a;->c:F

    const/4 v0, 0x0

    iput v0, p0, Lcb/a;->d:F

    iput p2, p0, Lcb/a;->e:F

    iput p1, p0, Lcb/a;->f:F

    iput v0, p0, Lcb/a;->g:F

    return-object p0
.end method

.method public C(F)Lcb/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radians"
        }
    .end annotation

    invoke-static {p1}, Lcb/h;->m(F)F

    move-result v0

    invoke-static {p1}, Lcb/h;->T(F)F

    move-result p1

    iput v0, p0, Lcb/a;->b:F

    neg-float v1, p1

    iput v1, p0, Lcb/a;->c:F

    const/4 v1, 0x0

    iput v1, p0, Lcb/a;->d:F

    iput p1, p0, Lcb/a;->e:F

    iput v0, p0, Lcb/a;->f:F

    iput v1, p0, Lcb/a;->g:F

    return-object p0
.end method

.method public D(FF)Lcb/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scaleX",
            "scaleY"
        }
    .end annotation

    iput p1, p0, Lcb/a;->b:F

    const/4 p1, 0x0

    iput p1, p0, Lcb/a;->c:F

    iput p1, p0, Lcb/a;->d:F

    iput p1, p0, Lcb/a;->e:F

    iput p2, p0, Lcb/a;->f:F

    iput p1, p0, Lcb/a;->g:F

    return-object p0
.end method

.method public E(Lcb/w;)Lcb/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    iget v0, p1, Lcb/w;->b:F

    iget p1, p1, Lcb/w;->c:F

    invoke-virtual {p0, v0, p1}, Lcb/a;->D(FF)Lcb/a;

    move-result-object p1

    return-object p1
.end method

.method public F(FF)Lcb/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shearX",
            "shearY"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcb/a;->b:F

    iput p1, p0, Lcb/a;->c:F

    const/4 p1, 0x0

    iput p1, p0, Lcb/a;->d:F

    iput p2, p0, Lcb/a;->e:F

    iput v0, p0, Lcb/a;->f:F

    iput p1, p0, Lcb/a;->g:F

    return-object p0
.end method

.method public G(Lcb/w;)Lcb/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shear"
        }
    .end annotation

    iget v0, p1, Lcb/w;->b:F

    iget p1, p1, Lcb/w;->c:F

    invoke-virtual {p0, v0, p1}, Lcb/a;->F(FF)Lcb/a;

    move-result-object p1

    return-object p1
.end method

.method public H(FF)Lcb/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcb/a;->b:F

    const/4 v1, 0x0

    iput v1, p0, Lcb/a;->c:F

    iput p1, p0, Lcb/a;->d:F

    iput v1, p0, Lcb/a;->e:F

    iput v0, p0, Lcb/a;->f:F

    iput p2, p0, Lcb/a;->g:F

    return-object p0
.end method

.method public I(Lcb/w;)Lcb/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trn"
        }
    .end annotation

    iget v0, p1, Lcb/w;->b:F

    iget p1, p1, Lcb/w;->c:F

    invoke-virtual {p0, v0, p1}, Lcb/a;->H(FF)Lcb/a;

    move-result-object p1

    return-object p1
.end method

.method public J(FFFFF)Lcb/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "radians",
            "scaleX",
            "scaleY"
        }
    .end annotation

    iput p1, p0, Lcb/a;->d:F

    iput p2, p0, Lcb/a;->g:F

    const/4 p1, 0x0

    cmpl-float p2, p3, p1

    if-nez p2, :cond_0

    iput p4, p0, Lcb/a;->b:F

    iput p1, p0, Lcb/a;->c:F

    iput p1, p0, Lcb/a;->e:F

    iput p5, p0, Lcb/a;->f:F

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcb/h;->T(F)F

    move-result p1

    invoke-static {p3}, Lcb/h;->m(F)F

    move-result p2

    mul-float p3, p2, p4

    iput p3, p0, Lcb/a;->b:F

    neg-float p3, p1

    mul-float/2addr p3, p5

    iput p3, p0, Lcb/a;->c:F

    mul-float/2addr p1, p4

    iput p1, p0, Lcb/a;->e:F

    mul-float/2addr p2, p5

    iput p2, p0, Lcb/a;->f:F

    :goto_0
    return-object p0
.end method

.method public K(Lcb/w;FLcb/w;)Lcb/a;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "trn",
            "radians",
            "scale"
        }
    .end annotation

    iget v1, p1, Lcb/w;->b:F

    iget v2, p1, Lcb/w;->c:F

    iget v4, p3, Lcb/w;->b:F

    iget v5, p3, Lcb/w;->c:F

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcb/a;->J(FFFFF)Lcb/a;

    move-result-object p1

    return-object p1
.end method

.method public L(FFFFF)Lcb/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "degrees",
            "scaleX",
            "scaleY"
        }
    .end annotation

    iput p1, p0, Lcb/a;->d:F

    iput p2, p0, Lcb/a;->g:F

    const/4 p1, 0x0

    cmpl-float p2, p3, p1

    if-nez p2, :cond_0

    iput p4, p0, Lcb/a;->b:F

    iput p1, p0, Lcb/a;->c:F

    iput p1, p0, Lcb/a;->e:F

    iput p5, p0, Lcb/a;->f:F

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcb/h;->U(F)F

    move-result p1

    invoke-static {p3}, Lcb/h;->n(F)F

    move-result p2

    mul-float p3, p2, p4

    iput p3, p0, Lcb/a;->b:F

    neg-float p3, p1

    mul-float/2addr p3, p5

    iput p3, p0, Lcb/a;->c:F

    mul-float/2addr p1, p4

    iput p1, p0, Lcb/a;->e:F

    mul-float/2addr p2, p5

    iput p2, p0, Lcb/a;->f:F

    :goto_0
    return-object p0
.end method

.method public M(Lcb/w;FLcb/w;)Lcb/a;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "trn",
            "degrees",
            "scale"
        }
    .end annotation

    iget v1, p1, Lcb/w;->b:F

    iget v2, p1, Lcb/w;->c:F

    iget v4, p3, Lcb/w;->b:F

    iget v5, p3, Lcb/w;->c:F

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcb/a;->L(FFFFF)Lcb/a;

    move-result-object p1

    return-object p1
.end method

.method public N(FFFF)Lcb/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "scaleX",
            "scaleY"
        }
    .end annotation

    iput p3, p0, Lcb/a;->b:F

    const/4 p3, 0x0

    iput p3, p0, Lcb/a;->c:F

    iput p1, p0, Lcb/a;->d:F

    iput p3, p0, Lcb/a;->e:F

    iput p4, p0, Lcb/a;->f:F

    iput p2, p0, Lcb/a;->g:F

    return-object p0
.end method

.method public O(Lcb/w;Lcb/w;)Lcb/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "trn",
            "scale"
        }
    .end annotation

    iget v0, p1, Lcb/w;->b:F

    iget p1, p1, Lcb/w;->c:F

    iget v1, p2, Lcb/w;->b:F

    iget p2, p2, Lcb/w;->c:F

    invoke-virtual {p0, v0, p1, v1, p2}, Lcb/a;->N(FFFF)Lcb/a;

    move-result-object p1

    return-object p1
.end method

.method public P(FF)Lcb/a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shearX",
            "shearY"
        }
    .end annotation

    iget v0, p0, Lcb/a;->b:F

    iget v1, p0, Lcb/a;->c:F

    mul-float v2, p2, v1

    add-float/2addr v2, v0

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    iput v2, p0, Lcb/a;->b:F

    iput v1, p0, Lcb/a;->c:F

    iget v0, p0, Lcb/a;->e:F

    iget v1, p0, Lcb/a;->f:F

    mul-float/2addr p2, v1

    add-float/2addr p2, v0

    mul-float/2addr p1, v0

    add-float/2addr v1, p1

    iput p2, p0, Lcb/a;->e:F

    iput v1, p0, Lcb/a;->f:F

    return-object p0
.end method

.method public Q(Lcb/w;)Lcb/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shear"
        }
    .end annotation

    iget v0, p1, Lcb/w;->b:F

    iget p1, p1, Lcb/w;->c:F

    invoke-virtual {p0, v0, p1}, Lcb/a;->P(FF)Lcb/a;

    move-result-object p1

    return-object p1
.end method

.method public R(FF)Lcb/a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget v0, p0, Lcb/a;->d:F

    iget v1, p0, Lcb/a;->b:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcb/a;->c:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcb/a;->d:F

    iget v0, p0, Lcb/a;->g:F

    iget v1, p0, Lcb/a;->e:F

    mul-float/2addr v1, p1

    iget p1, p0, Lcb/a;->f:F

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcb/a;->g:F

    return-object p0
.end method

.method public S(Lcb/w;)Lcb/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trn"
        }
    .end annotation

    iget v0, p1, Lcb/w;->b:F

    iget p1, p1, Lcb/w;->c:F

    invoke-virtual {p0, v0, p1}, Lcb/a;->R(FF)Lcb/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcb/w;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "point"
        }
    .end annotation

    iget v0, p1, Lcb/w;->b:F

    iget v1, p1, Lcb/w;->c:F

    iget v2, p0, Lcb/a;->b:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcb/a;->c:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcb/a;->d:F

    add-float/2addr v2, v3

    iput v2, p1, Lcb/w;->b:F

    iget v2, p0, Lcb/a;->e:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcb/a;->f:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcb/a;->g:F

    add-float/2addr v2, v0

    iput v2, p1, Lcb/w;->c:F

    return-void
.end method

.method public b()F
    .locals 3

    iget v0, p0, Lcb/a;->b:F

    iget v1, p0, Lcb/a;->f:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcb/a;->c:F

    iget v2, p0, Lcb/a;->e:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public c(Lcb/w;)Lcb/w;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget v0, p0, Lcb/a;->d:F

    iput v0, p1, Lcb/w;->b:F

    iget v0, p0, Lcb/a;->g:F

    iput v0, p1, Lcb/w;->c:F

    return-object p1
.end method

.method public d()Lcb/a;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcb/a;->b:F

    const/4 v1, 0x0

    iput v1, p0, Lcb/a;->c:F

    iput v1, p0, Lcb/a;->d:F

    iput v1, p0, Lcb/a;->e:F

    iput v0, p0, Lcb/a;->f:F

    iput v1, p0, Lcb/a;->g:F

    return-object p0
.end method

.method public e()Lcb/a;
    .locals 9

    invoke-virtual {p0}, Lcb/a;->b()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iget v0, p0, Lcb/a;->f:F

    iget v2, p0, Lcb/a;->c:F

    neg-float v3, v2

    iget v4, p0, Lcb/a;->g:F

    mul-float/2addr v2, v4

    iget v5, p0, Lcb/a;->d:F

    mul-float v6, v0, v5

    sub-float/2addr v2, v6

    iget v6, p0, Lcb/a;->e:F

    neg-float v7, v6

    iget v8, p0, Lcb/a;->b:F

    mul-float/2addr v6, v5

    mul-float/2addr v4, v8

    sub-float/2addr v6, v4

    mul-float/2addr v0, v1

    iput v0, p0, Lcb/a;->b:F

    mul-float/2addr v3, v1

    iput v3, p0, Lcb/a;->c:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcb/a;->d:F

    mul-float/2addr v7, v1

    iput v7, p0, Lcb/a;->e:F

    mul-float/2addr v8, v1

    iput v8, p0, Lcb/a;->f:F

    mul-float/2addr v1, v6

    iput v1, p0, Lcb/a;->g:F

    return-object p0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;

    const-string v1, "Can\'t invert a singular affine matrix"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Z
    .locals 3

    iget v0, p0, Lcb/a;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcb/a;->d:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcb/a;->g:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcb/a;->f:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcb/a;->c:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcb/a;->e:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 2

    iget v0, p0, Lcb/a;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcb/a;->f:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcb/a;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcb/a;->e:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h(Lcb/a;)Lcb/a;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget v0, p0, Lcb/a;->b:F

    iget v1, p1, Lcb/a;->b:F

    mul-float v2, v0, v1

    iget v3, p0, Lcb/a;->c:F

    iget v4, p1, Lcb/a;->e:F

    mul-float v5, v3, v4

    add-float/2addr v2, v5

    iget v5, p1, Lcb/a;->c:F

    mul-float v6, v0, v5

    iget v7, p1, Lcb/a;->f:F

    mul-float v8, v3, v7

    add-float/2addr v6, v8

    iget v8, p1, Lcb/a;->d:F

    mul-float/2addr v0, v8

    iget p1, p1, Lcb/a;->g:F

    mul-float/2addr v3, p1

    add-float/2addr v0, v3

    iget v3, p0, Lcb/a;->d:F

    add-float/2addr v0, v3

    iget v3, p0, Lcb/a;->e:F

    mul-float/2addr v1, v3

    iget v9, p0, Lcb/a;->f:F

    mul-float/2addr v4, v9

    add-float/2addr v1, v4

    mul-float/2addr v5, v3

    mul-float/2addr v7, v9

    add-float/2addr v5, v7

    mul-float/2addr v3, v8

    mul-float/2addr v9, p1

    add-float/2addr v3, v9

    iget p1, p0, Lcb/a;->g:F

    add-float/2addr v3, p1

    iput v2, p0, Lcb/a;->b:F

    iput v6, p0, Lcb/a;->c:F

    iput v0, p0, Lcb/a;->d:F

    iput v1, p0, Lcb/a;->e:F

    iput v5, p0, Lcb/a;->f:F

    iput v3, p0, Lcb/a;->g:F

    return-object p0
.end method

.method public i(Lcb/a;)Lcb/a;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget v0, p1, Lcb/a;->b:F

    iget v1, p0, Lcb/a;->b:F

    mul-float v2, v0, v1

    iget v3, p1, Lcb/a;->c:F

    iget v4, p0, Lcb/a;->e:F

    mul-float v5, v3, v4

    add-float/2addr v2, v5

    iget v5, p0, Lcb/a;->c:F

    mul-float v6, v0, v5

    iget v7, p0, Lcb/a;->f:F

    mul-float v8, v3, v7

    add-float/2addr v6, v8

    iget v8, p0, Lcb/a;->d:F

    mul-float/2addr v0, v8

    iget v9, p0, Lcb/a;->g:F

    mul-float/2addr v3, v9

    add-float/2addr v0, v3

    iget v3, p1, Lcb/a;->d:F

    add-float/2addr v0, v3

    iget v3, p1, Lcb/a;->e:F

    mul-float/2addr v1, v3

    iget v10, p1, Lcb/a;->f:F

    mul-float/2addr v4, v10

    add-float/2addr v1, v4

    mul-float/2addr v5, v3

    mul-float/2addr v7, v10

    add-float/2addr v5, v7

    mul-float/2addr v3, v8

    mul-float/2addr v10, v9

    add-float/2addr v3, v10

    iget p1, p1, Lcb/a;->g:F

    add-float/2addr v3, p1

    iput v2, p0, Lcb/a;->b:F

    iput v6, p0, Lcb/a;->c:F

    iput v0, p0, Lcb/a;->d:F

    iput v1, p0, Lcb/a;->e:F

    iput v5, p0, Lcb/a;->f:F

    iput v3, p0, Lcb/a;->g:F

    return-object p0
.end method

.method public j(F)Lcb/a;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "degrees"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcb/h;->n(F)F

    move-result v0

    invoke-static {p1}, Lcb/h;->U(F)F

    move-result p1

    iget v1, p0, Lcb/a;->b:F

    mul-float v2, v0, v1

    iget v3, p0, Lcb/a;->e:F

    mul-float v4, p1, v3

    sub-float/2addr v2, v4

    iget v4, p0, Lcb/a;->c:F

    mul-float v5, v0, v4

    iget v6, p0, Lcb/a;->f:F

    mul-float v7, p1, v6

    sub-float/2addr v5, v7

    iget v7, p0, Lcb/a;->d:F

    mul-float v8, v0, v7

    iget v9, p0, Lcb/a;->g:F

    mul-float v10, p1, v9

    sub-float/2addr v8, v10

    mul-float/2addr v1, p1

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    mul-float/2addr v4, p1

    mul-float/2addr v6, v0

    add-float/2addr v4, v6

    mul-float/2addr p1, v7

    mul-float/2addr v0, v9

    add-float/2addr p1, v0

    iput v2, p0, Lcb/a;->b:F

    iput v5, p0, Lcb/a;->c:F

    iput v8, p0, Lcb/a;->d:F

    iput v1, p0, Lcb/a;->e:F

    iput v4, p0, Lcb/a;->f:F

    iput p1, p0, Lcb/a;->g:F

    return-object p0
.end method

.method public k(F)Lcb/a;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radians"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcb/h;->m(F)F

    move-result v0

    invoke-static {p1}, Lcb/h;->T(F)F

    move-result p1

    iget v1, p0, Lcb/a;->b:F

    mul-float v2, v0, v1

    iget v3, p0, Lcb/a;->e:F

    mul-float v4, p1, v3

    sub-float/2addr v2, v4

    iget v4, p0, Lcb/a;->c:F

    mul-float v5, v0, v4

    iget v6, p0, Lcb/a;->f:F

    mul-float v7, p1, v6

    sub-float/2addr v5, v7

    iget v7, p0, Lcb/a;->d:F

    mul-float v8, v0, v7

    iget v9, p0, Lcb/a;->g:F

    mul-float v10, p1, v9

    sub-float/2addr v8, v10

    mul-float/2addr v1, p1

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    mul-float/2addr v4, p1

    mul-float/2addr v6, v0

    add-float/2addr v4, v6

    mul-float/2addr p1, v7

    mul-float/2addr v0, v9

    add-float/2addr p1, v0

    iput v2, p0, Lcb/a;->b:F

    iput v5, p0, Lcb/a;->c:F

    iput v8, p0, Lcb/a;->d:F

    iput v1, p0, Lcb/a;->e:F

    iput v4, p0, Lcb/a;->f:F

    iput p1, p0, Lcb/a;->g:F

    return-object p0
.end method

.method public l(FF)Lcb/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scaleX",
            "scaleY"
        }
    .end annotation

    iget v0, p0, Lcb/a;->b:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcb/a;->b:F

    iget v0, p0, Lcb/a;->c:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcb/a;->c:F

    iget v0, p0, Lcb/a;->d:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcb/a;->d:F

    iget p1, p0, Lcb/a;->e:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcb/a;->e:F

    iget p1, p0, Lcb/a;->f:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcb/a;->f:F

    iget p1, p0, Lcb/a;->g:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcb/a;->g:F

    return-object p0
.end method

.method public m(Lcb/w;)Lcb/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    iget v0, p1, Lcb/w;->b:F

    iget p1, p1, Lcb/w;->c:F

    invoke-virtual {p0, v0, p1}, Lcb/a;->l(FF)Lcb/a;

    move-result-object p1

    return-object p1
.end method

.method public n(FF)Lcb/a;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shearX",
            "shearY"
        }
    .end annotation

    iget v0, p0, Lcb/a;->b:F

    iget v1, p0, Lcb/a;->e:F

    mul-float v2, p1, v1

    add-float/2addr v2, v0

    iget v3, p0, Lcb/a;->c:F

    iget v4, p0, Lcb/a;->f:F

    mul-float v5, p1, v4

    add-float/2addr v5, v3

    iget v6, p0, Lcb/a;->d:F

    iget v7, p0, Lcb/a;->g:F

    mul-float/2addr p1, v7

    add-float/2addr p1, v6

    mul-float/2addr v0, p2

    add-float/2addr v1, v0

    mul-float/2addr v3, p2

    add-float/2addr v4, v3

    mul-float/2addr p2, v6

    add-float/2addr v7, p2

    iput v2, p0, Lcb/a;->b:F

    iput v5, p0, Lcb/a;->c:F

    iput p1, p0, Lcb/a;->d:F

    iput v1, p0, Lcb/a;->e:F

    iput v4, p0, Lcb/a;->f:F

    iput v7, p0, Lcb/a;->g:F

    return-object p0
.end method

.method public o(Lcb/w;)Lcb/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shear"
        }
    .end annotation

    iget v0, p1, Lcb/w;->b:F

    iget p1, p1, Lcb/w;->c:F

    invoke-virtual {p0, v0, p1}, Lcb/a;->n(FF)Lcb/a;

    move-result-object p1

    return-object p1
.end method

.method public p(FF)Lcb/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget v0, p0, Lcb/a;->d:F

    add-float/2addr v0, p1

    iput v0, p0, Lcb/a;->d:F

    iget p1, p0, Lcb/a;->g:F

    add-float/2addr p1, p2

    iput p1, p0, Lcb/a;->g:F

    return-object p0
.end method

.method public q(Lcb/w;)Lcb/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trn"
        }
    .end annotation

    iget v0, p1, Lcb/w;->b:F

    iget p1, p1, Lcb/w;->c:F

    invoke-virtual {p0, v0, p1}, Lcb/a;->p(FF)Lcb/a;

    move-result-object p1

    return-object p1
.end method

.method public r(F)Lcb/a;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "degrees"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcb/h;->n(F)F

    move-result v0

    invoke-static {p1}, Lcb/h;->U(F)F

    move-result p1

    iget v1, p0, Lcb/a;->b:F

    mul-float v2, v1, v0

    iget v3, p0, Lcb/a;->c:F

    mul-float v4, v3, p1

    add-float/2addr v2, v4

    neg-float v4, p1

    mul-float/2addr v1, v4

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    iget v3, p0, Lcb/a;->e:F

    mul-float v5, v3, v0

    iget v6, p0, Lcb/a;->f:F

    mul-float/2addr p1, v6

    add-float/2addr v5, p1

    mul-float/2addr v3, v4

    mul-float/2addr v6, v0

    add-float/2addr v3, v6

    iput v2, p0, Lcb/a;->b:F

    iput v1, p0, Lcb/a;->c:F

    iput v5, p0, Lcb/a;->e:F

    iput v3, p0, Lcb/a;->f:F

    return-object p0
.end method

.method public s(F)Lcb/a;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radians"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcb/h;->m(F)F

    move-result v0

    invoke-static {p1}, Lcb/h;->T(F)F

    move-result p1

    iget v1, p0, Lcb/a;->b:F

    mul-float v2, v1, v0

    iget v3, p0, Lcb/a;->c:F

    mul-float v4, v3, p1

    add-float/2addr v2, v4

    neg-float v4, p1

    mul-float/2addr v1, v4

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    iget v3, p0, Lcb/a;->e:F

    mul-float v5, v3, v0

    iget v6, p0, Lcb/a;->f:F

    mul-float/2addr p1, v6

    add-float/2addr v5, p1

    mul-float/2addr v3, v4

    mul-float/2addr v6, v0

    add-float/2addr v3, v6

    iput v2, p0, Lcb/a;->b:F

    iput v1, p0, Lcb/a;->c:F

    iput v5, p0, Lcb/a;->e:F

    iput v3, p0, Lcb/a;->f:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcb/a;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcb/a;->c:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcb/a;->d:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcb/a;->e:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcb/a;->f:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcb/a;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]\n[0.0|0.0|0.1]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(FF)Lcb/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scaleX",
            "scaleY"
        }
    .end annotation

    iget v0, p0, Lcb/a;->b:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcb/a;->b:F

    iget v0, p0, Lcb/a;->c:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcb/a;->c:F

    iget v0, p0, Lcb/a;->e:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcb/a;->e:F

    iget p1, p0, Lcb/a;->f:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcb/a;->f:F

    return-object p0
.end method

.method public v(Lcb/w;)Lcb/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    iget v0, p1, Lcb/w;->b:F

    iget p1, p1, Lcb/w;->c:F

    invoke-virtual {p0, v0, p1}, Lcb/a;->u(FF)Lcb/a;

    move-result-object p1

    return-object p1
.end method

.method public w(Lcb/a;)Lcb/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget v0, p1, Lcb/a;->b:F

    iput v0, p0, Lcb/a;->b:F

    iget v0, p1, Lcb/a;->c:F

    iput v0, p0, Lcb/a;->c:F

    iget v0, p1, Lcb/a;->d:F

    iput v0, p0, Lcb/a;->d:F

    iget v0, p1, Lcb/a;->e:F

    iput v0, p0, Lcb/a;->e:F

    iget v0, p1, Lcb/a;->f:F

    iput v0, p0, Lcb/a;->f:F

    iget p1, p1, Lcb/a;->g:F

    iput p1, p0, Lcb/a;->g:F

    return-object p0
.end method

.method public x(Lcb/i;)Lcb/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    iget-object p1, p1, Lcb/i;->b:[F

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcb/a;->b:F

    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcb/a;->c:F

    const/4 v0, 0x6

    aget v0, p1, v0

    iput v0, p0, Lcb/a;->d:F

    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcb/a;->e:F

    const/4 v0, 0x4

    aget v0, p1, v0

    iput v0, p0, Lcb/a;->f:F

    const/4 v0, 0x7

    aget p1, p1, v0

    iput p1, p0, Lcb/a;->g:F

    return-object p0
.end method

.method public y(Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;)Lcb/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;->b:[F

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcb/a;->b:F

    const/4 v0, 0x4

    aget v0, p1, v0

    iput v0, p0, Lcb/a;->c:F

    const/16 v0, 0xc

    aget v0, p1, v0

    iput v0, p0, Lcb/a;->d:F

    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcb/a;->e:F

    const/4 v0, 0x5

    aget v0, p1, v0

    iput v0, p0, Lcb/a;->f:F

    const/16 v0, 0xd

    aget p1, p1, v0

    iput p1, p0, Lcb/a;->g:F

    return-object p0
.end method

.method public z(Lcb/a;Lcb/a;)Lcb/a;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "l",
            "r"
        }
    .end annotation

    iget v0, p1, Lcb/a;->b:F

    iget v1, p2, Lcb/a;->b:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcb/a;->c:F

    iget v2, p2, Lcb/a;->e:F

    mul-float v3, v1, v2

    add-float/2addr v0, v3

    iput v0, p0, Lcb/a;->b:F

    iget v0, p1, Lcb/a;->b:F

    iget v3, p2, Lcb/a;->c:F

    mul-float/2addr v3, v0

    iget v4, p2, Lcb/a;->f:F

    mul-float/2addr v1, v4

    add-float/2addr v3, v1

    iput v3, p0, Lcb/a;->c:F

    iget v1, p2, Lcb/a;->d:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcb/a;->c:F

    iget v3, p2, Lcb/a;->g:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p1, Lcb/a;->d:F

    add-float/2addr v0, v1

    iput v0, p0, Lcb/a;->d:F

    iget v0, p1, Lcb/a;->e:F

    iget v1, p2, Lcb/a;->b:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcb/a;->f:F

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcb/a;->e:F

    iget v0, p1, Lcb/a;->e:F

    iget v2, p2, Lcb/a;->c:F

    mul-float/2addr v2, v0

    mul-float/2addr v1, v4

    add-float/2addr v2, v1

    iput v2, p0, Lcb/a;->f:F

    iget p2, p2, Lcb/a;->d:F

    mul-float/2addr v0, p2

    iget p2, p1, Lcb/a;->f:F

    mul-float/2addr p2, v3

    add-float/2addr v0, p2

    iget p1, p1, Lcb/a;->g:F

    add-float/2addr v0, p1

    iput v0, p0, Lcb/a;->g:F

    return-object p0
.end method
