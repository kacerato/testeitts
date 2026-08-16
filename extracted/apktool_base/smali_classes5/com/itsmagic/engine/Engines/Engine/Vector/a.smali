.class public Lcom/itsmagic/engine/Engines/Engine/Vector/a;
.super LK8/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LK8/f;-><init>()V

    return-void
.end method

.method public static d([F[FLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Z)[F
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "renderMatrix",
            "outputMatrix",
            "camera",
            "zAlign"
        }
    .end annotation

    move-object/from16 v0, p2

    const/16 v1, 0xc

    aget v2, p0, v1

    const/16 v3, 0xd

    aget v4, p0, v3

    const/16 v5, 0xe

    aget v6, p0, v5

    const/4 v7, 0x0

    aget v8, p0, v7

    mul-float/2addr v8, v8

    const/4 v9, 0x1

    aget v10, p0, v9

    mul-float/2addr v10, v10

    add-float/2addr v8, v10

    const/4 v10, 0x2

    aget v11, p0, v10

    mul-float/2addr v11, v11

    add-float/2addr v8, v11

    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v8, v11

    const/4 v11, 0x4

    aget v12, p0, v11

    mul-float/2addr v12, v12

    const/4 v13, 0x5

    aget v14, p0, v13

    mul-float/2addr v14, v14

    add-float/2addr v12, v14

    const/4 v14, 0x6

    aget v15, p0, v14

    mul-float/2addr v15, v15

    add-float/2addr v12, v15

    float-to-double v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v12, v14

    const/16 v14, 0x8

    aget v15, p0, v14

    mul-float/2addr v15, v15

    const/16 v16, 0x9

    aget v17, p0, v16

    mul-float v17, v17, v17

    add-float v15, v15, v17

    const/16 v17, 0xa

    aget v18, p0, v17

    mul-float v18, v18, v18

    add-float v15, v15, v18

    move/from16 v19, v12

    float-to-double v11, v15

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v11, v11

    const/16 v20, 0x7

    const/16 v21, 0x3

    const-class v22, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v12, 0x0

    if-eqz p3, :cond_0

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    aget v3, p0, v14

    aget v1, p0, v16

    aget v15, p0, v17

    invoke-direct {v5, v3, v1, v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalize()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    invoke-static/range {v22 .. v22}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3, v2, v4, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalize()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalize()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->cross(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalize()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->cross(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalize()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    mul-float/2addr v5, v8

    aput v5, p1, v7

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    mul-float/2addr v5, v8

    aput v5, p1, v9

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    mul-float/2addr v0, v8

    aput v0, p1, v10

    aput v12, p1, v21

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    mul-float v0, v0, v19

    const/4 v5, 0x4

    aput v0, p1, v5

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    mul-float v0, v0, v19

    aput v0, p1, v13

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    mul-float v0, v0, v19

    const/4 v3, 0x6

    aput v0, p1, v3

    aput v12, p1, v20

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    mul-float/2addr v0, v11

    aput v0, p1, v14

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    mul-float/2addr v0, v11

    aput v0, p1, v16

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    mul-float/2addr v0, v11

    aput v0, p1, v17

    const/16 v0, 0xb

    aput v12, p1, v0

    const/16 v0, 0xc

    aput v2, p1, v0

    const/16 v0, 0xd

    aput v4, p1, v0

    const/16 v0, 0xe

    aput v6, p1, v0

    const/16 v0, 0xf

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p1, v0

    return-object p1

    :cond_0
    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    invoke-static/range {v22 .. v22}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1, v2, v4, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalize()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v12, v3, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->cross(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalize()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->cross(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalize()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    mul-float/2addr v5, v8

    aput v5, p1, v7

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    mul-float/2addr v5, v8

    aput v5, p1, v9

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    mul-float/2addr v1, v8

    aput v1, p1, v10

    aput v12, p1, v21

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float v1, v1, v19

    const/4 v5, 0x4

    aput v1, p1, v5

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    mul-float v1, v1, v19

    aput v1, p1, v13

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    mul-float v1, v1, v19

    const/4 v3, 0x6

    aput v1, p1, v3

    aput v12, p1, v20

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float/2addr v1, v11

    aput v1, p1, v14

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    mul-float/2addr v1, v11

    aput v1, p1, v16

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    mul-float/2addr v0, v11

    aput v0, p1, v17

    const/16 v0, 0xb

    aput v12, p1, v0

    const/16 v0, 0xc

    aput v2, p1, v0

    const/16 v0, 0xd

    aput v4, p1, v0

    const/16 v0, 0xe

    aput v6, p1, v0

    const/16 v0, 0xf

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p1, v0

    return-object p1
.end method
