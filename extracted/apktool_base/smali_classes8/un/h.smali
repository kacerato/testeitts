.class public Lun/h;
.super Lun/a;
.source "SourceFile"


# instance fields
.field public final d:[F

.field public final e:[F

.field public final f:F


# direct methods
.method public constructor <init>([F[FFIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "end",
            "radius",
            "area",
            "flagMergeThreshold"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lun/h;->c([F[FF)[F

    move-result-object v0

    invoke-direct {p0, p4, p5, v0}, Lun/a;-><init>(IF[F)V

    iput-object p1, p0, Lun/h;->d:[F

    iput-object p2, p0, Lun/h;->e:[F

    iput p3, p0, Lun/h;->f:F

    return-void
.end method

.method private static c([F[FF)[F
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "end",
            "radius"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float/2addr v1, p2

    const/4 v2, 0x1

    aget v3, p0, v2

    aget v4, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v3, p2

    const/4 v4, 0x2

    aget v5, p0, v4

    aget v6, p1, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float/2addr v5, p2

    aget v6, p0, v0

    aget v7, p1, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v6, p2

    aget v7, p0, v2

    aget v8, p1, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-float/2addr v7, p2

    aget p0, p0, v4

    aget p1, p1, v4

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    add-float/2addr p0, p2

    const/4 p1, 0x6

    new-array p1, p1, [F

    aput v1, p1, v0

    aput v3, p1, v2

    aput v5, p1, v4

    const/4 p2, 0x3

    aput v6, p1, p2

    const/4 p2, 0x4

    aput v7, p1, p2

    const/4 p2, 0x5

    aput p0, p1, p2

    return-object p1
.end method


# virtual methods
.method public b(Lwn/h;Lwn/N;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hf",
            "telemetry"
        }
    .end annotation

    iget-object v1, p0, Lun/h;->d:[F

    iget-object v2, p0, Lun/h;->e:[F

    iget v3, p0, Lun/h;->f:F

    iget v4, p0, Lun/a;->a:I

    iget v0, p0, Lun/a;->b:F

    iget v5, p1, Lwn/h;->f:F

    div-float/2addr v0, v5

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    move-object v0, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lwn/B;->B(Lwn/h;[F[FFIILwn/N;)V

    return-void
.end method
