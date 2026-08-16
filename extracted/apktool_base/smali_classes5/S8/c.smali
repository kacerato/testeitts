.class public LS8/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 2

    iget-boolean v0, p0, LS8/c;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, LS8/c;->b:F

    iget v1, p0, LS8/c;->e:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()F
    .locals 2

    iget-boolean v0, p0, LS8/c;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, LS8/c;->c:F

    iget v1, p0, LS8/c;->f:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()F
    .locals 2

    iget-boolean v0, p0, LS8/c;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, LS8/c;->d:F

    iget v1, p0, LS8/c;->g:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()F
    .locals 3

    iget-boolean v0, p0, LS8/c;->a:Z

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_0

    iget v0, p0, LS8/c;->e:F

    iget v2, p0, LS8/c;->b:F

    sub-float/2addr v0, v2

    mul-float/2addr v1, v0

    :cond_0
    return v1
.end method

.method public e()F
    .locals 3

    iget-boolean v0, p0, LS8/c;->a:Z

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_0

    iget v0, p0, LS8/c;->f:F

    iget v2, p0, LS8/c;->c:F

    sub-float/2addr v0, v2

    mul-float/2addr v1, v0

    :cond_0
    return v1
.end method

.method public f()F
    .locals 3

    iget-boolean v0, p0, LS8/c;->a:Z

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_0

    iget v0, p0, LS8/c;->g:F

    iget v2, p0, LS8/c;->d:F

    sub-float/2addr v0, v2

    mul-float/2addr v1, v0

    :cond_0
    return v1
.end method

.method public g([FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnMajorMatrix",
            "radius"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, LS8/c;->h([FIF)V

    return-void
.end method

.method public h([FIF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "columnMajorMatrix",
            "matrixOffset",
            "radius"
        }
    .end annotation

    add-int/lit8 v0, p2, 0xc

    aget v0, p1, v0

    add-int/lit8 v1, p2, 0xd

    aget v1, p1, v1

    add-int/lit8 p2, p2, 0xe

    aget p1, p1, p2

    const/4 p2, 0x0

    cmpl-float p2, p3, p2

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p3, 0x3f000000    # 0.5f

    :goto_0
    iget-boolean p2, p0, LS8/c;->a:Z

    if-nez p2, :cond_1

    sub-float p2, v0, p3

    iput p2, p0, LS8/c;->b:F

    sub-float p2, v1, p3

    iput p2, p0, LS8/c;->c:F

    sub-float p2, p1, p3

    iput p2, p0, LS8/c;->d:F

    add-float/2addr v0, p3

    iput v0, p0, LS8/c;->e:F

    add-float/2addr v1, p3

    iput v1, p0, LS8/c;->f:F

    add-float/2addr p1, p3

    iput p1, p0, LS8/c;->g:F

    const/4 p1, 0x1

    iput-boolean p1, p0, LS8/c;->a:Z

    return-void

    :cond_1
    iget p2, p0, LS8/c;->b:F

    sub-float v2, v0, p3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, LS8/c;->b:F

    iget p2, p0, LS8/c;->c:F

    sub-float v2, v1, p3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, LS8/c;->c:F

    iget p2, p0, LS8/c;->d:F

    sub-float v2, p1, p3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, LS8/c;->d:F

    iget p2, p0, LS8/c;->e:F

    add-float/2addr v0, p3

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, LS8/c;->e:F

    iget p2, p0, LS8/c;->f:F

    add-float/2addr v1, p3

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, LS8/c;->f:F

    iget p2, p0, LS8/c;->g:F

    add-float/2addr p1, p3

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, LS8/c;->g:F

    return-void
.end method

.method public i([F)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    iget-boolean v0, p0, LS8/c;->a:Z

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    if-nez v0, :cond_0

    const/4 v0, 0x0

    aput v0, p1, v6

    aput v0, p1, v5

    aput v0, p1, v4

    aput v7, p1, v3

    aput v7, p1, v2

    aput v7, p1, v1

    return-void

    :cond_0
    iget v0, p0, LS8/c;->b:F

    iget v8, p0, LS8/c;->e:F

    add-float v9, v0, v8

    mul-float/2addr v9, v7

    aput v9, p1, v6

    iget v6, p0, LS8/c;->c:F

    iget v9, p0, LS8/c;->f:F

    add-float v10, v6, v9

    mul-float/2addr v10, v7

    aput v10, p1, v5

    iget v5, p0, LS8/c;->d:F

    iget v10, p0, LS8/c;->g:F

    add-float v11, v5, v10

    mul-float/2addr v11, v7

    aput v11, p1, v4

    sub-float/2addr v8, v0

    mul-float/2addr v8, v7

    aput v8, p1, v3

    sub-float/2addr v9, v6

    mul-float/2addr v9, v7

    aput v9, p1, v2

    sub-float/2addr v10, v5

    mul-float/2addr v10, v7

    aput v10, p1, v1

    return-void
.end method
