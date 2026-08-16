.class public final Lmf/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final synthetic b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmf/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lmf/h;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/jme3/scene/control/Control;)Z
    .locals 2

    instance-of v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/jme3/bullet/control/GhostControl;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/jme3/bullet/control/VehicleControl;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    instance-of p0, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    return v1
.end method

.method public static b(Lcom/jme3/scene/control/Control;)Z
    .locals 1

    invoke-static {p0}, Lif/n;->a(Lcom/jme3/scene/control/Control;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/jme3/bullet/control/PhysicsControl;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static c(Lcom/jme3/scene/control/Control;)Ljava/lang/String;
    .locals 6

    instance-of v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;

    const-string v1, "applyLocal]"

    const-string v2, "applyScale,"

    const/16 v3, 0x5b

    const/16 v4, 0x3c

    const-string v5, "NOT"

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0}, Lif/n;->c(Lcom/jme3/scene/control/Control;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lcom/jme3/bullet/control/RigidBodyControl;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lmf/i;->a(Lcom/jme3/bullet/objects/PhysicsRigidBody;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->isInWorld()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v3, "inWorld,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->isActive()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v3, "active,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/bullet/control/RigidBodyControl;->isApplyScale()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/bullet/control/RigidBodyControl;->isApplyPhysicsLocal()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0}, Lif/n;->c(Lcom/jme3/scene/control/Control;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lcom/jme3/bullet/animation/DynamicAnimControl;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacConfiguration;->countLinks()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lcom/jme3/bullet/control/GhostControl;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0}, Lif/n;->c(Lcom/jme3/scene/control/Control;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lcom/jme3/bullet/control/GhostControl;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/bullet/control/GhostControl;->isApplyScale()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/bullet/control/GhostControl;->isApplyPhysicsLocal()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_8
    invoke-static {p0}, Lif/n;->b(Lcom/jme3/scene/control/Control;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static d(Lcom/jme3/scene/Spatial;)V
    .locals 5

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getNumControls()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Spatial;->getControl(I)Lcom/jme3/scene/control/Control;

    move-result-object v3

    instance-of v4, v3, Lcom/jme3/bullet/control/PhysicsControl;

    if-eqz v4, :cond_0

    invoke-static {v3, v1}, Lmf/h;->m(Lcom/jme3/scene/control/Control;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0}, Lmf/h;->d(Lcom/jme3/scene/Spatial;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static e(Lcom/jme3/scene/Spatial;Lcom/jme3/bullet/PhysicsSpace;)V
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getNumControls()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Spatial;->getControl(I)Lcom/jme3/scene/control/Control;

    move-result-object v2

    instance-of v3, v2, Lcom/jme3/bullet/control/PhysicsControl;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/jme3/bullet/control/PhysicsControl;

    invoke-interface {v2, p1}, Lcom/jme3/bullet/control/PhysicsControl;->setPhysicsSpace(Lcom/jme3/bullet/PhysicsSpace;)V

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/jme3/bullet/control/PhysicsControl;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0, p1}, Lmf/h;->e(Lcom/jme3/scene/Spatial;Lcom/jme3/bullet/PhysicsSpace;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static f(Lcom/jme3/scene/Spatial;)Lcom/jme3/bullet/control/RigidBodyControl;
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getNumControls()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Spatial;->getControl(I)Lcom/jme3/scene/control/Control;

    move-result-object v2

    instance-of v3, v2, Lcom/jme3/bullet/control/RigidBodyControl;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/jme3/bullet/control/RigidBodyControl;

    invoke-virtual {v2}, Lcom/jme3/bullet/control/RigidBodyControl;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public static g(Lcom/jme3/scene/control/Control;)Z
    .locals 1

    const-string v0, "control"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    instance-of v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->isApplyPhysicsLocal()Z

    move-result p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/jme3/bullet/control/GhostControl;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jme3/bullet/control/GhostControl;

    invoke-virtual {p0}, Lcom/jme3/bullet/control/GhostControl;->isApplyPhysicsLocal()Z

    move-result p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/jme3/bullet/control/RigidBodyControl;

    invoke-virtual {p0}, Lcom/jme3/bullet/control/RigidBodyControl;->isApplyPhysicsLocal()Z

    move-result p0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/jme3/bullet/control/VehicleControl;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/jme3/bullet/control/VehicleControl;

    invoke-virtual {p0}, Lcom/jme3/bullet/control/VehicleControl;->isApplyPhysicsLocal()Z

    move-result p0

    :goto_0
    return p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not support local physics."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static h(Lcom/jme3/scene/control/Control;)Z
    .locals 1

    const-string v0, "control"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    instance-of v0, p0, Lcom/jme3/bullet/control/PhysicsControl;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/bullet/control/PhysicsControl;

    invoke-interface {p0}, Lcom/jme3/bullet/control/PhysicsControl;->isEnabled()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lif/n;->g(Lcom/jme3/scene/control/Control;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static i(Lcom/jme3/scene/Spatial;)Z
    .locals 1

    const-class v0, Lcom/jme3/bullet/control/RigidBodyControl;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j(Lcom/jme3/scene/Spatial;)F
    .locals 1

    const-string v0, "spatial"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p0}, Lmf/h;->f(Lcom/jme3/scene/Spatial;)Lcom/jme3/bullet/control/RigidBodyControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMass()F

    move-result p0

    return p0
.end method

.method public static k(Lcom/jme3/scene/Spatial;)V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getNumControls()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Spatial;->getControl(I)Lcom/jme3/scene/control/Control;

    move-result-object v1

    instance-of v2, v1, Lcom/jme3/bullet/control/PhysicsControl;

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0}, Lmf/h;->k(Lcom/jme3/scene/Spatial;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static l(Lcom/jme3/scene/control/Control;Z)V
    .locals 1

    instance-of v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->setApplyPhysicsLocal(Z)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/jme3/bullet/control/GhostControl;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jme3/bullet/control/GhostControl;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/control/GhostControl;->setApplyPhysicsLocal(Z)V

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/jme3/bullet/control/RigidBodyControl;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/control/RigidBodyControl;->setApplyPhysicsLocal(Z)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/jme3/bullet/control/VehicleControl;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/jme3/bullet/control/VehicleControl;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/control/VehicleControl;->setApplyPhysicsLocal(Z)V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not support local physics."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static m(Lcom/jme3/scene/control/Control;Z)V
    .locals 1

    instance-of v0, p0, Lcom/jme3/bullet/control/PhysicsControl;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/bullet/control/PhysicsControl;

    invoke-interface {p0, p1}, Lcom/jme3/bullet/control/PhysicsControl;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lif/n;->h(Lcom/jme3/scene/control/Control;Z)V

    :goto_0
    return-void
.end method
