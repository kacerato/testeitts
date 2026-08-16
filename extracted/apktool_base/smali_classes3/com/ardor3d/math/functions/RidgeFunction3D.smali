.class public Lcom/ardor3d/math/functions/RidgeFunction3D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/math/functions/Function3D;


# static fields
.field public static final MAX_OCTAVES:I = 0x20


# instance fields
.field private _frequency:D

.field private _gain:D

.field private _h:D

.field private _lacunarity:D

.field private _octaves:D

.field private _offset:D

.field private _source:Lcom/ardor3d/math/functions/Function3D;

.field private final _spectralWeights:[D


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    .line 2
    iput-wide v0, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_octaves:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 3
    iput-wide v0, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_frequency:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 4
    iput-wide v2, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_lacunarity:D

    .line 5
    iput-wide v2, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_gain:D

    .line 6
    iput-wide v0, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_offset:D

    .line 7
    iput-wide v0, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_h:D

    const/16 v0, 0x20

    .line 8
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_spectralWeights:[D

    .line 9
    invoke-static {}, Lcom/ardor3d/math/functions/Functions;->simplexNoise()Lcom/ardor3d/math/functions/Function3D;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/functions/RidgeFunction3D;->setSource(Lcom/ardor3d/math/functions/Function3D;)V

    .line 10
    invoke-direct {p0}, Lcom/ardor3d/math/functions/RidgeFunction3D;->updateWeights()V

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/math/functions/Function3D;DDD)V
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    .line 12
    iput-wide v0, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_octaves:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 13
    iput-wide v0, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_frequency:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 14
    iput-wide v2, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_lacunarity:D

    .line 15
    iput-wide v2, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_gain:D

    .line 16
    iput-wide v0, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_offset:D

    .line 17
    iput-wide v0, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_h:D

    const/16 v0, 0x20

    .line 18
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_spectralWeights:[D

    .line 19
    invoke-virtual {p0, p1}, Lcom/ardor3d/math/functions/RidgeFunction3D;->setSource(Lcom/ardor3d/math/functions/Function3D;)V

    .line 20
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/math/functions/RidgeFunction3D;->setOctaves(D)V

    .line 21
    invoke-virtual {p0, p4, p5}, Lcom/ardor3d/math/functions/RidgeFunction3D;->setFrequency(D)V

    .line 22
    iput-wide p6, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_lacunarity:D

    .line 23
    invoke-direct {p0}, Lcom/ardor3d/math/functions/RidgeFunction3D;->updateWeights()V

    return-void
.end method

.method private updateWeights()V
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_spectralWeights:[D

    iget-wide v4, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_h:D

    neg-double v4, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    aput-wide v4, v3, v2

    iget-wide v3, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_lacunarity:D

    mul-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public eval(DDD)D
    .locals 21

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_frequency:D

    mul-double v3, p1, v1

    mul-double v5, p3, v1

    mul-double v1, v1, p5

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const/4 v11, 0x0

    move-wide/from16 v19, v9

    :goto_0
    int-to-double v12, v11

    iget-wide v14, v0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_octaves:D

    cmpg-double v12, v12, v14

    if-gez v12, :cond_0

    iget-object v12, v0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_source:Lcom/ardor3d/math/functions/Function3D;

    move-wide v13, v3

    move-wide v15, v5

    move-wide/from16 v17, v1

    invoke-interface/range {v12 .. v18}, Lcom/ardor3d/math/functions/Function3D;->eval(DDD)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    iget-wide v14, v0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_offset:D

    sub-double/2addr v14, v12

    mul-double/2addr v14, v14

    mul-double v14, v14, v19

    iget-wide v12, v0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_gain:D

    mul-double/2addr v12, v14

    const-wide/16 v16, 0x0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 p1, v12

    move-wide/from16 p3, v16

    move-wide/from16 p5, v18

    invoke-static/range {p1 .. p6}, Lcom/ardor3d/math/MathUtils;->clamp(DDD)D

    move-result-wide v19

    iget-object v12, v0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_spectralWeights:[D

    aget-wide v16, v12, v11

    mul-double v14, v14, v16

    add-double/2addr v7, v14

    iget-wide v12, v0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_lacunarity:D

    mul-double/2addr v3, v12

    mul-double/2addr v5, v12

    mul-double/2addr v1, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v1, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v7, v1

    sub-double/2addr v7, v9

    return-wide v7
.end method

.method public getFrequency()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_frequency:D

    return-wide v0
.end method

.method public getGain()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_gain:D

    return-wide v0
.end method

.method public getH()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_h:D

    return-wide v0
.end method

.method public getLacunarity()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_lacunarity:D

    return-wide v0
.end method

.method public getOctaves()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_octaves:D

    return-wide v0
.end method

.method public getOffset()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_offset:D

    return-wide v0
.end method

.method public getSource()Lcom/ardor3d/math/functions/Function3D;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_source:Lcom/ardor3d/math/functions/Function3D;

    return-object v0
.end method

.method public setFrequency(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_frequency:D

    return-void
.end method

.method public setGain(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_gain:D

    return-void
.end method

.method public setH(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_h:D

    invoke-direct {p0}, Lcom/ardor3d/math/functions/RidgeFunction3D;->updateWeights()V

    return-void
.end method

.method public setLacunarity(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_lacunarity:D

    invoke-direct {p0}, Lcom/ardor3d/math/functions/RidgeFunction3D;->updateWeights()V

    return-void
.end method

.method public setOctaves(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_octaves:D

    return-void
.end method

.method public setOffset(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_offset:D

    return-void
.end method

.method public setSource(Lcom/ardor3d/math/functions/Function3D;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/math/functions/RidgeFunction3D;->_source:Lcom/ardor3d/math/functions/Function3D;

    return-void
.end method
