.class public Lcom/jme3/scene/LightNode;
.super Lcom/jme3/scene/Node;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private lightControl:Lcom/jme3/scene/control/LightControl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Node;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/jme3/light/Light;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/jme3/scene/control/LightControl;

    invoke-direct {v0, p2}, Lcom/jme3/scene/control/LightControl;-><init>(Lcom/jme3/light/Light;)V

    invoke-direct {p0, p1, v0}, Lcom/jme3/scene/LightNode;-><init>(Ljava/lang/String;Lcom/jme3/scene/control/LightControl;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/jme3/scene/control/LightControl;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    .line 5
    iput-object p2, p0, Lcom/jme3/scene/LightNode;->lightControl:Lcom/jme3/scene/control/LightControl;

    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/Node;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/scene/LightNode;->lightControl:Lcom/jme3/scene/control/LightControl;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/control/LightControl;

    iput-object p1, p0, Lcom/jme3/scene/LightNode;->lightControl:Lcom/jme3/scene/control/LightControl;

    return-void
.end method

.method public getControlDir()Lcom/jme3/scene/control/LightControl$ControlDirection;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/LightNode;->lightControl:Lcom/jme3/scene/control/LightControl;

    invoke-virtual {v0}, Lcom/jme3/scene/control/LightControl;->getControlDir()Lcom/jme3/scene/control/LightControl$ControlDirection;

    move-result-object v0

    return-object v0
.end method

.method public getLight()Lcom/jme3/light/Light;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/LightNode;->lightControl:Lcom/jme3/scene/control/LightControl;

    invoke-virtual {v0}, Lcom/jme3/scene/control/LightControl;->getLight()Lcom/jme3/light/Light;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/LightNode;->lightControl:Lcom/jme3/scene/control/LightControl;

    invoke-virtual {v0}, Lcom/jme3/scene/control/AbstractControl;->isEnabled()Z

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

    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "lightControl"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/control/LightControl;

    iput-object p1, p0, Lcom/jme3/scene/LightNode;->lightControl:Lcom/jme3/scene/control/LightControl;

    return-void
.end method

.method public setControlDir(Lcom/jme3/scene/control/LightControl$ControlDirection;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/LightNode;->lightControl:Lcom/jme3/scene/control/LightControl;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/control/LightControl;->setControlDir(Lcom/jme3/scene/control/LightControl$ControlDirection;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/LightNode;->lightControl:Lcom/jme3/scene/control/LightControl;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/control/AbstractControl;->setEnabled(Z)V

    return-void
.end method

.method public setLight(Lcom/jme3/light/Light;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/LightNode;->lightControl:Lcom/jme3/scene/control/LightControl;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/control/LightControl;->setLight(Lcom/jme3/light/Light;)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/scene/LightNode;->lightControl:Lcom/jme3/scene/control/LightControl;

    const-string v1, "lightControl"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
