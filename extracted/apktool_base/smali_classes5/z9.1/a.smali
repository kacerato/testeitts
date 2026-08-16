.class public final Lz9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz9/a$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(III)I
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

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static b(II)Lz9/a$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolution",
            "bestChunkResolution"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p0, v0, :cond_3

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    int-to-float v1, p0

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    if-le v0, p0, :cond_2

    move v0, p0

    :cond_2
    invoke-static {p0, v0}, Lz9/a;->c(II)I

    move-result p1

    div-int/2addr p0, p1

    new-instance v0, Lz9/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lz9/a$b;-><init>(IILz9/a$a;)V

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "resolution deve ser >= 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(II)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "target"
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-le p1, p0, :cond_1

    move p1, p0

    :cond_1
    rsub-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    move v3, v1

    move v1, v0

    :goto_0
    if-gt v0, v2, :cond_7

    rem-int v4, p0, v0

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    div-int v4, p0, v0

    sub-int v5, v0, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v5, v3, :cond_3

    if-ne v5, v3, :cond_4

    if-le v0, v1, :cond_4

    :cond_3
    move v1, v0

    move v3, v5

    :cond_4
    sub-int v5, v4, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v5, v3, :cond_5

    if-ne v5, v3, :cond_6

    if-le v4, v1, :cond_6

    :cond_5
    move v1, v4

    move v3, v5

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return v1
.end method
