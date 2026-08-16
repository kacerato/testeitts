.class Lcom/threed/jpct/Lights;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ERROR_MESSAGE:Ljava/lang/String; = "Tried to modify a nonexistent light-source!"

.field private static final serialVersionUID:J = -0x7d1d24608bb62e3bL


# instance fields
.field attenuation:[F

.field bOrg:[F

.field discardDistance:[F

.field distanceOverride:[F

.field gOrg:[F

.field isVisible:[Z

.field lightCnt:I

.field private mat5:Lcom/threed/jpct/Matrix;

.field maxLights:I

.field rOrg:[F

.field rgbScale:I

.field transform:[Lcom/threed/jpct/Matrix;

.field xOrg:[F

.field xTr:[F

.field yOrg:[F

.field yTr:[F

.field zOrg:[F

.field zTr:[F


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Lights;->mat5:Lcom/threed/jpct/Matrix;

    const/4 v0, 0x1

    iput v0, p0, Lcom/threed/jpct/Lights;->rgbScale:I

    iput p1, p0, Lcom/threed/jpct/Lights;->maxLights:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/Lights;->lightCnt:I

    new-array v1, p1, [F

    iput-object v1, p0, Lcom/threed/jpct/Lights;->xOrg:[F

    new-array v1, p1, [F

    iput-object v1, p0, Lcom/threed/jpct/Lights;->yOrg:[F

    new-array v1, p1, [F

    iput-object v1, p0, Lcom/threed/jpct/Lights;->zOrg:[F

    new-array v1, p1, [F

    iput-object v1, p0, Lcom/threed/jpct/Lights;->xTr:[F

    new-array v1, p1, [F

    iput-object v1, p0, Lcom/threed/jpct/Lights;->yTr:[F

    new-array v1, p1, [F

    iput-object v1, p0, Lcom/threed/jpct/Lights;->zTr:[F

    new-array v1, p1, [F

    iput-object v1, p0, Lcom/threed/jpct/Lights;->bOrg:[F

    new-array v1, p1, [F

    iput-object v1, p0, Lcom/threed/jpct/Lights;->gOrg:[F

    new-array v1, p1, [F

    iput-object v1, p0, Lcom/threed/jpct/Lights;->rOrg:[F

    new-array v1, p1, [Lcom/threed/jpct/Matrix;

    iput-object v1, p0, Lcom/threed/jpct/Lights;->transform:[Lcom/threed/jpct/Matrix;

    new-array v1, p1, [Z

    iput-object v1, p0, Lcom/threed/jpct/Lights;->isVisible:[Z

    new-array v1, p1, [F

    iput-object v1, p0, Lcom/threed/jpct/Lights;->attenuation:[F

    new-array v1, p1, [F

    iput-object v1, p0, Lcom/threed/jpct/Lights;->discardDistance:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/threed/jpct/Lights;->distanceOverride:[F

    :goto_0
    iget p1, p0, Lcom/threed/jpct/Lights;->maxLights:I

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/threed/jpct/Lights;->attenuation:[F

    const/high16 v1, -0x40000000    # -2.0f

    aput v1, p1, v0

    iget-object p1, p0, Lcom/threed/jpct/Lights;->discardDistance:[F

    aput v1, p1, v0

    iget-object p1, p0, Lcom/threed/jpct/Lights;->distanceOverride:[F

    const/high16 v1, -0x40800000    # -1.0f

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isFine(I)Z
    .locals 1

    iget v0, p0, Lcom/threed/jpct/Lights;->lightCnt:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/threed/jpct/Lights;->logError()V

    const/4 p1, 0x0

    return p1
.end method

.method private logError()V
    .locals 2

    const-string v0, "Tried to modify a nonexistent light-source!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public addLight(FFFFFF)I
    .locals 3

    iget v0, p0, Lcom/threed/jpct/Lights;->lightCnt:I

    iget v1, p0, Lcom/threed/jpct/Lights;->maxLights:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/threed/jpct/Lights;->xOrg:[F

    aput p1, v1, v0

    iget-object p1, p0, Lcom/threed/jpct/Lights;->yOrg:[F

    aput p2, p1, v0

    iget-object p1, p0, Lcom/threed/jpct/Lights;->zOrg:[F

    aput p3, p1, v0

    iget-object p1, p0, Lcom/threed/jpct/Lights;->rOrg:[F

    aput p4, p1, v0

    iget-object p1, p0, Lcom/threed/jpct/Lights;->gOrg:[F

    aput p5, p1, v0

    iget-object p1, p0, Lcom/threed/jpct/Lights;->bOrg:[F

    aput p6, p1, v0

    iget-object p1, p0, Lcom/threed/jpct/Lights;->isVisible:[Z

    aput-boolean v2, p1, v0

    iget-object p1, p0, Lcom/threed/jpct/Lights;->transform:[Lcom/threed/jpct/Matrix;

    new-instance p2, Lcom/threed/jpct/Matrix;

    invoke-direct {p2}, Lcom/threed/jpct/Matrix;-><init>()V

    aput-object p2, p1, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Adding Lightsource: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/threed/jpct/Lights;->lightCnt:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    iget p1, p0, Lcom/threed/jpct/Lights;->lightCnt:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/threed/jpct/Lights;->lightCnt:I

    goto :goto_0

    :cond_0
    const-string p1, "Maximum number of Lightsources reached...ignoring additional ones!"

    invoke-static {p1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    iget p1, p0, Lcom/threed/jpct/Lights;->lightCnt:I

    sub-int/2addr p1, v2

    return p1
.end method

.method public getAttenuation(I)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/threed/jpct/Lights;->isFine(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Lights;->attenuation:[F

    aget p1, v0, p1

    return p1
.end method

.method public getDiscardDistance(I)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/threed/jpct/Lights;->isFine(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Lights;->discardDistance:[F

    aget p1, v0, p1

    return p1
.end method

.method public getDistanceOverride(I)F
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Lights;->distanceOverride:[F

    aget p1, v0, p1

    return p1
.end method

.method public getIntensity(I)Lcom/threed/jpct/SimpleVector;
    .locals 3

    invoke-direct {p0, p1}, Lcom/threed/jpct/Lights;->isFine(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/threed/jpct/SimpleVector;->create()Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Lights;->rOrg:[F

    aget v0, v0, p1

    iget-object v1, p0, Lcom/threed/jpct/Lights;->gOrg:[F

    aget v1, v1, p1

    iget-object v2, p0, Lcom/threed/jpct/Lights;->bOrg:[F

    aget p1, v2, p1

    invoke-static {v0, v1, p1}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public getPosition(ILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-direct {p0, p1}, Lcom/threed/jpct/Lights;->isFine(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/Lights;->zOrg:[F

    aget v0, v0, p1

    iput v0, p2, Lcom/threed/jpct/SimpleVector;->z:F

    iget-object v0, p0, Lcom/threed/jpct/Lights;->xOrg:[F

    aget v0, v0, p1

    iput v0, p2, Lcom/threed/jpct/SimpleVector;->x:F

    iget-object v0, p0, Lcom/threed/jpct/Lights;->yOrg:[F

    aget p1, v0, p1

    iput p1, p2, Lcom/threed/jpct/SimpleVector;->y:F

    :cond_0
    return-object p2
.end method

.method public setAttenuation(IF)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/threed/jpct/Lights;->isFine(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    move p2, v0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_1
    iget-object v0, p0, Lcom/threed/jpct/Lights;->attenuation:[F

    aput p2, v0, p1

    :cond_2
    return-void
.end method

.method public setDiscardDistance(IF)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/threed/jpct/Lights;->isFine(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/high16 p2, -0x40000000    # -2.0f

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Lights;->discardDistance:[F

    aput p2, v0, p1

    :cond_1
    return-void
.end method

.method public setDistanceOverride(IF)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/threed/jpct/Lights;->isFine(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/Lights;->distanceOverride:[F

    aput p2, v0, p1

    :cond_0
    return-void
.end method

.method public setLightIntensity(IFFF)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/threed/jpct/Lights;->isFine(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/Lights;->rOrg:[F

    aput p2, v0, p1

    iget-object p2, p0, Lcom/threed/jpct/Lights;->gOrg:[F

    aput p3, p2, p1

    iget-object p2, p0, Lcom/threed/jpct/Lights;->bOrg:[F

    aput p4, p2, p1

    :cond_0
    return-void
.end method

.method public setPosition(IFFF)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/threed/jpct/Lights;->isFine(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/Lights;->zOrg:[F

    aput p4, v0, p1

    iget-object p4, p0, Lcom/threed/jpct/Lights;->xOrg:[F

    aput p2, p4, p1

    iget-object p2, p0, Lcom/threed/jpct/Lights;->yOrg:[F

    aput p3, p2, p1

    :cond_0
    return-void
.end method

.method public setRGBScale(I)V
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/threed/jpct/Lights;->rgbScale:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This RGB scaling ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is not supported!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public setVisibility(IZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/threed/jpct/Lights;->isFine(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/Lights;->isVisible:[Z

    aput-boolean p2, v0, p1

    :cond_0
    return-void
.end method

.method public transformLights(Lcom/threed/jpct/Camera;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, v0, Lcom/threed/jpct/Lights;->lightCnt:I

    if-lt v4, v5, :cond_0

    return-void

    :cond_0
    iget-object v5, v0, Lcom/threed/jpct/Lights;->isVisible:[Z

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/threed/jpct/Lights;->mat5:Lcom/threed/jpct/Matrix;

    invoke-virtual {v5}, Lcom/threed/jpct/Matrix;->setIdentity()V

    iget-object v5, v0, Lcom/threed/jpct/Lights;->mat5:Lcom/threed/jpct/Matrix;

    iget v6, v1, Lcom/threed/jpct/Camera;->backBx:F

    neg-float v6, v6

    iget v7, v1, Lcom/threed/jpct/Camera;->backBy:F

    neg-float v7, v7

    iget v8, v1, Lcom/threed/jpct/Camera;->backBz:F

    neg-float v8, v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/threed/jpct/Matrix;->translate(FFF)V

    iget-object v5, v0, Lcom/threed/jpct/Lights;->mat5:Lcom/threed/jpct/Matrix;

    invoke-virtual {v5, v2}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    iget-object v5, v0, Lcom/threed/jpct/Lights;->mat5:Lcom/threed/jpct/Matrix;

    iget-object v5, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v6, v5, v3

    aget v7, v6, v3

    const/4 v8, 0x1

    aget-object v9, v5, v8

    aget v10, v9, v3

    aget v11, v9, v8

    const/4 v12, 0x2

    aget-object v13, v5, v12

    aget v14, v13, v8

    aget v15, v13, v12

    aget v9, v9, v12

    aget v13, v13, v3

    aget v16, v6, v12

    aget v6, v6, v8

    const/16 v17, 0x3

    aget-object v5, v5, v17

    aget v17, v5, v3

    aget v8, v5, v8

    aget v5, v5, v12

    iget-object v12, v0, Lcom/threed/jpct/Lights;->xOrg:[F

    aget v12, v12, v4

    iget-object v3, v0, Lcom/threed/jpct/Lights;->yOrg:[F

    aget v3, v3, v4

    iget-object v1, v0, Lcom/threed/jpct/Lights;->zOrg:[F

    aget v1, v1, v4

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/threed/jpct/Lights;->xTr:[F

    mul-float/2addr v7, v12

    mul-float/2addr v10, v3

    add-float/2addr v7, v10

    mul-float/2addr v13, v1

    add-float/2addr v7, v13

    add-float v7, v7, v17

    aput v7, v2, v4

    iget-object v2, v0, Lcom/threed/jpct/Lights;->yTr:[F

    mul-float/2addr v6, v12

    mul-float/2addr v11, v3

    add-float/2addr v6, v11

    mul-float/2addr v14, v1

    add-float/2addr v6, v14

    add-float/2addr v6, v8

    aput v6, v2, v4

    iget-object v2, v0, Lcom/threed/jpct/Lights;->zTr:[F

    mul-float v12, v12, v16

    mul-float/2addr v3, v9

    add-float/2addr v12, v3

    mul-float/2addr v1, v15

    add-float/2addr v12, v1

    add-float/2addr v12, v5

    aput v12, v2, v4

    goto :goto_1

    :cond_1
    move-object/from16 v18, v2

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    const/4 v3, 0x0

    goto/16 :goto_0
.end method
