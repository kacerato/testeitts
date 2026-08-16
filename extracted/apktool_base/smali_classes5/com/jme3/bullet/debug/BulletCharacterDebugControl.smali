.class public Lcom/jme3/bullet/debug/BulletCharacterDebugControl;
.super Lcom/jme3/bullet/debug/CollisionShapeDebugControl;
.source "SourceFile"


# static fields
.field public static final logger:Ljava/util/logging/Logger;

.field private static final rotateIdentity:Lcom/jme3/math/Quaternion;

.field private static final tmpCenter:Lcom/jme3/math/Vector3f;


# instance fields
.field private final character:Lcom/jme3/bullet/objects/PhysicsCharacter;

.field private oldNormals:Lif/j;

.field private oldResolution:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    sput-object v0, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->rotateIdentity:Lcom/jme3/math/Quaternion;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    sput-object v0, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->tmpCenter:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/debug/BulletDebugAppState;Lcom/jme3/bullet/objects/PhysicsCharacter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;)V

    iput-object p2, p0, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {p2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->setShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    invoke-virtual {p2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMeshNormals()Lif/j;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->oldNormals:Lif/j;

    invoke-virtual {p2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMeshResolution()I

    move-result p1

    iput p1, p0, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->oldResolution:I

    invoke-static {p2}, Lcom/jme3/bullet/util/DebugShapeFactory;->getDebugShape(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Lcom/jme3/scene/Spatial;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->debugSpatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/scene/Spatial;->setName(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->updateMaterial()V

    return-void
.end method

.method private updateMaterial()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getDebugMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    sget-object v1, Lcom/jme3/bullet/debug/BulletDebugAppState;->enableChildColoring:Lcom/jme3/material/Material;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->debugSpatial:Lcom/jme3/scene/Spatial;

    instance-of v0, v0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->colorChildren()V

    return-void

    :cond_0
    const/4 v0, 0x0

    :cond_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugNumSides()I

    move-result v0

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->isContactResponse()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/debug/BulletDebugAppState;->getCharacterMaterial(I)Lcom/jme3/material/Material;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/debug/BulletDebugAppState;->getGhostMaterial(I)Lcom/jme3/material/Material;

    move-result-object v0

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->debugSpatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Spatial;->setMaterial(Lcom/jme3/material/Material;)V

    return-void
.end method


# virtual methods
.method public controlUpdate(F)V
    .locals 6

    iget-object p1, p0, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMeshNormals()Lif/j;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMeshResolution()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->hasShapeChanged(Lcom/jme3/bullet/collision/shapes/CollisionShape;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->oldNormals:Lif/j;

    if-eq v2, v0, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->oldResolution:I

    if-eq v2, v1, :cond_2

    :goto_0
    sget-object v2, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Rebuild debugSpatial for {0}."

    iget-object v5, p0, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->setShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->oldNormals:Lif/j;

    iput v1, p0, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->oldResolution:I

    iget-object p1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    check-cast p1, Lcom/jme3/scene/Node;

    iget-object v0, p0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->debugSpatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-static {v0}, Lcom/jme3/bullet/util/DebugShapeFactory;->getDebugShape(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Lcom/jme3/scene/Spatial;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->debugSpatial:Lcom/jme3/scene/Spatial;

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->debugSpatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    :cond_2
    invoke-direct {p0}, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->updateMaterial()V

    iget-object p1, p0, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    sget-object v0, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->tmpCenter:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    sget-object p1, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;->rotateIdentity:Lcom/jme3/math/Quaternion;

    invoke-virtual {p0, v0, p1}, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;->applyPhysicsTransform(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V

    return-void
.end method

.method public bridge synthetic setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->setSpatial(Lcom/jme3/scene/Spatial;)V

    return-void
.end method
