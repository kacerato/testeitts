.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/LadderService$LadderSession;
.super Ljava/lang/Object;
.source "LadderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/LadderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LadderSession"
.end annotation


# instance fields
.field final exitOrigin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field ladder:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/LadderService$LadderSession;->exitOrigin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method
