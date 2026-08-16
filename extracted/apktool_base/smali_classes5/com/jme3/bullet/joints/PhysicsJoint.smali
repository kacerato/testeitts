.class public abstract Lcom/jme3/bullet/joints/PhysicsJoint;
.super Lcom/jme3/bullet/NativePhysicsObject;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger:Ljava/util/logging/Logger;

.field private static final tagNodeA:Ljava/lang/String; = "nodeA"

.field private static final tagNodeB:Ljava/lang/String; = "nodeB"


# instance fields
.field private bodyA:Lcom/jme3/bullet/objects/PhysicsBody;

.field private bodyB:Lcom/jme3/bullet/objects/PhysicsBody;

.field private space:Lcom/jme3/bullet/PhysicsSpace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/joints/PhysicsJoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/joints/PhysicsJoint;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyA:Lcom/jme3/bullet/objects/PhysicsBody;

    iput-object v0, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyB:Lcom/jme3/bullet/objects/PhysicsBody;

    iput-object v0, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->space:Lcom/jme3/bullet/PhysicsSpace;

    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lcom/jme3/bullet/joints/PhysicsJoint;

    iget-object v0, p2, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyA:Lcom/jme3/bullet/objects/PhysicsBody;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/objects/PhysicsBody;

    iput-object v1, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyA:Lcom/jme3/bullet/objects/PhysicsBody;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyA:Lcom/jme3/bullet/objects/PhysicsBody;

    invoke-virtual {v1, p1, v0}, Lcom/jme3/bullet/objects/PhysicsBody;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    :cond_0
    iget-object p2, p2, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyB:Lcom/jme3/bullet/objects/PhysicsBody;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/PhysicsBody;

    iput-object v0, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyB:Lcom/jme3/bullet/objects/PhysicsBody;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyB:Lcom/jme3/bullet/objects/PhysicsBody;

    invoke-virtual {v0, p1, p2}, Lcom/jme3/bullet/objects/PhysicsBody;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->space:Lcom/jme3/bullet/PhysicsSpace;

    return-void
.end method

.method public countEnds()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyA:Lcom/jme3/bullet/objects/PhysicsBody;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyB:Lcom/jme3/bullet/objects/PhysicsBody;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyA:Lcom/jme3/bullet/objects/PhysicsBody;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/jme3/bullet/objects/PhysicsBody;->removeJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyB:Lcom/jme3/bullet/objects/PhysicsBody;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/jme3/bullet/objects/PhysicsBody;->removeJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    :cond_1
    return-void
.end method

.method public findEnd(Lcom/jme3/bullet/objects/PhysicsBody;)Lcom/jme3/bullet/joints/JointEnd;
    .locals 1

    const-string v0, "body"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyA:Lcom/jme3/bullet/objects/PhysicsBody;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/jme3/bullet/joints/JointEnd;->A:Lcom/jme3/bullet/joints/JointEnd;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyB:Lcom/jme3/bullet/objects/PhysicsBody;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/jme3/bullet/joints/JointEnd;->B:Lcom/jme3/bullet/joints/JointEnd;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findOtherBody(Lcom/jme3/bullet/objects/PhysicsBody;)Lcom/jme3/bullet/objects/PhysicsBody;
    .locals 2

    const-string v0, "body"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyA:Lcom/jme3/bullet/objects/PhysicsBody;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyB:Lcom/jme3/bullet/objects/PhysicsBody;

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyB:Lcom/jme3/bullet/objects/PhysicsBody;

    if-ne p1, v1, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBody(Lcom/jme3/bullet/joints/JointEnd;)Lcom/jme3/bullet/objects/PhysicsBody;
    .locals 3

    const-string v0, "end"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    sget-object v0, Lcom/jme3/bullet/joints/PhysicsJoint$1;->$SwitchMap$com$jme3$bullet$joints$JointEnd:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyB:Lcom/jme3/bullet/objects/PhysicsBody;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object p1, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyA:Lcom/jme3/bullet/objects/PhysicsBody;

    return-object p1
.end method

.method public getBodyA()Lcom/jme3/bullet/objects/PhysicsBody;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyA:Lcom/jme3/bullet/objects/PhysicsBody;

    return-object v0
.end method

.method public getBodyB()Lcom/jme3/bullet/objects/PhysicsBody;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyB:Lcom/jme3/bullet/objects/PhysicsBody;

    return-object v0
.end method

.method public getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->space:Lcom/jme3/bullet/PhysicsSpace;

    return-object v0
.end method

.method public abstract isEnabled()Z
.end method

.method public jmeClone()Lcom/jme3/bullet/joints/PhysicsJoint;
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/joints/PhysicsJoint;

    .line 3
    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->unassignNativeObject()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/PhysicsJoint;->jmeClone()Lcom/jme3/bullet/joints/PhysicsJoint;

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

    const-string v0, "nodeA"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/PhysicsBody;

    iput-object v0, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyA:Lcom/jme3/bullet/objects/PhysicsBody;

    const-string v0, "nodeB"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/PhysicsBody;

    iput-object p1, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyB:Lcom/jme3/bullet/objects/PhysicsBody;

    return-void
.end method

.method public final setBodyA(Lcom/jme3/bullet/objects/PhysicsBody;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyA:Lcom/jme3/bullet/objects/PhysicsBody;

    return-void
.end method

.method public final setBodyB(Lcom/jme3/bullet/objects/PhysicsBody;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyB:Lcom/jme3/bullet/objects/PhysicsBody;

    return-void
.end method

.method public setNativeId(J)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    sget-object p1, Lcom/jme3/bullet/joints/PhysicsJoint;->logger:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v0, "Created {0}."

    invoke-virtual {p1, p2, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPhysicsSpace(Lcom/jme3/bullet/PhysicsSpace;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->space:Lcom/jme3/bullet/PhysicsSpace;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Joint"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Physics"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Point"

    const-string v2, "P"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Six"

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#unassigned"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
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

    iget-object v0, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyA:Lcom/jme3/bullet/objects/PhysicsBody;

    const-string v1, "nodeA"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/joints/PhysicsJoint;->bodyB:Lcom/jme3/bullet/objects/PhysicsBody;

    const-string v1, "nodeB"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
