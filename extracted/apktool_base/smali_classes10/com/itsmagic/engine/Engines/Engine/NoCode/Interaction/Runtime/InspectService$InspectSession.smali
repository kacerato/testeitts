.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;
.super Ljava/lang/Object;
.source "InspectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InspectSession"
.end annotation


# instance fields
.field camera:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

.field distance:F

.field followSpeed:F

.field interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field object:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field final originPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field final originRotation:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field returnOnStop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->distance:F

    .line 20
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->followSpeed:F

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->returnOnStop:Z

    .line 22
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->originPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 23
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->originRotation:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method
