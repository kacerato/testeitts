.class public Lun/i;
.super Lun/a;
.source "SourceFile"


# instance fields
.field public final d:[F

.field public final e:F


# direct methods
.method public constructor <init>([FFIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "center",
            "radius",
            "area",
            "flagMergeThreshold"
        }
    .end annotation

    invoke-static {p1, p2}, Lun/i;->c([FF)[F

    move-result-object v0

    invoke-direct {p0, p3, p4, v0}, Lun/a;-><init>(IF[F)V

    iput-object p1, p0, Lun/i;->d:[F

    iput p2, p0, Lun/i;->e:F

    return-void
.end method

.method public static c([FF)[F
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "center",
            "radius"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    sub-float v2, v1, p1

    const/4 v3, 0x1

    aget v4, p0, v3

    sub-float v5, v4, p1

    const/4 v6, 0x2

    aget p0, p0, v6

    sub-float v7, p0, p1

    add-float/2addr v1, p1

    add-float/2addr v4, p1

    add-float/2addr p0, p1

    const/4 p1, 0x6

    new-array p1, p1, [F

    aput v2, p1, v0

    aput v5, p1, v3

    aput v7, p1, v6

    const/4 v0, 0x3

    aput v1, p1, v0

    const/4 v0, 0x4

    aput v4, p1, v0

    const/4 v0, 0x5

    aput p0, p1, v0

    return-object p1
.end method


# virtual methods
.method public b(Lwn/h;Lwn/N;)V
    .locals 6
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

    iget-object v1, p0, Lun/i;->d:[F

    iget v2, p0, Lun/i;->e:F

    iget v3, p0, Lun/a;->a:I

    iget v0, p0, Lun/a;->b:F

    iget v4, p1, Lwn/h;->f:F

    div-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lwn/B;->C(Lwn/h;[FFIILwn/N;)V

    return-void
.end method
