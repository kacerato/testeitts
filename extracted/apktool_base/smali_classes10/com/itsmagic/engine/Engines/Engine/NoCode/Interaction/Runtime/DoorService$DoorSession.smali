.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorSession;
.super Ljava/lang/Object;
.source "DoorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DoorSession"
.end annotation


# instance fields
.field public currentOpenAmount:F

.field public directionSign:I

.field public door:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public initialEulerX:F

.field public initialEulerY:F

.field public initialEulerZ:F

.field public initialX:F

.field public initialY:F

.field public initialZ:F

.field public maxAngleDeg:F

.field public mode:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

.field public speed:F

.field public targetOpen:Z

.field public targetOpenAmount:F

.field public travelDistance:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorSession;->currentOpenAmount:F

    .line 30
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorSession;->targetOpenAmount:F

    .line 31
    const/high16 v0, 0x40600000    # 3.5f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorSession;->speed:F

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorSession;->directionSign:I

    .line 33
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorSession;->maxAngleDeg:F

    .line 34
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorSession;->travelDistance:F

    .line 35
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->Hinged:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorSession;->mode:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    return-void
.end method
