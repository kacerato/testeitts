.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;
.super Ljava/lang/Object;
.source "TerrainHoleMask.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private holeBitmask:[B

.field private maskResolution:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;-><init>(I)V

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0x200

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;->maskResolution:I

    .line 19
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;->maskResolution:I

    .line 20
    mul-int p1, p1, p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;->holeBitmask:[B

    .line 21
    return-void
.end method


# virtual methods
.method public clearHoles()V
    .locals 3

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;->holeBitmask:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;->holeBitmask:[B

    aput-byte v0, v2, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public getRawBitmask()[B
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;->holeBitmask:[B

    return-object v0
.end method

.method public getResolution()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;->maskResolution:I

    return v0
.end method

.method public isHole(II)Z
    .locals 3

    .line 27
    const/4 v0, 0x0

    if-ltz p1, :cond_2

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;->maskResolution:I

    if-ge p1, v1, :cond_2

    if-ltz p2, :cond_2

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;->maskResolution:I

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;->holeBitmask:[B

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;->maskResolution:I

    mul-int p2, p2, v2

    add-int/2addr p2, p1

    aget-byte p1, v1, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 27
    :cond_2
    :goto_0
    return v0
.end method

.method public paintHole(FFFZ)V
    .locals 7

    .line 39
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;->maskResolution:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 40
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;->maskResolution:I

    int-to-float v0, v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 41
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;->maskResolution:I

    int-to-float v0, v0

    mul-float p3, p3, v0

    float-to-int p3, p3

    const/4 v0, 0x1

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 42
    mul-int v1, p3, p3

    .line 44
    int-to-byte p4, p4

    .line 46
    sub-int v2, p1, p3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 47
    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;->maskResolution:I

    sub-int/2addr v4, v0

    add-int v5, p1, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 48
    sub-int v5, p2, p3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 49
    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;->maskResolution:I

    sub-int/2addr v5, v0

    add-int/2addr p3, p2

    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 51
    nop

    :goto_0
    if-gt v3, p3, :cond_2

    .line 52
    move v0, v2

    :goto_1
    if-gt v0, v4, :cond_1

    .line 53
    sub-int v5, v0, p1

    .line 54
    sub-int v6, v3, p2

    .line 55
    mul-int v5, v5, v5

    mul-int v6, v6, v6

    add-int/2addr v5, v6

    if-gt v5, v1, :cond_0

    .line 56
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;->holeBitmask:[B

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;->maskResolution:I

    mul-int v6, v6, v3

    add-int/2addr v6, v0

    aput-byte p4, v5, v6

    .line 52
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_2
    return-void
.end method
