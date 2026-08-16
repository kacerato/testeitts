.class public Lcom/ardor3d/math/functions/TurbulenceFunction3D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/math/functions/Function3D;


# instance fields
.field private final _distortModule:Lcom/ardor3d/math/functions/FbmFunction3D;

.field private _power:D

.field private _source:Lcom/ardor3d/math/functions/Function3D;


# direct methods
.method public constructor <init>(Lcom/ardor3d/math/functions/Function3D;DID)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/ardor3d/math/functions/TurbulenceFunction3D;->_power:D

    iput-object p1, p0, Lcom/ardor3d/math/functions/TurbulenceFunction3D;->_source:Lcom/ardor3d/math/functions/Function3D;

    new-instance p1, Lcom/ardor3d/math/functions/FbmFunction3D;

    invoke-static {}, Lcom/ardor3d/math/functions/Functions;->simplexNoise()Lcom/ardor3d/math/functions/Function3D;

    move-result-object v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    move-object v0, p1

    move v2, p4

    move-wide v3, p5

    invoke-direct/range {v0 .. v8}, Lcom/ardor3d/math/functions/FbmFunction3D;-><init>(Lcom/ardor3d/math/functions/Function3D;IDDD)V

    iput-object p1, p0, Lcom/ardor3d/math/functions/TurbulenceFunction3D;->_distortModule:Lcom/ardor3d/math/functions/FbmFunction3D;

    return-void
.end method


# virtual methods
.method public eval(DDD)D
    .locals 24

    move-object/from16 v0, p0

    const-wide v1, 0x3fc96872b020c49cL    # 0.1985

    add-double v4, p1, v1

    const-wide v1, 0x3fefdd97f62b6ae8L    # 0.9958

    add-double v6, p3, v1

    const-wide v1, 0x3fe0e8a71de69ad4L    # 0.5284

    add-double v8, p5, v1

    const-wide v1, 0x3fda474538ef34d7L    # 0.4106

    add-double v11, p1, v1

    const-wide v1, 0x3fd119ce075f6fd2L    # 0.2672

    add-double v13, p3, v1

    const-wide v1, 0x3fee7e28240b7803L    # 0.9529

    add-double v15, p5, v1

    const-wide v1, 0x3fea8ce703afb7e9L    # 0.8297

    add-double v18, p1, v1

    const-wide v1, 0x3fc896bb98c7e282L    # 0.1921

    add-double v20, p3, v1

    const-wide v1, 0x3fe6cb295e9e1b09L    # 0.7123

    add-double v22, p5, v1

    iget-object v3, v0, Lcom/ardor3d/math/functions/TurbulenceFunction3D;->_distortModule:Lcom/ardor3d/math/functions/FbmFunction3D;

    invoke-virtual/range {v3 .. v9}, Lcom/ardor3d/math/functions/FbmFunction3D;->eval(DDD)D

    move-result-wide v1

    iget-wide v3, v0, Lcom/ardor3d/math/functions/TurbulenceFunction3D;->_power:D

    mul-double/2addr v1, v3

    add-double v4, p1, v1

    iget-object v10, v0, Lcom/ardor3d/math/functions/TurbulenceFunction3D;->_distortModule:Lcom/ardor3d/math/functions/FbmFunction3D;

    invoke-virtual/range {v10 .. v16}, Lcom/ardor3d/math/functions/FbmFunction3D;->eval(DDD)D

    move-result-wide v1

    iget-wide v6, v0, Lcom/ardor3d/math/functions/TurbulenceFunction3D;->_power:D

    mul-double/2addr v1, v6

    add-double v6, p3, v1

    iget-object v1, v0, Lcom/ardor3d/math/functions/TurbulenceFunction3D;->_distortModule:Lcom/ardor3d/math/functions/FbmFunction3D;

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v23}, Lcom/ardor3d/math/functions/FbmFunction3D;->eval(DDD)D

    move-result-wide v1

    iget-wide v8, v0, Lcom/ardor3d/math/functions/TurbulenceFunction3D;->_power:D

    mul-double/2addr v1, v8

    add-double v8, p5, v1

    iget-object v3, v0, Lcom/ardor3d/math/functions/TurbulenceFunction3D;->_source:Lcom/ardor3d/math/functions/Function3D;

    invoke-interface/range {v3 .. v9}, Lcom/ardor3d/math/functions/Function3D;->eval(DDD)D

    move-result-wide v1

    return-wide v1
.end method

.method public getPower()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/functions/TurbulenceFunction3D;->_power:D

    return-wide v0
.end method

.method public getSource()Lcom/ardor3d/math/functions/Function3D;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/functions/TurbulenceFunction3D;->_source:Lcom/ardor3d/math/functions/Function3D;

    return-object v0
.end method

.method public setFrequency(D)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/functions/TurbulenceFunction3D;->_distortModule:Lcom/ardor3d/math/functions/FbmFunction3D;

    invoke-virtual {v0, p1, p2}, Lcom/ardor3d/math/functions/FbmFunction3D;->setFrequency(D)V

    return-void
.end method

.method public setPower(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/functions/TurbulenceFunction3D;->_power:D

    return-void
.end method

.method public setRoughness(I)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/functions/TurbulenceFunction3D;->_distortModule:Lcom/ardor3d/math/functions/FbmFunction3D;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/functions/FbmFunction3D;->setOctaves(I)V

    return-void
.end method

.method public setSource(Lcom/ardor3d/math/functions/Function3D;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/math/functions/TurbulenceFunction3D;->_source:Lcom/ardor3d/math/functions/Function3D;

    return-void
.end method
