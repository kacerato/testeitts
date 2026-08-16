.class public abstract Lif/B;
.super Lif/z;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/logging/Logger;

.field public static final synthetic d:Z


# instance fields
.field public b:Lcom/jme3/scene/Spatial;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lif/B;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lif/B;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lif/z;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lif/B;->b:Lcom/jme3/scene/Spatial;

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/jme3/scene/control/AbstractControl;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public b()Lif/B;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lif/B;

    return-object v0
.end method

.method public c()Lcom/jme3/scene/Spatial;
    .locals 1

    iget-object v0, p0, Lif/B;->b:Lcom/jme3/scene/Spatial;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lif/B;->b()Lif/B;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/control/AbstractControl;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lif/B;->b:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    iput-object p1, p0, Lif/B;->b:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public cloneForSpatial(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/control/Control;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final d(Lcom/jme3/scene/Spatial;)V
    .locals 0

    iput-object p1, p0, Lif/B;->b:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "subtree"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    iput-object p1, p0, Lif/B;->b:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    check-cast v0, Lcom/jme3/scene/Node;

    iget-boolean v1, p0, Lcom/jme3/scene/control/AbstractControl;->enabled:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lif/B;->b:Lcom/jme3/scene/Spatial;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    goto :goto_0

    :cond_0
    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    iget-object v1, p0, Lif/B;->b:Lcom/jme3/scene/Spatial;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "subtree should be initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "control should be added to a node"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->setEnabled(Z)V

    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 2

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Controlled spatial must be a Node or null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lif/B;->b:Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lif/B;->b:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->removeFromParent()Z

    iget-boolean v0, p0, Lcom/jme3/scene/control/AbstractControl;->enabled:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/jme3/scene/Node;

    iget-object v1, p0, Lif/B;->b:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    :cond_2
    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->setSpatial(Lcom/jme3/scene/Spatial;)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lif/B;->b:Lcom/jme3/scene/Spatial;

    const-string v1, "subtree"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
