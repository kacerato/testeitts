.class public Lwn/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lwn/d;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "dir"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x6

    iget p0, p0, Lwn/d;->c:I

    shr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x3f

    return p0
.end method

.method public static b(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    filled-new-array {v2, v0, v1, v0}, [I

    move-result-object v0

    and-int/lit8 p0, p0, 0x3

    aget p0, v0, p0

    return p0
.end method

.method public static c(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    filled-new-array {v2, v0, v2, v1}, [I

    move-result-object v0

    and-int/lit8 p0, p0, 0x3

    aget p0, v0, p0

    return p0
.end method

.method public static d(Lwn/d;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "dir",
            "i"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x6

    iget v0, p0, Lwn/d;->c:I

    const/16 v1, 0x3f

    shl-int v2, v1, p1

    not-int v2, v2

    and-int/2addr v0, v2

    and-int/2addr p2, v1

    shl-int p1, p2, p1

    or-int/2addr p1, v0

    iput p1, p0, Lwn/d;->c:I

    return-void
.end method

.method public static e(III)I
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

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static f(II)I
    .locals 5
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

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    add-int/2addr p1, v4

    shl-int/2addr p1, v4

    add-int/2addr p1, p0

    aget p0, v0, p1

    return p0
.end method
