.class public interface abstract Lh9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final J4:[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    sput-object v0, Lh9/a;->J4:[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    return-void
.end method


# virtual methods
.method public abstract addCollision(Lj9/a;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collision"
        }
    .end annotation
.end method

.method public abstract beforeCollisionEvents()V
.end method

.method public abstract disabledUpdatePhysics()V
.end method

.method public abstract enableCollisionEvents()Z
.end method

.method public abstract findColliderFromHash(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hash"
        }
    .end annotation
.end method

.method public abstract findCollision(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lj9/a;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation
.end method

.method public abstract getBulletShape()Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;
.end method

.method public abstract getBulletShapeChildren()[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;
.end method

.method public abstract getGameObjectForPhysics()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
.end method

.method public abstract invalidateBulletShapeChildrenCache()V
.end method

.method public abstract isActiveForPhysics()Z
.end method

.method public keepContactList()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPhysicsGetTransformations()V
.end method

.method public abstract resyncOnFrame()V
.end method

.method public abstract updatePhysics()V
.end method
