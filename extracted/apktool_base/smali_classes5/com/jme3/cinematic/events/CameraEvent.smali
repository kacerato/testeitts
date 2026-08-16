.class public Lcom/jme3/cinematic/events/CameraEvent;
.super Lcom/jme3/cinematic/events/AbstractCinematicEvent;
.source "SourceFile"


# instance fields
.field private cameraName:Ljava/lang/String;

.field private cinematic:Lcom/jme3/cinematic/Cinematic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/cinematic/Cinematic;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jme3/cinematic/events/CameraEvent;->cinematic:Lcom/jme3/cinematic/Cinematic;

    .line 4
    iput-object p2, p0, Lcom/jme3/cinematic/events/CameraEvent;->cameraName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public forceStop()V
    .locals 0

    return-void
.end method

.method public getCameraName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/events/CameraEvent;->cameraName:Ljava/lang/String;

    return-object v0
.end method

.method public getCinematic()Lcom/jme3/cinematic/Cinematic;
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/events/CameraEvent;->cinematic:Lcom/jme3/cinematic/Cinematic;

    return-object v0
.end method

.method public initEvent(Lcom/jme3/app/Application;Lcom/jme3/cinematic/Cinematic;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initEvent(Lcom/jme3/app/Application;Lcom/jme3/cinematic/Cinematic;)V

    iput-object p2, p0, Lcom/jme3/cinematic/events/CameraEvent;->cinematic:Lcom/jme3/cinematic/Cinematic;

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onPlay()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/cinematic/events/CameraEvent;->cinematic:Lcom/jme3/cinematic/Cinematic;

    iget-object v1, p0, Lcom/jme3/cinematic/events/CameraEvent;->cameraName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jme3/cinematic/Cinematic;->setActiveCamera(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onUpdate(F)V
    .locals 0

    return-void
.end method

.method public play()V
    .locals 0

    invoke-super {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->play()V

    invoke-virtual {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->stop()V

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "cameraName"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/cinematic/events/CameraEvent;->cameraName:Ljava/lang/String;

    return-void
.end method

.method public setCameraName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/cinematic/events/CameraEvent;->cameraName:Ljava/lang/String;

    return-void
.end method

.method public setCinematic(Lcom/jme3/cinematic/Cinematic;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/cinematic/events/CameraEvent;->cinematic:Lcom/jme3/cinematic/Cinematic;

    return-void
.end method

.method public setTime(F)V
    .locals 0

    invoke-virtual {p0}, Lcom/jme3/cinematic/events/CameraEvent;->play()V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/cinematic/events/CameraEvent;->cameraName:Ljava/lang/String;

    const-string v1, "cameraName"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
