.class public abstract Lcom/jme3/bullet/animation/IKController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger:Ljava/util/logging/Logger;

.field private static final tagControlledLink:Ljava/lang/String; = "controlledLink"

.field private static final tagIsEnabled:Ljava/lang/String; = "isEnabled"


# instance fields
.field private controlledLink:Lcom/jme3/bullet/animation/PhysicsLink;

.field private isEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/animation/IKController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/animation/IKController;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/animation/PhysicsLink;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/jme3/bullet/animation/IKController;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->boneName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 5
    const-string v3, "Creating controller for bone {0}."

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/jme3/bullet/animation/IKController;->controlledLink:Lcom/jme3/bullet/animation/PhysicsLink;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/jme3/bullet/animation/IKController;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/bullet/animation/IKController;->controlledLink:Lcom/jme3/bullet/animation/PhysicsLink;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/animation/PhysicsLink;

    iput-object p1, p0, Lcom/jme3/bullet/animation/IKController;->controlledLink:Lcom/jme3/bullet/animation/PhysicsLink;

    return-void
.end method

.method public getLink()Lcom/jme3/bullet/animation/PhysicsLink;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/IKController;->controlledLink:Lcom/jme3/bullet/animation/PhysicsLink;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/animation/IKController;->isEnabled:Z

    return v0
.end method

.method public jmeClone()Lcom/jme3/bullet/animation/IKController;
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/animation/IKController;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/IKController;->jmeClone()Lcom/jme3/bullet/animation/IKController;

    move-result-object v0

    return-object v0
.end method

.method public abstract preTick(F)V
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

    const-string v0, "isEnabled"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/animation/IKController;->isEnabled:Z

    const-string v0, "controlledLink"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/animation/PhysicsLink;

    iput-object p1, p0, Lcom/jme3/bullet/animation/IKController;->controlledLink:Lcom/jme3/bullet/animation/PhysicsLink;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/bullet/animation/IKController;->isEnabled:Z

    return-void
.end method

.method public setRagdollMode()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/bullet/animation/IKController;->isEnabled:Z

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

    iget-boolean v0, p0, Lcom/jme3/bullet/animation/IKController;->isEnabled:Z

    const-string v1, "isEnabled"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/IKController;->controlledLink:Lcom/jme3/bullet/animation/PhysicsLink;

    const-string v1, "controlledLink"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
