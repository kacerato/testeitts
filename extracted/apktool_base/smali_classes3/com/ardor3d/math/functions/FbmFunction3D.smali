.class public Lcom/ardor3d/math/functions/FbmFunction3D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/math/functions/Function3D;


# instance fields
.field private _frequency:D

.field private _lacunarity:D

.field private _octaves:I

.field private _persistence:D

.field private _source:Lcom/ardor3d/math/functions/Function3D;


# direct methods
.method public constructor <init>(Lcom/ardor3d/math/functions/Function3D;IDDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/math/functions/FbmFunction3D;->_source:Lcom/ardor3d/math/functions/Function3D;

    iput p2, p0, Lcom/ardor3d/math/functions/FbmFunction3D;->_octaves:I

    iput-wide p3, p0, Lcom/ardor3d/math/functions/FbmFunction3D;->_frequency:D

    iput-wide p5, p0, Lcom/ardor3d/math/functions/FbmFunction3D;->_persistence:D

    iput-wide p7, p0, Lcom/ardor3d/math/functions/FbmFunction3D;->_lacunarity:D

    return-void
.end method


# virtual methods
.method public eval(DDD)D
    .locals 19

    move-object/from16 v7, p0

    iget-wide v0, v7, Lcom/ardor3d/math/functions/FbmFunction3D;->_frequency:D

    mul-double v2, p1, v0

    mul-double v4, p3, v0

    mul-double v0, v0, p5

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x0

    move-wide v12, v4

    move v14, v6

    move-wide v15, v8

    move-wide/from16 v17, v10

    move-wide v8, v0

    move-wide v10, v2

    :goto_0
    iget v0, v7, Lcom/ardor3d/math/functions/FbmFunction3D;->_octaves:I

    if-ge v14, v0, :cond_0

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v12

    move-wide v5, v8

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/functions/FbmFunction3D;->getValue(DDD)D

    move-result-wide v0

    mul-double v0, v0, v17

    add-double/2addr v15, v0

    iget-wide v0, v7, Lcom/ardor3d/math/functions/FbmFunction3D;->_persistence:D

    mul-double v17, v17, v0

    iget-wide v0, v7, Lcom/ardor3d/math/functions/FbmFunction3D;->_lacunarity:D

    mul-double/2addr v10, v0

    mul-double/2addr v12, v0

    mul-double/2addr v8, v0

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    return-wide v15
.end method

.method public getFrequency()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/functions/FbmFunction3D;->_frequency:D

    return-wide v0
.end method

.method public getLacunarity()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/functions/FbmFunction3D;->_lacunarity:D

    return-wide v0
.end method

.method public getOctaves()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/math/functions/FbmFunction3D;->_octaves:I

    return v0
.end method

.method public getPersistence()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/functions/FbmFunction3D;->_persistence:D

    return-wide v0
.end method

.method public getSource()Lcom/ardor3d/math/functions/Function3D;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/functions/FbmFunction3D;->_source:Lcom/ardor3d/math/functions/Function3D;

    return-object v0
.end method

.method public getValue(DDD)D
    .locals 7

    iget-object v0, p0, Lcom/ardor3d/math/functions/FbmFunction3D;->_source:Lcom/ardor3d/math/functions/Function3D;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/ardor3d/math/functions/Function3D;->eval(DDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public setFrequency(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/functions/FbmFunction3D;->_frequency:D

    return-void
.end method

.method public setLacunarity(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/functions/FbmFunction3D;->_lacunarity:D

    return-void
.end method

.method public setOctaves(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/math/functions/FbmFunction3D;->_octaves:I

    return-void
.end method

.method public setPersistence(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/functions/FbmFunction3D;->_persistence:D

    return-void
.end method

.method public setSource(Lcom/ardor3d/math/functions/Function3D;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/math/functions/FbmFunction3D;->_source:Lcom/ardor3d/math/functions/Function3D;

    return-void
.end method
