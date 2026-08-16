.class public abstract Lcom/jme3/terrain/heightmap/AbstractHeightMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/terrain/heightmap/HeightMap;


# static fields
.field public static NORMALIZE_RANGE:F

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected filter:F

.field protected heightData:[F

.field protected heightScale:F

.field protected size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->logger:Ljava/util/logging/Logger;

    const/high16 v0, 0x437f0000    # 255.0f

    sput v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->NORMALIZE_RANGE:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightScale:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->filter:F

    return-void
.end method


# virtual methods
.method public erodeTerrain()V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    aget v2, v2, v1

    :goto_1
    iget v5, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v4, v5, :cond_0

    iget-object v6, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    mul-int v7, v4, v5

    add-int/2addr v7, v1

    iget v8, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->filter:F

    mul-float/2addr v2, v8

    sub-float v8, v3, v8

    mul-int v9, v4, v5

    add-int/2addr v9, v1

    aget v9, v6, v9

    mul-float/2addr v8, v9

    add-float/2addr v2, v8

    aput v2, v6, v7

    mul-int/2addr v5, v4

    add-int/2addr v5, v1

    aget v2, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v2, v4

    :goto_2
    if-ltz v2, :cond_3

    iget-object v1, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    aget v1, v1, v2

    move v5, v0

    :goto_3
    iget v6, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v5, v6, :cond_2

    iget-object v7, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    mul-int v8, v5, v6

    add-int/2addr v8, v2

    iget v9, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->filter:F

    mul-float/2addr v1, v9

    sub-float v9, v3, v9

    mul-int v10, v5, v6

    add-int/2addr v10, v2

    aget v10, v7, v10

    mul-float/2addr v9, v10

    add-float/2addr v1, v9

    aput v1, v7, v8

    mul-int/2addr v6, v5

    add-int/2addr v6, v2

    aget v1, v7, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_4
    iget v2, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    aget v2, v2, v1

    move v5, v0

    :goto_5
    iget v6, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v5, v6, :cond_4

    iget-object v7, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    mul-int v8, v5, v6

    add-int/2addr v8, v1

    iget v9, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->filter:F

    mul-float/2addr v2, v9

    sub-float v9, v3, v9

    mul-int v10, v5, v6

    add-int/2addr v10, v1

    aget v10, v7, v10

    mul-float/2addr v9, v10

    add-float/2addr v2, v9

    aput v2, v7, v8

    mul-int/2addr v6, v5

    add-int/2addr v6, v1

    aget v2, v7, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    sub-int/2addr v2, v4

    :goto_6
    if-ltz v2, :cond_7

    iget-object v1, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    aget v1, v1, v2

    move v4, v0

    :goto_7
    iget v5, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v4, v5, :cond_6

    iget-object v6, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    mul-int v7, v4, v5

    add-int/2addr v7, v2

    iget v8, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->filter:F

    mul-float/2addr v1, v8

    sub-float v8, v3, v8

    mul-int v9, v4, v5

    add-int/2addr v9, v2

    aget v9, v6, v9

    mul-float/2addr v8, v9

    add-float/2addr v1, v8

    aput v1, v6, v7

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    aget v1, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_7
    return-void
.end method

.method public findMinMaxHeights()[F
    .locals 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    move v3, v1

    move v4, v2

    :goto_0
    iget-object v5, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    array-length v6, v5

    if-ge v4, v6, :cond_2

    aget v5, v5, v4

    cmpl-float v6, v5, v3

    if-lez v6, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    cmpg-float v6, v5, v1

    if-gez v6, :cond_1

    move v1, v5

    :cond_1
    :goto_1
    add-int/2addr v4, v0

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v1, v4, v2

    aput v3, v4, v0

    return-object v4
.end method

.method public flatten(B)V
    .locals 9

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->findMinMaxHeights()[F

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->normalizeTerrain(F)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v4, v5, :cond_3

    move v5, v3

    :goto_1
    iget v6, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v5, v6, :cond_2

    iget-object v7, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    mul-int/2addr v6, v5

    add-int/2addr v6, v4

    aget v6, v7, v6

    move v8, v2

    move v7, v3

    :goto_2
    if-ge v7, p1, :cond_1

    mul-float/2addr v8, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    iget v7, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v4

    aput v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    aget p1, v1, v0

    aget v0, v1, v3

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->normalizeTerrain(F)V

    return-void
.end method

.method public getHeightMap()[F
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    return-object v0
.end method

.method public getInterpolatedHeight(FF)F
    .locals 6

    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->getScaledHeightAtPoint(II)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float v4, p1, v3

    iget v5, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4, v1}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->getScaledHeightAtPoint(II)F

    move-result v4

    int-to-float v5, v0

    sub-float/2addr p1, v5

    sub-float/2addr v4, v2

    mul-float/2addr v4, p1

    add-float/2addr v4, v2

    add-float/2addr v3, p2

    iget p1, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    int-to-float p1, p1

    cmpl-float p1, v3, p1

    if-ltz p1, :cond_1

    return v2

    :cond_1
    add-int/lit8 p1, v1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->getScaledHeightAtPoint(II)F

    move-result p1

    int-to-float v0, v1

    sub-float/2addr p2, v0

    sub-float/2addr p1, v2

    mul-float/2addr p1, p2

    add-float/2addr p1, v2

    add-float/2addr v4, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v4, p1

    return v4
.end method

.method public getScaledHeightAtPoint(II)F
    .locals 2

    iget-object v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    iget v1, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    mul-int/2addr p2, v1

    add-int/2addr p1, p2

    aget p1, v0, p1

    iget p2, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightScale:F

    mul-float/2addr p1, p2

    return p1
.end method

.method public getScaledHeightMap()[F
    .locals 4

    iget-object v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    array-length v0, v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget v3, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightScale:F

    aget v2, v2, v1

    mul-float/2addr v3, v2

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    return v0
.end method

.method public getTrueHeightAtPoint(II)F
    .locals 2

    iget-object v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    iget v1, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    mul-int/2addr p2, v1

    add-int/2addr p1, p2

    aget p1, v0, p1

    return p1
.end method

.method public normalizeTerrain(F)V
    .locals 8

    iget-object v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    move v2, v0

    move v3, v1

    :goto_0
    iget v4, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v3, v4, :cond_3

    move v4, v1

    :goto_1
    iget v5, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v4, v5, :cond_2

    iget-object v6, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    mul-int v7, v4, v5

    add-int/2addr v7, v3

    aget v7, v6, v7

    cmpl-float v7, v7, v0

    if-lez v7, :cond_0

    mul-int/2addr v5, v4

    add-int/2addr v5, v3

    aget v0, v6, v5

    goto :goto_2

    :cond_0
    mul-int v7, v4, v5

    add-int/2addr v7, v3

    aget v7, v6, v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_1

    mul-int/2addr v5, v4

    add-int/2addr v5, v3

    aget v2, v6, v5

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    cmpg-float v3, v0, v2

    if-gtz v3, :cond_4

    return-void

    :cond_4
    sub-float/2addr v0, v2

    move v3, v1

    :goto_3
    iget v4, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v3, v4, :cond_6

    move v4, v1

    :goto_4
    iget v5, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v4, v5, :cond_5

    iget-object v6, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    mul-int v7, v4, v5

    add-int/2addr v7, v3

    mul-int/2addr v5, v4

    add-int/2addr v5, v3

    aget v5, v6, v5

    sub-float/2addr v5, v2

    div-float/2addr v5, v0

    mul-float/2addr v5, p1

    aput v5, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public save(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v1

    :goto_0
    :try_start_2
    iget v4, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v0, v4, :cond_1

    move v4, v1

    :goto_1
    iget v5, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v4, v5, :cond_0

    iget-object v6, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    mul-int/2addr v5, v0

    add-int/2addr v5, v4

    aget v5, v6, v5

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    :goto_2
    move-object v0, v2

    goto/16 :goto_7

    :catch_0
    :goto_3
    move-object v0, v2

    goto :goto_5

    :catch_1
    :goto_4
    move-object v0, v2

    goto :goto_6

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    sget-object v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Saved terrain to {0}"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :catchall_1
    move-exception p1

    move-object v3, v0

    goto :goto_2

    :catch_2
    move-object v3, v0

    goto :goto_3

    :catch_3
    move-object v3, v0

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object v3, v0

    goto :goto_7

    :catch_4
    move-object v3, v0

    goto :goto_5

    :catch_5
    move-object v3, v0

    goto :goto_6

    :goto_5
    :try_start_3
    sget-object v2, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Error writing to file {0}"

    invoke-virtual {v2, v4, v5, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_3
    return v1

    :catchall_3
    move-exception p1

    goto :goto_7

    :goto_6
    :try_start_4
    sget-object v2, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Error opening file {0}"

    invoke-virtual {v2, v4, v5, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_5
    return v1

    :goto_7
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_7
    throw p1

    :cond_8
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Filename must not be null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHeightAtPoint(FII)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    iget v1, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    mul-int/2addr p3, v1

    add-int/2addr p2, p3

    aput p1, v0, p2

    return-void
.end method

.method public setHeightScale(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightScale:F

    return-void
.end method

.method public setMagnificationFilter(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    iput p1, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->filter:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "filter must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-lez p1, :cond_0

    iput p1, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "size must be greater than zero."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public smooth(F)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->smooth(FI)V

    return-void
.end method

.method public smooth(FI)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_8

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v2

    if-lez v3, :cond_0

    goto :goto_6

    :cond_0
    if-nez p2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move/from16 v3, p2

    :goto_0
    const/4 v4, 0x0

    move v5, v4

    .line 2
    :goto_1
    iget v6, v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v5, v6, :cond_8

    move v6, v4

    .line 3
    :goto_2
    iget v7, v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v6, v7, :cond_7

    neg-int v7, v3

    move v9, v1

    move v10, v4

    move v8, v7

    :goto_3
    if-gt v8, v3, :cond_6

    move v11, v7

    :goto_4
    if-gt v11, v3, :cond_5

    add-int v12, v5, v8

    if-ltz v12, :cond_4

    .line 4
    iget v13, v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-lt v12, v13, :cond_2

    goto :goto_5

    :cond_2
    add-int v14, v6, v11

    if-ltz v14, :cond_4

    if-lt v14, v13, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 5
    iget-object v15, v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    mul-int/2addr v14, v13

    add-int/2addr v12, v14

    aget v12, v15, v12

    add-float/2addr v9, v12

    :cond_4
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    int-to-float v7, v10

    div-float/2addr v9, v7

    sub-float v7, v2, p1

    .line 6
    iget-object v8, v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    iget v10, v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    mul-int v11, v6, v10

    add-int/2addr v11, v5

    mul-float v9, v9, p1

    mul-int/2addr v10, v6

    add-int/2addr v10, v5

    aget v10, v8, v10

    mul-float/2addr v10, v7

    add-float/2addr v9, v10

    aput v9, v8, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    :goto_6
    return-void
.end method

.method public unloadHeightMap()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    return-void
.end method
