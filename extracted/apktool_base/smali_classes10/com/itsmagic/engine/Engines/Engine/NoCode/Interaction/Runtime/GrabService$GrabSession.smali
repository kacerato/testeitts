.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;
.super Ljava/lang/Object;
.source "GrabService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GrabSession"
.end annotation


# instance fields
.field public cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

.field public final commandVelocity:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public damping:F

.field public followSpeed:F

.field public heldObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public holdDistance:F

.field public interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public maxGrabDistance:F

.field public maxVelocity:F

.field public originalUseGravity:Z

.field public rigidbody:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

.field public springStrength:F

.field public usePhysics:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->holdDistance:F

    .line 22
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->followSpeed:F

    .line 23
    const/high16 v0, 0x42820000    # 65.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->springStrength:F

    .line 24
    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->damping:F

    .line 25
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->maxVelocity:F

    .line 26
    const/high16 v0, 0x40f00000    # 7.5f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->maxGrabDistance:F

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->usePhysics:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->rigidbody:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->originalUseGravity:Z

    .line 30
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->commandVelocity:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method
