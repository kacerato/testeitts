.class Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/input/controls/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final results:Lcom/jme3/collision/CollisionResults;

.field final synthetic this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;


# direct methods
.method public constructor <init>(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/jme3/collision/CollisionResults;

    invoke-direct {p1}, Lcom/jme3/collision/CollisionResults;-><init>()V

    iput-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->results:Lcom/jme3/collision/CollisionResults;

    return-void
.end method

.method private printJointInfo(Lcom/jme3/anim/Joint;Lcom/jme3/scene/debug/custom/ArmatureDebugger;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-static {v0}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$900(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n-----------------------\nSelected Joint : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in armature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\nRoot Bone : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getParent()Lcom/jme3/anim/Joint;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "\n-----------------------\nLocal translation: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getLocalTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\nLocal rotation: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getLocalRotation()Lcom/jme3/math/Quaternion;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\nLocal scale: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getLocalScale()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\n---\nModel translation: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\nModel rotation: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\nModel scale: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\n---\nBind inverse Transform: \n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getInverseModelBindMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$600()Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private screenPointToRay(Lcom/jme3/renderer/Camera;Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Ray;
    .locals 4

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3, v1}, Lcom/jme3/renderer/Camera;->getWorldCoordinates(Lcom/jme3/math/Vector2f;FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v3, v2}, Lcom/jme3/renderer/Camera;->getWorldCoordinates(Lcom/jme3/math/Vector2f;FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object p1

    new-instance p2, Lcom/jme3/math/Ray;

    invoke-direct {p2, v1, p1}, Lcom/jme3/math/Ray;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-object p2
.end method


# virtual methods
.method public onAction(Ljava/lang/String;ZF)V
    .locals 1

    iget-object p3, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-virtual {p3}, Lcom/jme3/app/state/BaseAppState;->isEnabled()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string p3, "ArmatureDebugAppState_PickJoint"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$102(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;F)F

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-static {p1}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$100(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)F

    move-result p1

    const p2, 0x3e4ccccd    # 0.2f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_5

    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-static {p1}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$200(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Lcom/jme3/renderer/Camera;

    move-result-object p1

    iget-object p2, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-static {p2}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$300(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Lcom/jme3/input/InputManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/input/InputManager;->getCursorPosition()Lcom/jme3/math/Vector2f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->screenPointToRay(Lcom/jme3/renderer/Camera;Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Ray;

    move-result-object p1

    iget-object p2, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->results:Lcom/jme3/collision/CollisionResults;

    invoke-virtual {p2}, Lcom/jme3/collision/CollisionResults;->clear()V

    iget-object p2, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-static {p2}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$400(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Lcom/jme3/scene/Node;

    move-result-object p2

    iget-object p3, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->results:Lcom/jme3/collision/CollisionResults;

    invoke-virtual {p2, p1, p3}, Lcom/jme3/scene/Node;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->results:Lcom/jme3/collision/CollisionResults;

    invoke-virtual {p1}, Lcom/jme3/collision/CollisionResults;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-static {p1}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$500(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/debug/custom/ArmatureDebugger;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->select(Lcom/jme3/scene/Geometry;)Lcom/jme3/anim/Joint;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->results:Lcom/jme3/collision/CollisionResults;

    invoke-virtual {p1}, Lcom/jme3/collision/CollisionResults;->getClosestCollision()Lcom/jme3/collision/CollisionResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/collision/CollisionResult;->getGeometry()Lcom/jme3/scene/Geometry;

    move-result-object p1

    invoke-static {}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$600()Ljava/util/logging/Logger;

    move-result-object p2

    sget-object p3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v0, "Pick: {0}"

    invoke-virtual {p2, p3, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-static {p2}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$500(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jme3/scene/debug/custom/ArmatureDebugger;

    invoke-virtual {p3, p1}, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->select(Lcom/jme3/scene/Geometry;)Lcom/jme3/anim/Joint;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-static {p1, v0}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$700(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;Lcom/jme3/anim/Joint;)V

    invoke-direct {p0, v0, p3}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->printJointInfo(Lcom/jme3/anim/Joint;Lcom/jme3/scene/debug/custom/ArmatureDebugger;)V

    goto :goto_2

    :cond_4
    const-string p3, "ArmatureDebugAppState_DisplayAllJoints"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-static {p1}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$800(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$802(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;Z)Z

    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-static {p1}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$500(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/debug/custom/ArmatureDebugger;

    iget-object p3, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-static {p3}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$800(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->displayNonDeformingJoint(Z)V

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method
