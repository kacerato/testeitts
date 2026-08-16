.class public Ljn/J$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljn/J;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljn/J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:I = 0xc

.field public static b:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b([F[FF)[F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "center",
            "radius"
        }
    .end annotation

    mul-float v0, p3, p3

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    invoke-static {p2, p1, v1}, Ljn/g;->D([F[FI)F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    if-ne v1, v3, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p0, p2, p3}, Ljn/J$b;->d([FF)[F

    move-result-object p3

    invoke-static {p1, p3}, Ljn/c;->d([F[F)[F

    move-result-object v0

    if-nez v0, :cond_3

    array-length v1, p1

    div-int/lit8 v1, v1, 0x3

    invoke-static {p2, p1, v1}, Ljn/g;->p([F[FI)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object p3

    :cond_3
    return-object v0
.end method

.method public final d([FF)[F
    .locals 10
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

    sget-object v0, Ljn/J$b;->b:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x24

    if-nez v0, :cond_0

    new-array v0, v3, [F

    sput-object v0, Ljn/J$b;->b:[F

    move v0, v2

    :goto_0
    const/16 v4, 0xc

    if-ge v0, v4, :cond_0

    int-to-double v4, v0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    div-double/2addr v4, v6

    sget-object v6, Ljn/J$b;->b:[F

    mul-int/lit8 v7, v0, 0x3

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v6, v7

    sget-object v6, Ljn/J$b;->b:[F

    add-int/lit8 v8, v7, 0x1

    const/4 v9, 0x0

    aput v9, v6, v8

    add-int/2addr v7, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    neg-double v4, v4

    double-to-float v4, v4

    aput v4, v6, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v3, [F

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_1

    sget-object v5, Ljn/J$b;->b:[F

    aget v6, v5, v4

    mul-float/2addr v6, p2

    aget v7, p1, v2

    add-float/2addr v6, v7

    aput v6, v0, v4

    add-int/lit8 v6, v4, 0x1

    const/4 v7, 0x1

    aget v7, p1, v7

    aput v7, v0, v6

    add-int/lit8 v6, v4, 0x2

    aget v5, v5, v6

    mul-float/2addr v5, p2

    aget v7, p1, v1

    add-float/2addr v5, v7

    aput v5, v0, v6

    add-int/lit8 v4, v4, 0x3

    goto :goto_1

    :cond_1
    return-object v0
.end method
