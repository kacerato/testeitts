.class public LKc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-short v0, p0, LKc/a;->a:S

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, LKc/a;->h(F)V

    return-void
.end method

.method public static c(F)S
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    ushr-int/lit8 v0, p0, 0x10

    const v1, 0x8000

    and-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v1, p0

    add-int/lit16 v2, v1, 0x1000

    const/high16 v3, 0x47800000    # 65536.0f

    if-lt v2, v3, :cond_2

    if-lt v1, v3, :cond_1

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v2, v1, :cond_0

    or-int/lit16 p0, v0, 0x7c00

    :goto_0
    int-to-short p0, p0

    return p0

    :cond_0
    or-int/lit16 v0, v0, 0x7c00

    const v1, 0x7fffff

    and-int/2addr p0, v1

    ushr-int/lit8 p0, p0, 0xd

    :goto_1
    or-int/2addr p0, v0

    goto :goto_0

    :cond_1
    or-int/lit16 p0, v0, 0x7bff

    goto :goto_0

    :cond_2
    const/high16 p0, 0x38800000

    if-lt v2, p0, :cond_3

    const p0, -0x37fff000

    add-int/2addr v1, p0

    ushr-int/lit8 p0, v1, 0xd

    goto :goto_1

    :cond_3
    const/high16 p0, 0x33000000

    if-ge v2, p0, :cond_4

    int-to-short p0, v0

    return p0

    :cond_4
    const p0, -0x32fff000

    add-int/2addr v1, p0

    ushr-int/lit8 p0, v1, 0x17

    goto :goto_1
.end method

.method public static f(S)F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "h"
        }
    .end annotation

    shr-int/lit8 v0, p0, 0xf

    and-int/lit8 v0, v0, 0x1

    shr-int/lit8 v1, p0, 0xa

    const/16 v2, 0x1f

    and-int/2addr v1, v2

    and-int/lit16 p0, p0, 0x3ff

    if-nez v1, :cond_2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    move v1, p0

    goto :goto_3

    :cond_0
    :goto_0
    and-int/lit16 v3, p0, 0x400

    if-nez v3, :cond_1

    shl-int/lit8 p0, p0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    and-int/lit16 p0, p0, -0x401

    add-int/lit8 v1, v1, 0x71

    :goto_1
    shl-int/lit8 p0, p0, 0xd

    :goto_2
    move v4, v1

    move v1, p0

    move p0, v4

    goto :goto_3

    :cond_2
    if-ne v1, v2, :cond_3

    shl-int/lit8 p0, p0, 0xd

    const/16 v1, 0xff

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x70

    goto :goto_1

    :goto_3
    shl-int/2addr v0, v2

    shl-int/lit8 p0, p0, 0x17

    or-int/2addr p0, v0

    or-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method


# virtual methods
.method public a(LKc/a;)LKc/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    new-instance v0, LKc/a;

    invoke-virtual {p0}, LKc/a;->d()F

    move-result v1

    invoke-virtual {p1}, LKc/a;->d()F

    move-result p1

    add-float/2addr v1, p1

    invoke-direct {v0, v1}, LKc/a;-><init>(F)V

    return-object v0
.end method

.method public b(LKc/a;)LKc/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    new-instance v0, LKc/a;

    invoke-virtual {p0}, LKc/a;->d()F

    move-result v1

    invoke-virtual {p1}, LKc/a;->d()F

    move-result p1

    div-float/2addr v1, p1

    invoke-direct {v0, v1}, LKc/a;-><init>(F)V

    return-object v0
.end method

.method public d()F
    .locals 1

    iget-short v0, p0, LKc/a;->a:S

    invoke-static {v0}, LKc/a;->f(S)F

    move-result v0

    return v0
.end method

.method public e()S
    .locals 1

    iget-short v0, p0, LKc/a;->a:S

    return v0
.end method

.method public g(LKc/a;)LKc/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    new-instance v0, LKc/a;

    invoke-virtual {p0}, LKc/a;->d()F

    move-result v1

    invoke-virtual {p1}, LKc/a;->d()F

    move-result p1

    mul-float/2addr v1, p1

    invoke-direct {v0, v1}, LKc/a;-><init>(F)V

    return-object v0
.end method

.method public h(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p1}, LKc/a;->c(F)S

    move-result p1

    iput-short p1, p0, LKc/a;->a:S

    return-void
.end method

.method public i(S)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bits"
        }
    .end annotation

    iput-short p1, p0, LKc/a;->a:S

    return-void
.end method

.method public j(LKc/a;)LKc/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    new-instance v0, LKc/a;

    invoke-virtual {p0}, LKc/a;->d()F

    move-result v1

    invoke-virtual {p1}, LKc/a;->d()F

    move-result p1

    sub-float/2addr v1, p1

    invoke-direct {v0, v1}, LKc/a;-><init>(F)V

    return-object v0
.end method
