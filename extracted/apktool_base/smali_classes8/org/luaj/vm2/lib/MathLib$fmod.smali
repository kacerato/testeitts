.class final Lorg/luaj/vm2/lib/MathLib$fmod;
.super Lorg/luaj/vm2/lib/MathLib$BinaryOp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/luaj/vm2/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "fmod"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/MathLib$BinaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method public call(DD)D
    .locals 4

    div-double v0, p1, p3

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    :goto_0
    mul-double/2addr p3, v0

    sub-double/2addr p1, p3

    return-wide p1
.end method
