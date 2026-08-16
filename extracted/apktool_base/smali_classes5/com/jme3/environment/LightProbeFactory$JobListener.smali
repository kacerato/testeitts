.class Lcom/jme3/environment/LightProbeFactory$JobListener;
.super Lcom/jme3/environment/generation/JobProgressAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/environment/LightProbeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JobListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/environment/generation/JobProgressAdapter<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field globalListener:Lcom/jme3/environment/generation/JobProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/environment/generation/JobProgressListener<",
            "Lcom/jme3/light/LightProbe;",
            ">;"
        }
    .end annotation
.end field

.field index:I

.field jobState:Lcom/jme3/environment/LightProbeFactory$JobState;

.field probe:Lcom/jme3/light/LightProbe;


# direct methods
.method public constructor <init>(Lcom/jme3/environment/generation/JobProgressListener;Lcom/jme3/environment/LightProbeFactory$JobState;Lcom/jme3/light/LightProbe;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/environment/generation/JobProgressListener<",
            "Lcom/jme3/light/LightProbe;",
            ">;",
            "Lcom/jme3/environment/LightProbeFactory$JobState;",
            "Lcom/jme3/light/LightProbe;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/jme3/environment/generation/JobProgressAdapter;-><init>()V

    iput-object p1, p0, Lcom/jme3/environment/LightProbeFactory$JobListener;->globalListener:Lcom/jme3/environment/generation/JobProgressListener;

    iput-object p2, p0, Lcom/jme3/environment/LightProbeFactory$JobListener;->jobState:Lcom/jme3/environment/LightProbeFactory$JobState;

    iput-object p3, p0, Lcom/jme3/environment/LightProbeFactory$JobListener;->probe:Lcom/jme3/light/LightProbe;

    iput p4, p0, Lcom/jme3/environment/LightProbeFactory$JobListener;->index:I

    return-void
.end method


# virtual methods
.method public done(Ljava/lang/Integer;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/jme3/environment/LightProbeFactory$JobListener;->globalListener:Lcom/jme3/environment/generation/JobProgressListener;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/jme3/environment/LightProbeFactory$JobListener;->globalListener:Lcom/jme3/environment/generation/JobProgressListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prefiltered env map face "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " generated"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/jme3/environment/generation/JobProgressListener;->step(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/jme3/environment/LightProbeFactory$JobListener;->globalListener:Lcom/jme3/environment/generation/JobProgressListener;

    const-string v0, "Irradiance map generated"

    invoke-interface {p1, v0}, Lcom/jme3/environment/generation/JobProgressListener;->step(Ljava/lang/String;)V

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/jme3/environment/LightProbeFactory$JobListener;->jobState:Lcom/jme3/environment/LightProbeFactory$JobState;

    iget-object v0, p1, Lcom/jme3/environment/LightProbeFactory$JobState;->done:[Z

    iget v1, p0, Lcom/jme3/environment/LightProbeFactory$JobListener;->index:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 7
    invoke-virtual {p1}, Lcom/jme3/environment/LightProbeFactory$JobState;->isDone()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/jme3/environment/LightProbeFactory$JobListener;->probe:Lcom/jme3/light/LightProbe;

    invoke-virtual {p1}, Lcom/jme3/light/LightProbe;->getPrefilteredEnvMap()Lcom/jme3/texture/TextureCubeMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/jme3/light/LightProbe;->setNbMipMaps(I)V

    .line 9
    iget-object p1, p0, Lcom/jme3/environment/LightProbeFactory$JobListener;->probe:Lcom/jme3/light/LightProbe;

    invoke-virtual {p1, v2}, Lcom/jme3/light/LightProbe;->setReady(Z)V

    .line 10
    iget-object p1, p0, Lcom/jme3/environment/LightProbeFactory$JobListener;->globalListener:Lcom/jme3/environment/generation/JobProgressListener;

    if-eqz p1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/jme3/environment/LightProbeFactory$JobListener;->probe:Lcom/jme3/light/LightProbe;

    invoke-interface {p1, v0}, Lcom/jme3/environment/generation/JobProgressListener;->done(Ljava/lang/Object;)V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/jme3/environment/LightProbeFactory$JobListener;->jobState:Lcom/jme3/environment/LightProbeFactory$JobState;

    iget-object p1, p1, Lcom/jme3/environment/LightProbeFactory$JobState;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    :cond_3
    return-void
.end method

.method public bridge synthetic done(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jme3/environment/LightProbeFactory$JobListener;->done(Ljava/lang/Integer;)V

    return-void
.end method

.method public progress(D)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/environment/LightProbeFactory$JobListener;->jobState:Lcom/jme3/environment/LightProbeFactory$JobState;

    iget-object v1, v0, Lcom/jme3/environment/LightProbeFactory$JobState;->progress:[D

    iget v2, p0, Lcom/jme3/environment/LightProbeFactory$JobListener;->index:I

    aput-wide p1, v1, v2

    iget-object p1, p0, Lcom/jme3/environment/LightProbeFactory$JobListener;->globalListener:Lcom/jme3/environment/generation/JobProgressListener;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/jme3/environment/LightProbeFactory$JobState;->getProgress()F

    move-result p2

    float-to-double v0, p2

    invoke-interface {p1, v0, v1}, Lcom/jme3/environment/generation/JobProgressListener;->progress(D)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/environment/LightProbeFactory$JobListener;->globalListener:Lcom/jme3/environment/generation/JobProgressListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/environment/LightProbeFactory$JobListener;->jobState:Lcom/jme3/environment/LightProbeFactory$JobState;

    iget-boolean v2, v1, Lcom/jme3/environment/LightProbeFactory$JobState;->started:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/jme3/environment/LightProbeFactory$JobState;->started:Z

    invoke-interface {v0}, Lcom/jme3/environment/generation/JobProgressListener;->start()V

    :cond_0
    return-void
.end method
