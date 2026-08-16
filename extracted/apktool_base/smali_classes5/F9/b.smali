.class public LF9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LF9/c;

.field public static b:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LF9/b$a;

    invoke-direct {v0}, LF9/b$a;-><init>()V

    sput-object v0, LF9/b;->a:LF9/c;

    const/high16 v0, 0x42480000    # 50.0f

    sput v0, LF9/b;->b:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IIII)I
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
            "z",
            "height"
        }
    .end annotation

    if-le p1, p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p3, p3, -0x3

    if-ge p1, p3, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static b(II)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    int-to-float p0, p0

    sget v0, LF9/b;->b:F

    div-float/2addr p0, v0

    float-to-double v1, p0

    int-to-float p0, p1

    div-float/2addr p0, v0

    float-to-double p0, p0

    invoke-static {v1, v2, p0, p1}, LRc/a;->e(DD)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    const/high16 p1, 0x41700000    # 15.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    add-int/lit8 p0, p0, 0x1e

    return p0
.end method
