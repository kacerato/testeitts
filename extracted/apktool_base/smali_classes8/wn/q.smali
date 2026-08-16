.class public Lwn/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lwn/t;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:[F

.field public final g:[F


# direct methods
.method public constructor <init>(Lwn/t;[F[F)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cfg",
            "bmin",
            "bmax"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lwn/q;-><init>(Lwn/t;[F[FII)V

    return-void
.end method

.method public constructor <init>(Lwn/t;[F[FII)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cfg",
            "bmin",
            "bmax",
            "tileX",
            "tileZ"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 3
    new-array v1, v0, [F

    iput-object v1, p0, Lwn/q;->f:[F

    .line 4
    new-array v0, v0, [F

    iput-object v0, p0, Lwn/q;->g:[F

    .line 5
    iput p4, p0, Lwn/q;->b:I

    .line 6
    iput p5, p0, Lwn/q;->c:I

    .line 7
    iput-object p1, p0, Lwn/q;->a:Lwn/t;

    .line 8
    invoke-static {v1, p2}, Lwn/I;->e([F[F)V

    .line 9
    invoke-static {v0, p3}, Lwn/I;->e([F[F)V

    .line 10
    iget-boolean p2, p1, Lwn/t;->b:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 11
    iget p2, p1, Lwn/t;->c:I

    int-to-float v2, p2

    iget v3, p1, Lwn/t;->e:F

    mul-float/2addr v2, v3

    .line 12
    iget v4, p1, Lwn/t;->d:I

    int-to-float v5, v4

    mul-float/2addr v5, v3

    .line 13
    aget v6, v1, p3

    int-to-float p4, p4

    mul-float/2addr p4, v2

    add-float/2addr v6, p4

    aput v6, v1, p3

    const/4 p4, 0x2

    .line 14
    aget v7, v1, p4

    int-to-float p5, p5

    mul-float/2addr p5, v5

    add-float/2addr v7, p5

    aput v7, v1, p4

    add-float/2addr v6, v2

    .line 15
    aput v6, v0, p3

    add-float/2addr v7, v5

    .line 16
    aput v7, v0, p4

    .line 17
    aget p5, v1, p3

    iget p1, p1, Lwn/t;->w:I

    int-to-float v2, p1

    mul-float/2addr v2, v3

    sub-float/2addr p5, v2

    aput p5, v1, p3

    .line 18
    aget p5, v1, p4

    int-to-float v2, p1

    mul-float/2addr v2, v3

    sub-float/2addr p5, v2

    aput p5, v1, p4

    .line 19
    aget p5, v0, p3

    int-to-float v1, p1

    mul-float/2addr v1, v3

    add-float/2addr p5, v1

    aput p5, v0, p3

    .line 20
    aget p3, v0, p4

    int-to-float p5, p1

    mul-float/2addr p5, v3

    add-float/2addr p3, p5

    aput p3, v0, p4

    mul-int/lit8 p3, p1, 0x2

    add-int/2addr p2, p3

    .line 21
    iput p2, p0, Lwn/q;->d:I

    mul-int/2addr p1, p4

    add-int/2addr v4, p1

    .line 22
    iput v4, p0, Lwn/q;->e:I

    goto :goto_0

    .line 23
    :cond_0
    iget p1, p1, Lwn/t;->e:F

    invoke-static {v1, v0, p1}, Lwn/m;->b([F[FF)[I

    move-result-object p1

    .line 24
    aget p2, p1, p3

    iput p2, p0, Lwn/q;->d:I

    const/4 p2, 0x1

    .line 25
    aget p1, p1, p2

    iput p1, p0, Lwn/q;->e:I

    :goto_0
    return-void
.end method
