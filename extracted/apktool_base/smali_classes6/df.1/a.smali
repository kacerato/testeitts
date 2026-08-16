.class public Ldf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)S
    .locals 2

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    const v1, 0xff00

    and-int/2addr v1, p0

    and-int/lit16 p0, p0, 0xff

    shr-int/lit8 v0, v0, 0x13

    shr-int/lit8 v1, v1, 0xa

    shr-int/lit8 p0, p0, 0x3

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr p0, v1

    shl-int/lit8 v0, v0, 0xb

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static b(S)I
    .locals 3

    const v0, 0xf800

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0xb

    and-int/lit16 v1, p0, 0x7e0

    shr-int/lit8 v1, v1, 0x5

    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x3

    shl-int/lit8 v0, v0, 0x13

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0xa

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method
