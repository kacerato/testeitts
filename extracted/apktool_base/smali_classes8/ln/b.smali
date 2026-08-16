.class public Lln/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:[F

.field public d:[F

.field public e:[F

.field public f:[F

.field public g:[F

.field public h:[F

.field public i:[F


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxSamples"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lln/b;->b:I

    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lln/b;->c:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lln/b;->e:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lln/b;->d:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lln/b;->f:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lln/b;->g:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lln/b;->h:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lln/b;->i:[F

    return-void
.end method


# virtual methods
.method public a([FFFFFFF)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vel",
            "ssize",
            "pen",
            "vpen",
            "vcpen",
            "spen",
            "tpen"
        }
    .end annotation

    iget v0, p0, Lln/b;->a:I

    iget v1, p0, Lln/b;->b:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lln/b;->c:[F

    mul-int/lit8 v2, v0, 0x3

    const/4 v3, 0x0

    aget v3, p1, v3

    aput v3, v1, v2

    mul-int/lit8 v2, v0, 0x3

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget v4, p1, v3

    aput v4, v1, v2

    mul-int/lit8 v2, v0, 0x3

    const/4 v4, 0x2

    add-int/2addr v2, v4

    aget p1, p1, v4

    aput p1, v1, v2

    iget-object p1, p0, Lln/b;->d:[F

    aput p2, p1, v0

    iget-object p1, p0, Lln/b;->e:[F

    aput p3, p1, v0

    iget-object p1, p0, Lln/b;->f:[F

    aput p4, p1, v0

    iget-object p1, p0, Lln/b;->g:[F

    aput p5, p1, v0

    iget-object p1, p0, Lln/b;->h:[F

    aput p6, p1, v0

    iget-object p1, p0, Lln/b;->i:[F

    aput p7, p1, v0

    add-int/2addr v0, v3

    iput v0, p0, Lln/b;->a:I

    return-void
.end method

.method public b(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lln/b;->i:[F

    aget p1, v0, p1

    return p1
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lln/b;->a:I

    return v0
.end method

.method public d(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lln/b;->g:[F

    aget p1, v0, p1

    return p1
.end method

.method public e(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lln/b;->f:[F

    aget p1, v0, p1

    return p1
.end method

.method public f(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lln/b;->e:[F

    aget p1, v0, p1

    return p1
.end method

.method public g(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lln/b;->h:[F

    aget p1, v0, p1

    return p1
.end method

.method public h(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lln/b;->d:[F

    aget p1, v0, p1

    return p1
.end method

.method public i(I)[F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lln/b;->c:[F

    const/4 v1, 0x3

    mul-int/2addr p1, v1

    aget v2, v0, p1

    const/4 v3, 0x1

    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    const/4 v5, 0x2

    add-int/2addr p1, v5

    aget p1, v0, p1

    new-array v0, v1, [F

    const/4 v1, 0x0

    aput v2, v0, v1

    aput v4, v0, v3

    aput p1, v0, v5

    return-object v0
.end method

.method public j([FI)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arr",
            "n"
        }
    .end annotation

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const v1, -0x800001

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_0

    aget v4, p1, v3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aget v4, p1, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sub-float/2addr v1, v0

    const v3, 0x3a83126f    # 0.001f

    cmpl-float v3, v1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_1

    div-float v1, v4, v1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    if-ge v2, p2, :cond_2

    aget v3, p1, v2

    sub-float/2addr v3, v0

    mul-float/2addr v3, v1

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Ljn/g;->a(FFF)F

    move-result v3

    aput v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lln/b;->e:[F

    iget v1, p0, Lln/b;->a:I

    invoke-virtual {p0, v0, v1}, Lln/b;->j([FI)V

    iget-object v0, p0, Lln/b;->f:[F

    iget v1, p0, Lln/b;->a:I

    invoke-virtual {p0, v0, v1}, Lln/b;->j([FI)V

    iget-object v0, p0, Lln/b;->g:[F

    iget v1, p0, Lln/b;->a:I

    invoke-virtual {p0, v0, v1}, Lln/b;->j([FI)V

    iget-object v0, p0, Lln/b;->h:[F

    iget v1, p0, Lln/b;->a:I

    invoke-virtual {p0, v0, v1}, Lln/b;->j([FI)V

    iget-object v0, p0, Lln/b;->i:[F

    iget v1, p0, Lln/b;->a:I

    invoke-virtual {p0, v0, v1}, Lln/b;->j([FI)V

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lln/b;->a:I

    return-void
.end method
