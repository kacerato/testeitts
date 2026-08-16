.class public Lcom/itsmagic/engine/Engines/Engine/Quaternion/a;
.super LK8/f;
.source "SourceFile"


# instance fields
.field public final b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LK8/f;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method


# virtual methods
.method public d(FFFF)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "x",
            "y",
            "z"
        }
    .end annotation

    move-object v0, p0

    mul-float v1, p1, p2

    mul-float v2, p3, p4

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-double v3, v1

    mul-float v1, p2, p2

    mul-float v5, p3, p3

    add-float/2addr v1, v5

    mul-float/2addr v1, v2

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v1, v6, v1

    float-to-double v7, v1

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    mul-float v1, p1, p3

    mul-float v7, p4, p2

    sub-float/2addr v1, v7

    mul-float/2addr v1, v2

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v9, v11

    if-ltz v1, :cond_0

    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v7

    goto :goto_0

    :cond_0
    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v7

    :goto_0
    mul-float v1, p1, p4

    mul-float v9, p2, p3

    add-float/2addr v1, v9

    mul-float/2addr v1, v2

    float-to-double v9, v1

    mul-float v1, p4, p4

    add-float/2addr v5, v1

    mul-float/2addr v5, v2

    sub-float/2addr v6, v5

    float-to-double v1, v6

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v5, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-void
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quat"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/a;->d(FFFF)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decimals"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
