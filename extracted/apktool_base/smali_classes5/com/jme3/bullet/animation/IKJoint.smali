.class public Lcom/jme3/bullet/animation/IKJoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# static fields
.field public static final logger:Ljava/util/logging/Logger;

.field private static final tagConstraint:Ljava/lang/String; = "joint"

.field private static final tagDisableForRagdoll:Ljava/lang/String; = "disableForRagdoll"


# instance fields
.field private constraint:Lcom/jme3/bullet/joints/Constraint;

.field private disableForRagdoll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/animation/IKJoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/animation/IKJoint;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/joints/Constraint;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "constraint"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 4
    iput-object p1, p0, Lcom/jme3/bullet/animation/IKJoint;->constraint:Lcom/jme3/bullet/joints/Constraint;

    .line 5
    iput-boolean p2, p0, Lcom/jme3/bullet/animation/IKJoint;->disableForRagdoll:Z

    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/bullet/animation/IKJoint;->constraint:Lcom/jme3/bullet/joints/Constraint;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/joints/Constraint;

    iput-object p1, p0, Lcom/jme3/bullet/animation/IKJoint;->constraint:Lcom/jme3/bullet/joints/Constraint;

    return-void
.end method

.method public getPhysicsJoint()Lcom/jme3/bullet/joints/Constraint;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/IKJoint;->constraint:Lcom/jme3/bullet/joints/Constraint;

    return-object v0
.end method

.method public isDisableForRagdoll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/animation/IKJoint;->disableForRagdoll:Z

    return v0
.end method

.method public jmeClone()Lcom/jme3/bullet/animation/IKJoint;
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/animation/IKJoint;
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
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/IKJoint;->jmeClone()Lcom/jme3/bullet/animation/IKJoint;

    move-result-object v0

    return-object v0
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

    const-string v0, "disableForRagdoll"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/animation/IKJoint;->disableForRagdoll:Z

    const-string v0, "joint"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/joints/Constraint;

    iput-object p1, p0, Lcom/jme3/bullet/animation/IKJoint;->constraint:Lcom/jme3/bullet/joints/Constraint;

    return-void
.end method

.method public setDisableForRagdoll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/bullet/animation/IKJoint;->disableForRagdoll:Z

    return-void
.end method

.method public setRagdollMode()V
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/bullet/animation/IKJoint;->disableForRagdoll:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/animation/IKJoint;->constraint:Lcom/jme3/bullet/joints/Constraint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/joints/Constraint;->setEnabled(Z)V

    :cond_0
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

    iget-boolean v0, p0, Lcom/jme3/bullet/animation/IKJoint;->disableForRagdoll:Z

    const-string v1, "disableForRagdoll"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/IKJoint;->constraint:Lcom/jme3/bullet/joints/Constraint;

    const-string v1, "joint"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
