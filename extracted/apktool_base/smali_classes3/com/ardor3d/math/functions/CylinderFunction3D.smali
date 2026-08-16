.class public Lcom/ardor3d/math/functions/CylinderFunction3D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/math/functions/Function3D;


# instance fields
.field private _frequency:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/math/functions/CylinderFunction3D;->setFrequency(D)V

    return-void
.end method


# virtual methods
.method public eval(DDD)D
    .locals 0

    iget-wide p3, p0, Lcom/ardor3d/math/functions/CylinderFunction3D;->_frequency:D

    mul-double/2addr p1, p3

    mul-double/2addr p5, p3

    mul-double/2addr p1, p1

    mul-double/2addr p5, p5

    add-double/2addr p1, p5

    invoke-static {p1, p2}, Lcom/ardor3d/math/MathUtils;->sqrt(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/ardor3d/math/MathUtils;->floor(D)J

    move-result-wide p3

    long-to-double p3, p3

    sub-double/2addr p1, p3

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    sub-double p5, p3, p1

    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    const-wide/high16 p5, 0x4010000000000000L    # 4.0

    mul-double/2addr p1, p5

    sub-double/2addr p3, p1

    return-wide p3
.end method

.method public getFrequency()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/functions/CylinderFunction3D;->_frequency:D

    return-wide v0
.end method

.method public setFrequency(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/functions/CylinderFunction3D;->_frequency:D

    return-void
.end method
