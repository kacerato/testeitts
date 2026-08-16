.class abstract Lcom/jme3/bullet/debug/CollisionShapeDebugControl;
.super Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;
.source "SourceFile"


# static fields
.field static final loggerS:Ljava/util/logging/Logger;

.field private static final newScale:Lcom/jme3/math/Vector3f;

.field private static final newSummaryList:Lcom/jme3/bullet/debug/ChildSummaryList;


# instance fields
.field protected debugSpatial:Lcom/jme3/scene/Spatial;

.field private lastMargin:F

.field private final lastScale:Lcom/jme3/math/Vector3f;

.field private lastShape:Lcom/jme3/bullet/collision/shapes/CollisionShape;

.field private final lastSummaryList:Lcom/jme3/bullet/debug/ChildSummaryList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->loggerS:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/bullet/debug/ChildSummaryList;

    invoke-direct {v0}, Lcom/jme3/bullet/debug/ChildSummaryList;-><init>()V

    sput-object v0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->newSummaryList:Lcom/jme3/bullet/debug/ChildSummaryList;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    sput-object v0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->newScale:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/debug/BulletDebugAppState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;)V

    new-instance p1, Lcom/jme3/bullet/debug/ChildSummaryList;

    invoke-direct {p1}, Lcom/jme3/bullet/debug/ChildSummaryList;-><init>()V

    iput-object p1, p0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->lastSummaryList:Lcom/jme3/bullet/debug/ChildSummaryList;

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p1, p0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->lastScale:Lcom/jme3/math/Vector3f;

    return-void
.end method


# virtual methods
.method public colorChildren()V
    .locals 5

    iget-object v0, p0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->debugSpatial:Lcom/jme3/scene/Spatial;

    check-cast v0, Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/scene/Spatial;

    iget-object v4, p0, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    invoke-virtual {v4, v2}, Lcom/jme3/bullet/debug/BulletDebugAppState;->getChildMaterial(I)Lcom/jme3/material/Material;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jme3/scene/Spatial;->setMaterial(Lcom/jme3/material/Material;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hasShapeChanged(Lcom/jme3/bullet/collision/shapes/CollisionShape;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getMargin()F

    move-result v0

    sget-object v1, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->newScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->lastShape:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    const/4 v3, 0x1

    if-eq v2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->lastMargin:F

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->lastScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->newSummaryList:Lcom/jme3/bullet/debug/ChildSummaryList;

    check-cast p1, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/ChildSummaryList;->update(Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;)V

    iget-object p1, p0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->lastSummaryList:Lcom/jme3/bullet/debug/ChildSummaryList;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/ChildSummaryList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public setShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V
    .locals 1

    iput-object p1, p0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->lastShape:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getMargin()F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->lastMargin:F

    iget-object v0, p0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->lastScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    instance-of v0, p1, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->lastSummaryList:Lcom/jme3/bullet/debug/ChildSummaryList;

    check-cast p1, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/ChildSummaryList;->update(Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;)V

    :cond_0
    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 2

    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->debugSpatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/bullet/debug/CollisionShapeDebugControl;->debugSpatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->setSpatial(Lcom/jme3/scene/Spatial;)V

    return-void
.end method
