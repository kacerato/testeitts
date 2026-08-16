.class public Lorg/eclipse/jdt/internal/core/nd/util/MathUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static roundUpToNearestMultiple(II)I
    .locals 0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, p1

    mul-int/2addr p0, p1

    return p0
.end method

.method public static roundUpToNearestMultipleOfPowerOfTwo(II)I
    .locals 0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p1, p1, -0x1

    not-int p1, p1

    and-int/2addr p0, p1

    return p0
.end method
