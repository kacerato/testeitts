.class public Ljn/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljn/L;


# instance fields
.field public a:I

.field public b:I

.field public final c:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 2
    new-array v1, v0, [F

    iput-object v1, p0, Ljn/d;->c:[F

    const v1, 0xffff

    .line 3
    iput v1, p0, Ljn/d;->b:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Ljn/d;->a:I

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    iget-object v2, p0, Ljn/d;->c:[F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(II[F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "includeFlags",
            "excludeFlags",
            "areaCost"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 7
    new-array v1, v0, [F

    iput-object v1, p0, Ljn/d;->c:[F

    .line 8
    iput p1, p0, Ljn/d;->b:I

    .line 9
    iput p2, p0, Ljn/d;->a:I

    const/4 p1, 0x0

    .line 10
    :goto_0
    array-length p2, p3

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 11
    iget-object p2, p0, Ljn/d;->c:[F

    aget v1, p3, p1

    aput v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 12
    :cond_0
    array-length p1, p3

    :goto_1
    if-ge p1, v0, :cond_1

    .line 13
    iget-object p2, p0, Ljn/d;->c:[F

    const/high16 p3, 0x3f800000    # 1.0f

    aput p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public a([F[FJLjn/s;Ljn/G;JLjn/s;Ljn/G;JLjn/s;Ljn/G;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pa",
            "pb",
            "prevRef",
            "prevTile",
            "prevPoly",
            "curRef",
            "curTile",
            "curPoly",
            "nextRef",
            "nextTile",
            "nextPoly"
        }
    .end annotation

    invoke-static {p1, p2}, Ljn/g;->z([F[F)F

    move-result p1

    iget-object p2, p0, Ljn/d;->c:[F

    invoke-virtual {p10}, Ljn/G;->a()I

    move-result p3

    aget p2, p2, p3

    mul-float/2addr p1, p2

    return p1
.end method

.method public b(JLjn/s;Ljn/G;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ref",
            "tile",
            "poly"
        }
    .end annotation

    iget p1, p4, Ljn/G;->d:I

    iget p2, p0, Ljn/d;->b:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_0

    iget p2, p0, Ljn/d;->a:I

    and-int/2addr p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()I
    .locals 1

    iget v0, p0, Ljn/d;->a:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Ljn/d;->b:I

    return v0
.end method

.method public e(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    iput p1, p0, Ljn/d;->a:I

    return-void
.end method

.method public f(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    iput p1, p0, Ljn/d;->b:I

    return-void
.end method
