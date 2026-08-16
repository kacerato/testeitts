.class public Lcom/jme3/audio/HighPassFilter;
.super Lcom/jme3/audio/Filter;
.source "SourceFile"


# instance fields
.field protected lowFreqVolume:F

.field protected volume:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/audio/Filter;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/jme3/audio/HighPassFilter;->volume:F

    .line 3
    iput v0, p0, Lcom/jme3/audio/HighPassFilter;->lowFreqVolume:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/jme3/audio/Filter;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    iput v0, p0, Lcom/jme3/audio/HighPassFilter;->volume:F

    .line 9
    iput v0, p0, Lcom/jme3/audio/HighPassFilter;->lowFreqVolume:F

    .line 10
    invoke-virtual {p0, p1}, Lcom/jme3/audio/HighPassFilter;->setVolume(F)V

    .line 11
    invoke-virtual {p0, p2}, Lcom/jme3/audio/HighPassFilter;->setLowFreqVolume(F)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/jme3/audio/Filter;-><init>(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    iput p1, p0, Lcom/jme3/audio/HighPassFilter;->volume:F

    .line 6
    iput p1, p0, Lcom/jme3/audio/HighPassFilter;->lowFreqVolume:F

    return-void
.end method


# virtual methods
.method public createDestructableClone()Lcom/jme3/util/NativeObject;
    .locals 2

    new-instance v0, Lcom/jme3/audio/HighPassFilter;

    iget v1, p0, Lcom/jme3/util/NativeObject;->id:I

    invoke-direct {v0, v1}, Lcom/jme3/audio/HighPassFilter;-><init>(I)V

    return-object v0
.end method

.method public getLowFreqVolume()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/HighPassFilter;->lowFreqVolume:F

    return v0
.end method

.method public getUniqueId()J
    .locals 4

    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide v2, 0x800000000L

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getVolume()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/HighPassFilter;->volume:F

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/audio/Filter;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "volume"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/audio/HighPassFilter;->volume:F

    const-string v0, "lf_volume"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/audio/HighPassFilter;->lowFreqVolume:F

    return-void
.end method

.method public setLowFreqVolume(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iput p1, p0, Lcom/jme3/audio/HighPassFilter;->lowFreqVolume:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/util/NativeObject;->updateNeeded:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Low freq volume must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVolume(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iput p1, p0, Lcom/jme3/audio/HighPassFilter;->volume:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/util/NativeObject;->updateNeeded:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Volume must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/audio/Filter;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/audio/HighPassFilter;->volume:F

    const-string v1, "volume"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/audio/HighPassFilter;->lowFreqVolume:F

    const-string v1, "lf_volume"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
