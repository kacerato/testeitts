.class public Ljn/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljn/g$a;
    }
.end annotation


# static fields
.field public static a:F = 1.0E-4f

.field public static final b:F

.field public static c:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x38800000

    invoke-static {v0}, Ljn/g;->s(F)F

    move-result v0

    sput v0, Ljn/g;->b:F

    const v0, 0x38d1b717    # 1.0E-4f

    sput v0, Ljn/g;->c:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A([F[FI)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v1",
            "verts",
            "i"
        }
    .end annotation

    aget v0, p1, p2

    const/4 v1, 0x0

    aget v1, p0, v1

    sub-float/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p0, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x2

    add-int/2addr p2, v2

    aget p1, p1, p2

    aget p0, p0, v2

    sub-float/2addr p1, p0

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    float-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static B([F[F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v1",
            "v2"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v0, p0, v0

    sub-float/2addr v1, v0

    const/4 v0, 0x2

    aget p1, p1, v0

    aget p0, p0, v0

    sub-float/2addr p1, p0

    mul-float/2addr v1, v1

    mul-float/2addr p1, p1

    add-float/2addr v1, p1

    float-to-double p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static C([F[F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v1",
            "v2"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v0, p0, v0

    sub-float/2addr v1, v0

    const/4 v0, 0x2

    aget p1, p1, v0

    aget p0, p0, v0

    sub-float/2addr p1, p0

    mul-float/2addr v1, v1

    mul-float/2addr p1, p1

    add-float/2addr v1, p1

    return v1
.end method

.method public static D([F[FI)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "verts",
            "i"
        }
    .end annotation

    aget v0, p1, p2

    const/4 v1, 0x0

    aget v1, p0, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x2

    add-int/2addr p2, v1

    aget p1, p1, p2

    aget p0, p0, v1

    sub-float/2addr p1, p0

    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    return v0
.end method

.method public static E([F[F)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v1",
            "v2"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v0, p0, v0

    sub-float/2addr v1, v0

    const/4 v0, 0x1

    aget v2, p1, v0

    aget v0, p0, v0

    sub-float/2addr v2, v0

    const/4 v0, 0x2

    aget p1, p1, v0

    aget p0, p0, v0

    sub-float/2addr p1, p0

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    mul-float/2addr p1, p1

    add-float/2addr v1, p1

    return v1
.end method

.method public static F([F[F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "u",
            "v"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v0, p1, v0

    mul-float/2addr v1, v0

    const/4 v0, 0x2

    aget p0, p0, v0

    aget p1, p1, v0

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    return v1
.end method

.method public static G([F[FI)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "u",
            "v",
            "vi"
        }
    .end annotation

    const/4 v0, 0x0

    aget v0, p0, v0

    aget v1, p1, p2

    mul-float/2addr v0, v1

    const/4 v1, 0x2

    aget p0, p0, v1

    add-int/2addr p2, v1

    aget p1, p1, p2

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static H([F[F)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p0",
            "p1"
        }
    .end annotation

    invoke-static {p0, p1}, Ljn/g;->E([F[F)F

    move-result p0

    sget p1, Ljn/g;->b:F

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static I([F)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isFinite(F)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    aget p0, p0, v2

    invoke-static {p0}, Ljava/lang/Float;->isFinite(F)Z

    move-result p0

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static J([F)Z
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

    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    aget p0, p0, v1

    invoke-static {p0}, Ljava/lang/Float;->isFinite(F)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static K([F)F
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

    aget v0, p0, v0

    mul-float/2addr v0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x2

    aget p0, p0, v1

    mul-float/2addr p0, p0

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static L([F)F
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

    aget v0, p0, v0

    mul-float/2addr v0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x2

    aget p0, p0, v1

    mul-float/2addr p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method public static M([FIIF)[F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "v1",
            "v2",
            "t"
        }
    .end annotation

    aget v0, p0, p1

    aget v1, p0, p2

    sub-float/2addr v1, v0

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    const/4 v1, 0x1

    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    add-int/lit8 v3, p2, 0x1

    aget v3, p0, v3

    sub-float/2addr v3, v2

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    const/4 v3, 0x2

    add-int/2addr p1, v3

    aget p1, p0, p1

    add-int/2addr p2, v3

    aget p0, p0, p2

    sub-float/2addr p0, p1

    mul-float/2addr p0, p3

    add-float/2addr p1, p0

    const/4 p0, 0x3

    new-array p0, p0, [F

    const/4 p2, 0x0

    aput v0, p0, p2

    aput v2, p0, v1

    aput p1, p0, v3

    return-object p0
.end method

.method public static N([F[FF)[F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v1",
            "v2",
            "t"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    sub-float/2addr v2, v1

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    const/4 v2, 0x1

    aget v3, p0, v2

    aget v4, p1, v2

    sub-float/2addr v4, v3

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    const/4 v4, 0x2

    aget p0, p0, v4

    aget p1, p1, v4

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    const/4 p1, 0x3

    new-array p1, p1, [F

    aput v1, p1, v0

    aput v3, p1, v2

    aput p0, p1, v4

    return-object p1
.end method

.method public static O([F[FF)[F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v1",
            "v2",
            "s"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    const/4 v2, 0x1

    aget v3, p0, v2

    aget v4, p1, v2

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    const/4 v4, 0x2

    aget p0, p0, v4

    aget p1, p1, v4

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    const/4 p1, 0x3

    new-array p1, p1, [F

    aput v1, p1, v0

    aput v3, p1, v2

    aput p0, p1, v4

    return-object p1
.end method

.method public static P([F[FI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "in",
            "i"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p0, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p0, v0

    const/4 v0, 0x2

    aget v1, p0, v0

    add-int/2addr p2, v0

    aget p1, p1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    aput p1, p0, v0

    return-void
.end method

.method public static Q([F[FI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "in",
            "i"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, p0, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, p0, v0

    const/4 v0, 0x2

    aget v1, p0, v0

    add-int/2addr p2, v0

    aget p1, p1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    aput p1, p0, v0

    return-void
.end method

.method public static R([F)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    invoke-static {v1}, Ljn/g;->s(F)F

    move-result v1

    const/4 v2, 0x1

    aget v3, p0, v2

    invoke-static {v3}, Ljn/g;->s(F)F

    move-result v3

    add-float/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p0, v3

    invoke-static {v4}, Ljn/g;->s(F)F

    move-result v4

    add-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double/2addr v6, v4

    double-to-float v1, v6

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    aget v4, p0, v0

    mul-float/2addr v4, v1

    aput v4, p0, v0

    aget v0, p0, v2

    mul-float/2addr v0, v1

    aput v0, p0, v2

    aget v0, p0, v3

    mul-float/2addr v0, v1

    aput v0, p0, v3

    :cond_0
    return-void
.end method

.method public static S([F[F)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "u",
            "v"
        }
    .end annotation

    const/4 v0, 0x2

    aget v1, p0, v0

    const/4 v2, 0x0

    aget v3, p1, v2

    mul-float/2addr v1, v3

    aget p0, p0, v2

    aget p1, p1, v0

    mul-float/2addr p0, p1

    sub-float/2addr v1, p0

    return v1
.end method

.method public static T([FF)[F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "scale"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    mul-float/2addr v1, p1

    const/4 v2, 0x1

    aget v3, p0, v2

    mul-float/2addr v3, p1

    const/4 v4, 0x2

    aget p0, p0, v4

    mul-float/2addr p0, p1

    const/4 p1, 0x3

    new-array p1, p1, [F

    aput v1, p1, v0

    aput v3, p1, v2

    aput p0, p1, v4

    return-object p1
.end method

.method public static U([FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "a",
            "b",
            "c"
        }
    .end annotation

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    const/4 p1, 0x2

    aput p3, p0, p1

    return-void
.end method

.method public static V(Ljn/W;Ljn/W;)[F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v1",
            "v2"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljn/W;->a(I)F

    move-result v1

    invoke-virtual {p1, v0}, Ljn/W;->a(I)F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljn/W;->a(I)F

    move-result v3

    invoke-virtual {p1, v2}, Ljn/W;->a(I)F

    move-result v4

    sub-float/2addr v3, v4

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ljn/W;->a(I)F

    move-result p0

    invoke-virtual {p1, v4}, Ljn/W;->a(I)F

    move-result p1

    sub-float/2addr p0, p1

    const/4 p1, 0x3

    new-array p1, p1, [F

    aput v1, p1, v0

    aput v3, p1, v2

    aput p0, p1, v4

    return-object p1
.end method

.method public static W([F[F)[F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v1",
            "v2"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    sub-float/2addr v1, v2

    const/4 v2, 0x1

    aget v3, p0, v2

    aget v4, p1, v2

    sub-float/2addr v3, v4

    const/4 v4, 0x2

    aget p0, p0, v4

    aget p1, p1, v4

    sub-float/2addr p0, p1

    const/4 p1, 0x3

    new-array p1, p1, [F

    aput v1, p1, v0

    aput v3, p1, v2

    aput p0, p1, v4

    return-object p1
.end method

.method public static X([F[F)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x2

    aget v3, p1, v2

    mul-float/2addr v1, v3

    aget p0, p0, v2

    aget p1, p1, v0

    mul-float/2addr p0, p1

    sub-float/2addr v1, p0

    return v1
.end method

.method public static final a(FFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "min",
            "max"
        }
    .end annotation

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static final b(III)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "min",
            "max"
        }
    .end annotation

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static c([F[F[F[F)Ljava/util/Optional;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "a",
            "b",
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F[F[F)",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-static {p3, p1}, Ljn/g;->W([F[F)[F

    move-result-object p3

    invoke-static {p2, p1}, Ljn/g;->W([F[F)[F

    move-result-object p2

    invoke-static {p0, p1}, Ljn/g;->W([F[F)[F

    move-result-object p0

    const/4 v0, 0x0

    aget v1, p3, v0

    const/4 v2, 0x2

    aget v3, p2, v2

    mul-float/2addr v1, v3

    aget v3, p3, v2

    aget v4, p2, v0

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Ljn/g;->a:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    aget v3, p2, v2

    aget v4, p0, v0

    mul-float/2addr v3, v4

    aget v5, p2, v0

    aget p0, p0, v2

    mul-float/2addr v5, p0

    sub-float/2addr v3, v5

    aget v0, p3, v0

    mul-float/2addr v0, p0

    aget p0, p3, v2

    mul-float/2addr p0, v4

    sub-float/2addr v0, p0

    const/4 p0, 0x0

    cmpg-float v2, v1, p0

    if-gez v2, :cond_1

    neg-float v1, v1

    neg-float v3, v3

    neg-float v0, v0

    :cond_1
    cmpl-float v2, v3, p0

    if-ltz v2, :cond_2

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_2

    add-float p0, v3, v0

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_2

    const/4 p0, 0x1

    aget p1, p1, p0

    aget p3, p3, p0

    mul-float/2addr p3, v3

    aget p0, p2, p0

    mul-float/2addr p0, v0

    add-float/2addr p3, p0

    div-float/2addr p3, v1

    add-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static d([F[FI[F[F)Z
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pt",
            "verts",
            "nverts",
            "ed",
            "et"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    move v6, v3

    :goto_0
    if-ge v3, v2, :cond_3

    mul-int/lit8 v7, v3, 0x3

    mul-int/lit8 v8, v5, 0x3

    add-int/lit8 v9, v7, 0x2

    aget v9, v1, v9

    const/4 v10, 0x2

    aget v10, v0, v10

    cmpl-float v11, v9, v10

    const/4 v12, 0x1

    if-lez v11, :cond_0

    move v11, v12

    goto :goto_1

    :cond_0
    move v11, v4

    :goto_1
    add-int/lit8 v13, v8, 0x2

    aget v13, v1, v13

    cmpl-float v14, v13, v10

    if-lez v14, :cond_1

    goto :goto_2

    :cond_1
    move v12, v4

    :goto_2
    if-eq v11, v12, :cond_2

    aget v11, v0, v4

    aget v12, v1, v8

    aget v14, v1, v7

    sub-float/2addr v12, v14

    sub-float/2addr v10, v9

    mul-float/2addr v12, v10

    sub-float/2addr v13, v9

    div-float/2addr v12, v13

    add-float/2addr v12, v14

    cmpg-float v9, v11, v12

    if-gez v9, :cond_2

    xor-int/lit8 v6, v6, 0x1

    :cond_2
    invoke-static {v0, v1, v8, v7}, Ljn/g;->e([F[FII)Ljn/U;

    move-result-object v7

    iget-object v8, v7, Ljn/U;->a:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, p3, v5

    iget-object v7, v7, Ljn/U;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, p4, v5

    add-int/lit8 v5, v3, 0x1

    move v15, v5

    move v5, v3

    move v3, v15

    goto :goto_0

    :cond_3
    return v6
.end method

.method public static e([F[FII)Ljn/U;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pt",
            "verts",
            "p",
            "q"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FII)",
            "Ljn/U<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    aget v0, p1, p3

    aget v1, p1, p2

    sub-float/2addr v0, v1

    const/4 v2, 0x2

    add-int/2addr p3, v2

    aget p3, p1, p3

    add-int/2addr p2, v2

    aget p1, p1, p2

    sub-float/2addr p3, p1

    const/4 p2, 0x0

    aget p2, p0, p2

    sub-float v3, p2, v1

    aget p0, p0, v2

    sub-float v2, p0, p1

    mul-float v4, v0, v0

    mul-float v5, p3, p3

    add-float/2addr v4, v5

    mul-float/2addr v3, v0

    mul-float/2addr v2, p3

    add-float/2addr v3, v2

    const/4 v2, 0x0

    cmpl-float v5, v4, v2

    if-lez v5, :cond_0

    div-float/2addr v3, v4

    :cond_0
    cmpg-float v4, v3, v2

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v2

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    sub-float/2addr v1, p2

    mul-float/2addr p3, v2

    add-float/2addr p1, p3

    sub-float/2addr p1, p0

    new-instance p0, Ljn/U;

    mul-float/2addr v1, v1

    mul-float/2addr p1, p1

    add-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljn/U;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static f([F[F[F)Ljn/U;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pt",
            "p",
            "q"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F[F)",
            "Ljn/U<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p2, v0

    aget v2, p1, v0

    sub-float/2addr v1, v2

    const/4 v3, 0x2

    aget p2, p2, v3

    aget p1, p1, v3

    sub-float/2addr p2, p1

    aget v0, p0, v0

    sub-float v4, v0, v2

    aget p0, p0, v3

    sub-float v3, p0, p1

    mul-float v5, v1, v1

    mul-float v6, p2, p2

    add-float/2addr v5, v6

    mul-float/2addr v4, v1

    mul-float/2addr v3, p2

    add-float/2addr v4, v3

    const/4 v3, 0x0

    cmpl-float v6, v5, v3

    if-lez v6, :cond_0

    div-float/2addr v4, v5

    :cond_0
    cmpg-float v5, v4, v3

    if-gez v5, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v3

    if-lez v5, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    sub-float/2addr v2, v0

    mul-float/2addr p2, v3

    add-float/2addr p1, p2

    sub-float/2addr p1, p0

    new-instance p0, Ljn/U;

    mul-float/2addr v2, v2

    mul-float/2addr p1, p1

    add-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljn/U;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static g(I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const v0, 0xffff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p0, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    shl-int/lit8 v0, v0, 0x4

    shr-int/2addr p0, v0

    const/16 v3, 0xff

    if-le p0, v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/4 v4, 0x3

    shl-int/2addr v3, v4

    shr-int/2addr p0, v3

    or-int/2addr v0, v3

    const/16 v3, 0xf

    if-le p0, v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    shl-int/lit8 v3, v3, 0x2

    shr-int/2addr p0, v3

    or-int/2addr v0, v3

    if-le p0, v4, :cond_3

    move v1, v2

    :cond_3
    shl-int/2addr v1, v2

    shr-int/2addr p0, v1

    or-int/2addr v0, v1

    shr-int/2addr p0, v2

    or-int/2addr p0, v0

    return p0
.end method

.method public static h([F[F[F[F)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ap",
            "aq",
            "bp",
            "bq"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F[F[F)",
            "Ljava/util/Optional<",
            "Ljn/U<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    invoke-static {p1, p0}, Ljn/g;->W([F[F)[F

    move-result-object p1

    invoke-static {p3, p2}, Ljn/g;->W([F[F)[F

    move-result-object p3

    invoke-static {p0, p2}, Ljn/g;->W([F[F)[F

    move-result-object p0

    invoke-static {p1, p3}, Ljn/g;->X([F[F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x358637bd    # 1.0E-6f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p3, p0}, Ljn/g;->X([F[F)F

    move-result p3

    div-float/2addr p3, p2

    invoke-static {p1, p0}, Ljn/g;->X([F[F)F

    move-result p0

    div-float/2addr p0, p2

    new-instance p1, Ljn/U;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Ljn/U;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static i([F[F[FI)Ljn/g$a;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p0",
            "p1",
            "verts",
            "nverts"
        }
    .end annotation

    new-instance v0, Ljn/g$a;

    invoke-direct {v0}, Ljn/g$a;-><init>()V

    invoke-static {p1, p0}, Ljn/g;->W([F[F)[F

    move-result-object p1

    new-instance v1, Ljn/W;

    invoke-direct {v1, p0}, Ljn/W;-><init>([F)V

    add-int/lit8 p0, p3, -0x1

    const/4 v2, 0x0

    :goto_0
    move v7, v2

    move v2, p0

    move p0, v7

    if-ge p0, p3, :cond_3

    new-instance v3, Ljn/W;

    mul-int/lit8 v4, v2, 0x3

    invoke-direct {v3, p2, v4}, Ljn/W;-><init>([FI)V

    new-instance v4, Ljn/W;

    mul-int/lit8 v5, p0, 0x3

    invoke-direct {v4, p2, v5}, Ljn/W;-><init>([FI)V

    invoke-static {v4, v3}, Ljn/g;->V(Ljn/W;Ljn/W;)[F

    move-result-object v4

    invoke-static {v1, v3}, Ljn/g;->V(Ljn/W;Ljn/W;)[F

    move-result-object v3

    invoke-static {v4, v3}, Ljn/g;->S([F[F)F

    move-result v3

    invoke-static {p1, v4}, Ljn/g;->S([F[F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x322bcc77    # 1.0E-8f

    cmpg-float v5, v5, v6

    const/4 v6, 0x0

    if-gez v5, :cond_0

    cmpg-float v2, v3, v6

    if-gez v2, :cond_2

    return-object v0

    :cond_0
    div-float/2addr v3, v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_1

    iget v4, v0, Ljn/g$a;->b:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    iput v3, v0, Ljn/g$a;->b:F

    iput v2, v0, Ljn/g$a;->d:I

    iget v2, v0, Ljn/g$a;->c:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_2

    return-object v0

    :cond_1
    iget v4, v0, Ljn/g$a;->c:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    iput v3, v0, Ljn/g$a;->c:F

    iput v2, v0, Ljn/g$a;->e:I

    iget v2, v0, Ljn/g$a;->b:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v2, p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    iput-boolean p0, v0, Ljn/g$a;->a:Z

    return-object v0
.end method

.method public static j(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static k(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "side"
        }
    .end annotation

    add-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static l([F[F[F[F)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "amin",
            "amax",
            "bmin",
            "bmax"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p3, v0

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    if-gtz v1, :cond_1

    aget v1, p1, v0

    aget v3, p2, v0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    aget v3, p0, v2

    aget v4, p3, v2

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_2

    aget v3, p1, v2

    aget v2, p2, v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    const/4 v2, 0x2

    aget p0, p0, v2

    aget p3, p3, v2

    cmpl-float p0, p0, p3

    if-gtz p0, :cond_5

    aget p0, p1, v2

    aget p1, p2, v2

    cmpg-float p0, p0, p1

    if-gez p0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :cond_5
    :goto_2
    return v0
.end method

.method public static m([FI[FI)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "polya",
            "npolya",
            "polyb",
            "npolyb"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    :goto_0
    const/4 v6, 0x0

    if-ge v3, p1, :cond_1

    mul-int/2addr v5, v0

    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v8, v7, 0x2

    aget v8, p0, v8

    add-int/lit8 v9, v5, 0x2

    aget v9, p0, v9

    sub-float/2addr v8, v9

    aget v7, p0, v7

    aget v5, p0, v5

    sub-float/2addr v7, v5

    neg-float v5, v7

    new-array v7, v0, [F

    aput v8, v7, v4

    aput v6, v7, v2

    aput v5, v7, v1

    invoke-static {v7, p0, p1}, Ljn/g;->q([F[FI)[F

    move-result-object v5

    invoke-static {v7, p2, p3}, Ljn/g;->q([F[FI)[F

    move-result-object v6

    aget v7, v5, v4

    aget v5, v5, v2

    aget v8, v6, v4

    aget v6, v6, v2

    sget v9, Ljn/g;->c:F

    invoke-static {v7, v5, v8, v6, v9}, Ljn/g;->o(FFFFF)Z

    move-result v5

    if-nez v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v5, v3, 0x1

    move v11, v5

    move v5, v3

    move v3, v11

    goto :goto_0

    :cond_1
    add-int/lit8 v3, p3, -0x1

    move v5, v3

    move v3, v4

    :goto_1
    if-ge v3, p3, :cond_3

    mul-int/2addr v5, v0

    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v8, v7, 0x2

    aget v8, p2, v8

    add-int/lit8 v9, v5, 0x2

    aget v9, p2, v9

    sub-float/2addr v8, v9

    aget v7, p2, v7

    aget v5, p2, v5

    sub-float/2addr v7, v5

    neg-float v5, v7

    new-array v7, v0, [F

    aput v8, v7, v4

    aput v6, v7, v2

    aput v5, v7, v1

    invoke-static {v7, p0, p1}, Ljn/g;->q([F[FI)[F

    move-result-object v5

    invoke-static {v7, p2, p3}, Ljn/g;->q([F[FI)[F

    move-result-object v7

    aget v8, v5, v4

    aget v5, v5, v2

    aget v9, v7, v4

    aget v7, v7, v2

    sget v10, Ljn/g;->c:F

    invoke-static {v8, v5, v9, v7, v10}, Ljn/g;->o(FFFFF)Z

    move-result v5

    if-nez v5, :cond_2

    return v4

    :cond_2
    add-int/lit8 v5, v3, 0x1

    move v11, v5

    move v5, v3

    move v3, v11

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static n([I[I[I[I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "amin",
            "amax",
            "bmin",
            "bmax"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p3, v0

    const/4 v3, 0x1

    if-gt v1, v2, :cond_1

    aget v1, p1, v0

    aget v2, p2, v0

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    aget v2, p0, v3

    aget v4, p3, v3

    if-gt v2, v4, :cond_2

    aget v2, p1, v3

    aget v3, p2, v3

    if-ge v2, v3, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    const/4 v2, 0x2

    aget p0, p0, v2

    aget p3, p3, v2

    if-gt p0, p3, :cond_5

    aget p0, p1, v2

    aget p1, p2, v2

    if-ge p0, p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :cond_5
    :goto_2
    return v0
.end method

.method public static o(FFFFF)Z
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
            "amin",
            "amax",
            "bmin",
            "bmax",
            "eps"
        }
    .end annotation

    add-float/2addr p0, p4

    cmpl-float p0, p0, p3

    if-gtz p0, :cond_1

    sub-float/2addr p1, p4

    cmpg-float p0, p1, p2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static p([F[FI)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pt",
            "verts",
            "nverts"
        }
    .end annotation

    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    move v3, v0

    :goto_0
    if-ge v0, p2, :cond_3

    mul-int/lit8 v4, v0, 0x3

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v5, v4, 0x2

    aget v5, p1, v5

    const/4 v6, 0x2

    aget v6, p0, v6

    cmpl-float v7, v5, v6

    const/4 v8, 0x1

    if-lez v7, :cond_0

    move v7, v8

    goto :goto_1

    :cond_0
    move v7, v1

    :goto_1
    add-int/lit8 v9, v2, 0x2

    aget v9, p1, v9

    cmpl-float v10, v9, v6

    if-lez v10, :cond_1

    goto :goto_2

    :cond_1
    move v8, v1

    :goto_2
    if-eq v7, v8, :cond_2

    aget v7, p0, v1

    aget v2, p1, v2

    aget v4, p1, v4

    sub-float/2addr v2, v4

    sub-float/2addr v6, v5

    mul-float/2addr v2, v6

    sub-float/2addr v9, v5

    div-float/2addr v2, v9

    add-float/2addr v2, v4

    cmpg-float v2, v7, v2

    if-gez v2, :cond_2

    xor-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v0, 0x1

    move v11, v2

    move v2, v0

    move v0, v11

    goto :goto_0

    :cond_3
    return v3
.end method

.method public static q([F[FI)[F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "axis",
            "poly",
            "npoly"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljn/g;->G([F[FI)F

    move-result v1

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    :goto_0
    if-ge v4, p2, :cond_0

    mul-int/lit8 v5, v4, 0x3

    invoke-static {p0, p1, v5}, Ljn/g;->G([F[FI)F

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-int/2addr v4, v2

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    new-array p0, p0, [F

    aput v1, p0, v0

    aput v3, p0, v2

    return-object p0
.end method

.method public static r([FI[FFF)[F
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pts",
            "npts",
            "areas",
            "s",
            "t"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    move v6, v3

    move v5, v4

    :goto_0
    if-ge v5, p1, :cond_0

    add-int/lit8 v7, v5, -0x1

    mul-int/2addr v7, v1

    mul-int/lit8 v8, v5, 0x3

    invoke-static {p0, v0, v7, v8}, Ljn/g;->t([FIII)F

    move-result v7

    aput v7, p2, v5

    const v8, 0x3a83126f    # 0.001f

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-float/2addr v6, v7

    add-int/2addr v5, v2

    goto :goto_0

    :cond_0
    mul-float/2addr p3, v6

    add-int/lit8 v5, p1, -0x1

    move v6, v4

    :goto_1
    const/high16 v7, 0x3f800000    # 1.0f

    if-ge v6, p1, :cond_2

    aget v8, p2, v6

    cmpl-float v9, p3, v3

    if-ltz v9, :cond_1

    add-float v9, v3, v8

    cmpg-float v9, p3, v9

    if-gez v9, :cond_1

    sub-float/2addr p3, v3

    div-float/2addr p3, v8

    move v5, v6

    goto :goto_2

    :cond_1
    add-float/2addr v3, v8

    add-int/2addr v6, v2

    goto :goto_1

    :cond_2
    move p3, v7

    :goto_2
    float-to-double p1, p4

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    sub-float p2, v7, p1

    sub-float/2addr v7, p3

    mul-float/2addr v7, p1

    mul-float/2addr p3, p1

    add-int/lit8 p1, v5, -0x1

    mul-int/2addr p1, v1

    mul-int/2addr v5, v1

    aget p4, p0, v0

    mul-float/2addr p4, p2

    aget v3, p0, p1

    mul-float/2addr v3, v7

    add-float/2addr p4, v3

    aget v3, p0, v5

    mul-float/2addr v3, p3

    add-float/2addr p4, v3

    aget v3, p0, v2

    mul-float/2addr v3, p2

    add-int/lit8 v6, p1, 0x1

    aget v6, p0, v6

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    add-int/lit8 v6, v5, 0x1

    aget v6, p0, v6

    mul-float/2addr v6, p3

    add-float/2addr v3, v6

    aget v6, p0, v4

    mul-float/2addr p2, v6

    add-int/2addr p1, v4

    aget p1, p0, p1

    mul-float/2addr v7, p1

    add-float/2addr p2, v7

    add-int/2addr v5, v4

    aget p0, p0, v5

    mul-float/2addr p3, p0

    add-float/2addr p2, p3

    new-array p0, v1, [F

    aput p4, p0, v0

    aput v3, p0, v2

    aput p2, p0, v4

    return-object p0
.end method

.method public static s(F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    mul-float/2addr p0, p0

    return p0
.end method

.method public static t([FIII)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "a",
            "b",
            "c"
        }
    .end annotation

    aget v0, p0, p2

    aget v1, p0, p1

    sub-float/2addr v0, v1

    add-int/lit8 p2, p2, 0x2

    aget p2, p0, p2

    add-int/lit8 p1, p1, 0x2

    aget p1, p0, p1

    sub-float/2addr p2, p1

    aget v2, p0, p3

    sub-float/2addr v2, v1

    add-int/lit8 p3, p3, 0x2

    aget p0, p0, p3

    sub-float/2addr p0, p1

    mul-float/2addr v2, p2

    mul-float/2addr v0, p0

    sub-float/2addr v2, v0

    return v2
.end method

.method public static u([F[F[F)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "c"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p0, v0

    sub-float/2addr v1, v2

    const/4 v3, 0x2

    aget p1, p1, v3

    aget p0, p0, v3

    sub-float/2addr p1, p0

    aget v0, p2, v0

    sub-float/2addr v0, v2

    aget p2, p2, v3

    sub-float/2addr p2, p0

    mul-float/2addr v0, p1

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method public static v([F[F)[F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v1",
            "v2"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    add-float/2addr v1, v2

    const/4 v2, 0x1

    aget v3, p0, v2

    aget v4, p1, v2

    add-float/2addr v3, v4

    const/4 v4, 0x2

    aget p0, p0, v4

    aget p1, p1, v4

    add-float/2addr p0, p1

    const/4 p1, 0x3

    new-array p1, p1, [F

    aput v1, p1, v0

    aput v3, p1, v2

    aput p0, p1, v4

    return-object p1
.end method

.method public static w([F[F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p1, v0

    aput v1, p0, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    aput v1, p0, v0

    const/4 v0, 0x2

    aget p1, p1, v0

    aput p1, p0, v0

    return-void
.end method

.method public static x([F[FI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "in",
            "i"
        }
    .end annotation

    aget v0, p1, p2

    const/4 v1, 0x0

    aput v0, p0, v1

    add-int/lit8 v0, p2, 0x1

    aget v0, p1, v0

    const/4 v1, 0x1

    aput v0, p0, v1

    const/4 v0, 0x2

    add-int/2addr p2, v0

    aget p1, p1, p2

    aput p1, p0, v0

    return-void
.end method

.method public static y([F)[F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget p0, p0, v4

    const/4 v5, 0x3

    new-array v5, v5, [F

    aput v1, v5, v0

    aput v3, v5, v2

    aput p0, v5, v4

    return-object v5
.end method

.method public static z([F[F)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v1",
            "v2"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v0, p0, v0

    sub-float/2addr v1, v0

    const/4 v0, 0x1

    aget v2, p1, v0

    aget v0, p0, v0

    sub-float/2addr v2, v0

    const/4 v0, 0x2

    aget p1, p1, v0

    aget p0, p0, v0

    sub-float/2addr p1, p0

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    mul-float/2addr p1, p1

    add-float/2addr v1, p1

    float-to-double p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method
