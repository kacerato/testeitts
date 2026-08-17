.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;
.super Ljava/lang/Object;
.source "VehicleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VehicleSession"
.end annotation


# instance fields
.field final entryOrigin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field seat:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field vehicle:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;->entryOrigin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method
