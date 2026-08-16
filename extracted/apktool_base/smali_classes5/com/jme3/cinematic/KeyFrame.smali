.class public Lcom/jme3/cinematic/KeyFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;


# instance fields
.field cinematicEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/cinematic/events/CinematicEvent;",
            ">;"
        }
    .end annotation
.end field

.field private index:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/cinematic/KeyFrame;->cinematicEvents:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCinematicEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/cinematic/events/CinematicEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/cinematic/KeyFrame;->cinematicEvents:Ljava/util/List;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/jme3/cinematic/KeyFrame;->index:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/KeyFrame;->cinematicEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "cinematicEvents"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/cinematic/KeyFrame;->cinematicEvents:Ljava/util/List;

    const-string v0, "index"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/jme3/cinematic/KeyFrame;->index:I

    return-void
.end method

.method public setCinematicEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/cinematic/events/CinematicEvent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/cinematic/KeyFrame;->cinematicEvents:Ljava/util/List;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/cinematic/KeyFrame;->index:I

    return-void
.end method

.method public trigger()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/cinematic/events/CinematicEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/cinematic/KeyFrame;->cinematicEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/cinematic/events/CinematicEvent;

    invoke-interface {v1}, Lcom/jme3/cinematic/events/CinematicEvent;->play()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/cinematic/KeyFrame;->cinematicEvents:Ljava/util/List;

    return-object v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/cinematic/KeyFrame;->cinematicEvents:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "cinematicEvents"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget v0, p0, Lcom/jme3/cinematic/KeyFrame;->index:I

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method
