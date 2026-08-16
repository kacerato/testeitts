.class public LK8/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:J = 0x0L

.field public static b:F = 0.0f

.field public static c:F = 0.0f

.field public static d:F = 0.0f

.field public static e:F = 0.0f

.field public static final f:I = 0xa

.field public static final g:[F

.field public static final h:[F

.field public static i:Z

.field public static j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, LK8/d;->a:J

    const/4 v0, 0x0

    sput v0, LK8/d;->b:F

    sput v0, LK8/d;->c:F

    sput v0, LK8/d;->d:F

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, LK8/d;->e:F

    const/16 v0, 0xa

    new-array v1, v0, [F

    sput-object v1, LK8/d;->g:[F

    new-array v0, v0, [F

    sput-object v0, LK8/d;->h:[F

    const/4 v0, 0x0

    sput-boolean v0, LK8/d;->i:Z

    sput v0, LK8/d;->j:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(F)F
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deltaTime"
        }
    .end annotation

    sget-boolean v0, LK8/d;->i:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget v0, LK8/d;->j:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    sput-boolean v1, LK8/d;->i:Z

    :cond_0
    sget-object v0, LK8/d;->g:[F

    sget v2, LK8/d;->j:I

    aput p0, v0, v2

    sget-object v0, LK8/d;->h:[F

    aput p0, v0, v2

    sget-boolean p0, LK8/d;->i:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    move v3, p0

    move v2, v0

    :goto_0
    sget-object v4, LK8/d;->g:[F

    array-length v5, v4

    if-ge v2, v5, :cond_1

    aget v4, v4, v2

    add-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v3, v2

    sget-object v4, LK8/d;->h:[F

    sget v5, LK8/d;->j:I

    aput v3, v4, v5

    array-length v3, v4

    move v5, v0

    :goto_1
    if-ge v5, v3, :cond_2

    aget v6, v4, v5

    add-float/2addr p0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    div-float/2addr p0, v2

    goto :goto_2

    :cond_3
    sget p0, LK8/d;->c:F

    :goto_2
    sget v2, LK8/d;->j:I

    add-int/2addr v2, v1

    sput v2, LK8/d;->j:I

    const/16 v1, 0xa

    if-lt v2, v1, :cond_4

    sput v0, LK8/d;->j:I

    :cond_4
    return p0
.end method

.method public static b()F
    .locals 1

    sget v0, LK8/d;->d:F

    return v0
.end method

.method public static c()F
    .locals 1

    sget v0, LK8/d;->e:F

    return v0
.end method

.method public static d()F
    .locals 1

    sget v0, LK8/d;->b:F

    return v0
.end method

.method public static e()F
    .locals 1

    sget v0, LK8/d;->c:F

    return v0
.end method

.method public static f()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, LK8/d;->a:J

    return-void
.end method

.method public static g()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, LK8/d;->a:J

    sub-long v2, v0, v2

    sput-wide v0, LK8/d;->a:J

    long-to-float v0, v2

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    sput v0, LK8/d;->b:F

    const/4 v1, 0x0

    const v2, 0x3d872b02    # 0.066f

    invoke-static {v1, v0, v2}, LNc/b;->E(FFF)F

    move-result v0

    invoke-static {v0}, LK8/d;->a(F)F

    move-result v0

    sput v0, LK8/d;->c:F

    sget v1, LK8/d;->e:F

    mul-float/2addr v0, v1

    sput v0, LK8/d;->d:F

    return-void
.end method

.method public static h(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeScale"
        }
    .end annotation

    sput p0, LK8/d;->e:F

    return-void
.end method
