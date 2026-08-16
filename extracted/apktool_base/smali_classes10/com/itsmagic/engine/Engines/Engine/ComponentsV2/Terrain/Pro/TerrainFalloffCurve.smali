.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;
.super Ljava/lang/Object;
.source "TerrainFalloffCurve.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;
    }
.end annotation


# instance fields
.field private customP1:F

.field private customP2:F

.field private sharpness:F

.field private type:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->SMOOTH_STEP:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->type:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->sharpness:F

    .line 23
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->customP1:F

    .line 24
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->customP2:F

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->SMOOTH_STEP:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->type:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->sharpness:F

    .line 23
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->customP1:F

    .line 24
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->customP2:F

    .line 30
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->type:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;F)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->SMOOTH_STEP:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->type:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->sharpness:F

    .line 23
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->customP1:F

    .line 24
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->customP2:F

    .line 34
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->type:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    .line 35
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->sharpness:F

    .line 36
    return-void
.end method


# virtual methods
.method public evaluate(F)F
    .locals 7

    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_0

    return v0

    .line 45
    :cond_0
    cmpl-float v2, p1, v0

    if-ltz v2, :cond_1

    return v1

    .line 47
    :cond_1
    sub-float v2, v0, p1

    .line 49
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->type:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->ordinal()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x40400000    # 3.0f

    packed-switch v3, :pswitch_data_0

    .line 83
    return v2

    .line 77
    :pswitch_0
    nop

    .line 78
    mul-float v3, v2, v2

    .line 79
    mul-float v4, v3, v2

    .line 80
    mul-float v3, v3, v5

    mul-float v3, v3, p1

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->customP1:F

    mul-float v3, v3, v6

    add-float/2addr v4, v3

    mul-float v2, v2, v5

    mul-float v2, v2, p1

    mul-float v2, v2, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->customP2:F

    mul-float v2, v2, p1

    add-float/2addr v4, v2

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1

    .line 73
    :pswitch_1
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->sharpness:F

    div-float v2, v0, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 69
    :pswitch_2
    const v0, 0x3eb33333    # 0.35f

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->sharpness:F

    div-float/2addr v0, v1

    .line 70
    mul-float p1, p1, p1

    neg-float p1, p1

    mul-float v4, v4, v0

    mul-float v4, v4, v0

    div-float/2addr p1, v4

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    .line 65
    :pswitch_3
    neg-float p1, p1

    const/high16 v0, 0x40800000    # 4.0f

    mul-float p1, p1, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->sharpness:F

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    .line 60
    :pswitch_4
    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    double-to-float p1, v0

    .line 61
    float-to-double v0, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->sharpness:F

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    .line 55
    :pswitch_5
    mul-float p1, v2, v2

    mul-float v2, v2, v4

    sub-float/2addr v5, v2

    mul-float p1, p1, v5

    .line 56
    float-to-double v0, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->sharpness:F

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    .line 51
    :pswitch_6
    float-to-double v0, v2

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->sharpness:F

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCustomP1()F
    .locals 1

    .line 104
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->customP1:F

    return v0
.end method

.method public getCustomP2()F
    .locals 1

    .line 112
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->customP2:F

    return v0
.end method

.method public getSharpness()F
    .locals 1

    .line 96
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->sharpness:F

    return v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->type:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    return-object v0
.end method

.method public setCustomP1(F)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->customP1:F

    .line 109
    return-void
.end method

.method public setCustomP2(F)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->customP2:F

    .line 117
    return-void
.end method

.method public setSharpness(F)V
    .locals 1

    .line 100
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->sharpness:F

    .line 101
    return-void
.end method

.method public setType(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->type:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    .line 93
    return-void
.end method
