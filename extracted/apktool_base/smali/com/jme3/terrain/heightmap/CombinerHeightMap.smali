.class public Lcom/jme3/terrain/heightmap/CombinerHeightMap;
.super Lcom/jme3/terrain/heightmap/AbstractHeightMap;
.source "SourceFile"


# static fields
.field public static final ADDITION:I = 0x0

.field public static final SUBTRACTION:I = 0x1

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private factor1:F

.field private factor2:F

.field private map1:Lcom/jme3/terrain/heightmap/AbstractHeightMap;

.field private map2:Lcom/jme3/terrain/heightmap/AbstractHeightMap;

.field private mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/terrain/heightmap/AbstractHeightMap;FLcom/jme3/terrain/heightmap/AbstractHeightMap;FI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 15
    iput v0, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->factor1:F

    .line 16
    iput v0, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->factor2:F

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 17
    invoke-virtual {p1}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->getSize()I

    move-result v0

    invoke-virtual {p3}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->getSize()I

    move-result v1

    if-ne v0, v1, :cond_1

    add-float v0, p2, p4

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p0, p5}, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->setMode(I)V

    .line 19
    invoke-virtual {p1}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->getSize()I

    move-result v0

    iput v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    .line 20
    iput-object p1, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->map1:Lcom/jme3/terrain/heightmap/AbstractHeightMap;

    .line 21
    iput-object p3, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->map2:Lcom/jme3/terrain/heightmap/AbstractHeightMap;

    .line 22
    iput p2, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->factor1:F

    .line 23
    iput p4, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->factor2:F

    .line 24
    iput p5, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->mode:I

    .line 25
    invoke-virtual {p0}, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->load()Z

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "factor1 and factor2 must add to 1.0"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "The two maps must be of the same size"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Height map may not be null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/jme3/terrain/heightmap/AbstractHeightMap;Lcom/jme3/terrain/heightmap/AbstractHeightMap;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    iput v0, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->factor1:F

    .line 3
    iput v0, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->factor2:F

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->getSize()I

    move-result v0

    invoke-virtual {p2}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->getSize()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5
    iget v0, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->factor1:F

    iget v1, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->factor2:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->getSize()I

    move-result v0

    iput v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    .line 7
    iput-object p1, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->map1:Lcom/jme3/terrain/heightmap/AbstractHeightMap;

    .line 8
    iput-object p2, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->map2:Lcom/jme3/terrain/heightmap/AbstractHeightMap;

    .line 9
    invoke-virtual {p0, p3}, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->setMode(I)V

    .line 10
    invoke-virtual {p0}, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->load()Z

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "factor1 and factor2 must add to 1.0"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "The two maps must be of the same size"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Height map may not be null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public load()Z
    .locals 11

    iget-object v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->unloadHeightMap()V

    :cond_0
    iget v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    mul-int/2addr v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    iget-object v0, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->map1:Lcom/jme3/terrain/heightmap/AbstractHeightMap;

    invoke-virtual {v0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->getHeightMap()[F

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->map2:Lcom/jme3/terrain/heightmap/AbstractHeightMap;

    invoke-virtual {v1}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->getHeightMap()[F

    move-result-object v1

    iget v2, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->mode:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    iget v5, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v2, v5, :cond_4

    move v5, v3

    :goto_1
    iget v6, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v5, v6, :cond_1

    iget-object v7, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    mul-int v8, v5, v6

    add-int/2addr v8, v2

    mul-int v9, v5, v6

    add-int/2addr v9, v2

    aget v9, v0, v9

    iget v10, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->factor1:F

    mul-float/2addr v9, v10

    mul-int/2addr v6, v5

    add-int/2addr v6, v2

    aget v6, v1, v6

    iget v10, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->factor2:F

    mul-float/2addr v6, v10

    add-float/2addr v9, v6

    float-to-int v6, v9

    int-to-float v6, v6

    aput v6, v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-ne v2, v4, :cond_4

    move v2, v3

    :goto_2
    iget v5, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v2, v5, :cond_4

    move v5, v3

    :goto_3
    iget v6, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v5, v6, :cond_3

    iget-object v7, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    mul-int v8, v5, v6

    add-int/2addr v8, v2

    mul-int v9, v5, v6

    add-int/2addr v9, v2

    aget v9, v0, v9

    iget v10, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->factor1:F

    mul-float/2addr v9, v10

    mul-int/2addr v6, v5

    add-int/2addr v6, v2

    aget v6, v1, v6

    iget v10, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->factor2:F

    mul-float/2addr v6, v10

    sub-float/2addr v9, v6

    float-to-int v6, v9

    int-to-float v6, v6

    aput v6, v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->logger:Ljava/util/logging/Logger;

    const-string v1, "Created heightmap using Combiner"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v4
.end method

.method public setFactors(FF)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    add-float v0, p1, p2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iput p1, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->factor1:F

    iput p2, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->factor2:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "factor1 and factor2 must add to 1.0"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHeightMaps(Lcom/jme3/terrain/heightmap/AbstractHeightMap;Lcom/jme3/terrain/heightmap/AbstractHeightMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->getSize()I

    move-result v0

    invoke-virtual {p2}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->getSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->getSize()I

    move-result v0

    iput v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    iput-object p1, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->map1:Lcom/jme3/terrain/heightmap/AbstractHeightMap;

    iput-object p2, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->map2:Lcom/jme3/terrain/heightmap/AbstractHeightMap;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "The two maps must be of the same size"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Height map may not be null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Invalid mode"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/jme3/terrain/heightmap/CombinerHeightMap;->mode:I

    return-void
.end method
