.class public Lcom/jme3/bullet/animation/PreComposer;
.super Lcom/jme3/scene/control/AbstractControl;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger:Ljava/util/logging/Logger;

.field private static final tagDac:Ljava/lang/String; = "dac"

.field private static final tagHaveSaved:Ljava/lang/String; = "haveSaved"

.field private static final tagSavedTransforms:Ljava/lang/String; = "savedTransforms"


# instance fields
.field private dac:Lcom/jme3/bullet/animation/DacLinks;

.field private haveSaved:Z

.field private savedTransforms:[Lcom/jme3/math/Transform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/animation/PreComposer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/animation/PreComposer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jme3/bullet/animation/PreComposer;->haveSaved:Z

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/animation/DacLinks;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/jme3/bullet/animation/PreComposer;->haveSaved:Z

    .line 5
    const-string v0, "dac"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 6
    iput-object p1, p0, Lcom/jme3/bullet/animation/PreComposer;->dac:Lcom/jme3/bullet/animation/DacLinks;

    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/control/AbstractControl;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/bullet/animation/PreComposer;->dac:Lcom/jme3/bullet/animation/DacLinks;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/bullet/animation/DacLinks;

    iput-object p2, p0, Lcom/jme3/bullet/animation/PreComposer;->dac:Lcom/jme3/bullet/animation/DacLinks;

    iget-object p2, p0, Lcom/jme3/bullet/animation/PreComposer;->savedTransforms:[Lcom/jme3/math/Transform;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/jme3/math/Transform;

    iput-object p1, p0, Lcom/jme3/bullet/animation/PreComposer;->savedTransforms:[Lcom/jme3/math/Transform;

    return-void
.end method

.method public controlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    return-void
.end method

.method public controlUpdate(F)V
    .locals 5

    iget-boolean p1, p0, Lcom/jme3/bullet/animation/PreComposer;->haveSaved:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/jme3/bullet/animation/PreComposer;->dac:Lcom/jme3/bullet/animation/DacLinks;

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/DacLinks;->getArmature()Lcom/jme3/anim/Armature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/anim/Armature;->getJointCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lcom/jme3/anim/Armature;->getJoint(I)Lcom/jme3/anim/Joint;

    move-result-object v3

    iget-object v4, p0, Lcom/jme3/bullet/animation/PreComposer;->savedTransforms:[Lcom/jme3/math/Transform;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/jme3/anim/Joint;->setLocalTransform(Lcom/jme3/math/Transform;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/jme3/bullet/animation/PreComposer;->haveSaved:Z

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

    const-string v0, "haveSaved"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/animation/PreComposer;->haveSaved:Z

    const-string v0, "dac"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/animation/DacLinks;

    iput-object v0, p0, Lcom/jme3/bullet/animation/PreComposer;->dac:Lcom/jme3/bullet/animation/DacLinks;

    const-string v0, "savedTransforms"

    invoke-static {p1, v0}, Lcom/jme3/bullet/animation/RagUtils;->readTransformArray(Lcom/jme3/export/InputCapsule;Ljava/lang/String;)[Lcom/jme3/math/Transform;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/animation/PreComposer;->savedTransforms:[Lcom/jme3/math/Transform;

    return-void
.end method

.method public saveArmature()V
    .locals 6

    iget-object v0, p0, Lcom/jme3/bullet/animation/PreComposer;->dac:Lcom/jme3/bullet/animation/DacLinks;

    invoke-virtual {v0}, Lcom/jme3/bullet/animation/DacLinks;->getArmature()Lcom/jme3/anim/Armature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/anim/Armature;->getJointCount()I

    move-result v1

    iget-object v2, p0, Lcom/jme3/bullet/animation/PreComposer;->savedTransforms:[Lcom/jme3/math/Transform;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-array v2, v1, [Lcom/jme3/math/Transform;

    iput-object v2, p0, Lcom/jme3/bullet/animation/PreComposer;->savedTransforms:[Lcom/jme3/math/Transform;

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v4, p0, Lcom/jme3/bullet/animation/PreComposer;->savedTransforms:[Lcom/jme3/math/Transform;

    new-instance v5, Lcom/jme3/math/Transform;

    invoke-direct {v5}, Lcom/jme3/math/Transform;-><init>()V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/jme3/anim/Armature;->getJoint(I)Lcom/jme3/anim/Joint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/anim/Joint;->getLocalTransform()Lcom/jme3/math/Transform;

    move-result-object v2

    iget-object v4, p0, Lcom/jme3/bullet/animation/PreComposer;->savedTransforms:[Lcom/jme3/math/Transform;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/bullet/animation/PreComposer;->haveSaved:Z

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

    iget-boolean v0, p0, Lcom/jme3/bullet/animation/PreComposer;->haveSaved:Z

    const-string v1, "haveSaved"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/PreComposer;->dac:Lcom/jme3/bullet/animation/DacLinks;

    const-string v1, "dac"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/PreComposer;->savedTransforms:[Lcom/jme3/math/Transform;

    const-string v1, "savedTransforms"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    return-void
.end method
