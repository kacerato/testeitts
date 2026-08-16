.class public abstract Lcom/jme3/scene/control/AbstractControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/scene/control/Control;
.implements Lcom/jme3/util/clone/JmeCloneable;


# instance fields
.field protected enabled:Z

.field protected spatial:Lcom/jme3/scene/Spatial;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/scene/control/AbstractControl;->enabled:Z

    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    iput-object p1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public cloneForSpatial(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/control/Control;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract controlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
.end method

.method public abstract controlUpdate(F)V
.end method

.method public getSpatial()Lcom/jme3/scene/Spatial;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/scene/control/AbstractControl;->enabled:Z

    return v0
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t clone control for spatial"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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

    const-string v0, "enabled"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/scene/control/AbstractControl;->enabled:Z

    const-string v0, "spatial"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    iput-object p1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/scene/control/AbstractControl;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/jme3/scene/control/AbstractControl;->controlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/scene/control/AbstractControl;->enabled:Z

    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This control has already been added to a Spatial"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public update(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/scene/control/AbstractControl;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->controlUpdate(F)V

    return-void
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

    iget-boolean v0, p0, Lcom/jme3/scene/control/AbstractControl;->enabled:Z

    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    const-string v1, "spatial"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
