.class public abstract Lcom/jme3/terrain/noise/basis/Noise;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/terrain/noise/Basis;


# instance fields
.field protected modulators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/terrain/noise/modulator/Modulator;",
            ">;"
        }
    .end annotation
.end field

.field protected scale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/terrain/noise/basis/Noise;->modulators:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jme3/terrain/noise/basis/Noise;->scale:F

    return-void
.end method


# virtual methods
.method public addModulator(Lcom/jme3/terrain/noise/modulator/Modulator;)Lcom/jme3/terrain/noise/Basis;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/noise/basis/Noise;->modulators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getBuffer(FFFI)Ljava/nio/FloatBuffer;
    .locals 7

    mul-int v0, p4, p4

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p4, :cond_1

    move v3, v1

    :goto_1
    if-ge v3, p4, :cond_0

    int-to-float v4, v3

    add-float/2addr v4, p1

    int-to-float v5, p4

    div-float/2addr v4, v5

    int-to-float v6, v2

    add-float/2addr v6, p2

    div-float/2addr v6, v5

    invoke-virtual {p0, v4, v6, p3}, Lcom/jme3/terrain/noise/basis/Noise;->modulate(FFF)F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/noise/basis/Noise;->scale:F

    return v0
.end method

.method public modulate(FFF)F
    .locals 2

    invoke-interface {p0, p1, p2, p3}, Lcom/jme3/terrain/noise/Basis;->value(FFF)F

    move-result p1

    iget-object p2, p0, Lcom/jme3/terrain/noise/basis/Noise;->modulators:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jme3/terrain/noise/modulator/Modulator;

    instance-of v0, p3, Lcom/jme3/terrain/noise/modulator/NoiseModulator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-interface {p3, v0}, Lcom/jme3/terrain/noise/modulator/Modulator;->value([F)F

    move-result p1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public setScale(F)Lcom/jme3/terrain/noise/Basis;
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/noise/basis/Noise;->scale:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
