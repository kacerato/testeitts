.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;
.super Ljava/lang/Object;
.source "ElevatorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElevatorSession"
.end annotation


# instance fields
.field baseX:F

.field baseY:F

.field baseZ:F

.field currentFloor:I

.field elevator:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field floorHeight:F

.field moving:Z

.field speed:F

.field targetFloor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
