.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Empty;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final H:Ljava/lang/String; = "Empty"

.field public static final I:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Empty;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Empty;->I:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "Empty"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Empty;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Empty;-><init>()V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Empty;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public disabledUpdatePhysics()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->disabledUpdatePhysics()V

    return-void
.end method

.method public getBulletObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBulletShape()Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Empty"

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f0700de

    return v0
.end method

.method public getInspectorColor(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const p1, 0x7f05009e

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Empty"

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onColliderChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->invalidateBulletShapeChildrenCache()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->onDetach()V

    return-void
.end method

.method public onPhysicsGetTransformations()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->onPhysicsGetTransformations()V

    return-void
.end method

.method public updatePhysics()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->updatePhysics()V

    return-void
.end method
