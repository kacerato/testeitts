.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "InteractionInteractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor$Factory;
    }
.end annotation


# static fields
.field public static final COMPONENT_CLASS:Ljava/lang/Class;

.field public static final COMPONENT_NAME:Ljava/lang/String; = "InteractionInteractor"


# instance fields
.field public autoFindCamera:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private transient cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

.field public interactionAngle:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public interactionDistance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->COMPONENT_CLASS:Ljava/lang/Class;

    .line 59
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor$Factory;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor$Factory;-><init>()V

    invoke-static {v0}, Lfb/C13201a;->b(Lfb/AbstractC13203c;)V

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    const-string v0, "InteractionInteractor"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    .line 24
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->interactionDistance:F

    .line 27
    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->interactionAngle:F

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->autoFindCamera:Z

    .line 69
    return-void
.end method

.method public static ensureRegistered()V
    .locals 0

    .line 65
    return-void
.end method


# virtual methods
.method public cancelInteraction()V
    .locals 1

    .line 135
    const-string v0, "cancel"

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->releaseAction(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public getCameraTransform()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    .line 152
    const-string v0, "Interaction Interactor"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 157
    const-string v0, "Interaction Interactor"

    return-object v0
.end method

.method public grab()V
    .locals 1

    .line 127
    const-string v0, "grab"

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->pressAction(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public handleInput(Ljava/lang/String;Z)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->f79250n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/C13317e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->f79250n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->handleRawInput(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    .line 116
    :cond_0
    return-void
.end method

.method public interact()V
    .locals 1

    .line 119
    const-string v0, "interact"

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->pressAction(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public mo1248clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 162
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;-><init>()V

    .line 163
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->interactionDistance:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->interactionDistance:F

    .line 164
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->interactionAngle:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->interactionAngle:F

    .line 165
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->autoFindCamera:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->autoFindCamera:Z

    .line 166
    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .line 94
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->getInstance()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->f79250n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->clearPlayer(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 95
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    .line 96
    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 1

    .line 73
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    .line 74
    invoke-static {p1}, Lgb/C13317e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->autoFindCamera:Z

    if-eqz p2, :cond_1

    .line 77
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->mainCamera()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    move-result-object p2

    .line 78
    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->f79250n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/C13317e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->f79250n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    .line 83
    :cond_1
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez p2, :cond_2

    .line 84
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    .line 87
    :cond_2
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->getInstance()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;

    move-result-object p2

    .line 88
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p2, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->setPlayer(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    .line 89
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->interactionDistance:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->interactionAngle:F

    invoke-virtual {p2, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->configureSensor(FF)V

    .line 90
    return-void

    .line 74
    :cond_3
    :goto_0
    return-void
.end method

.method public pressAction(Ljava/lang/String;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->f79250n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/C13317e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->f79250n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->onActionPressed(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    .line 142
    :cond_0
    return-void
.end method

.method public releaseAction(Ljava/lang/String;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->f79250n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/C13317e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->f79250n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->onActionReleased(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 148
    :cond_0
    return-void
.end method

.method public releaseInteract()V
    .locals 1

    .line 123
    const-string v0, "interact"

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->releaseAction(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public secondaryInteract()V
    .locals 1

    .line 131
    const-string v0, "secondary_interact"

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->pressAction(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public setCameraTransform(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V
    .locals 2

    .line 99
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    .line 100
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->f79250n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/C13317e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->getInstance()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->f79250n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->setPlayer(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    .line 103
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->interactionDistance:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->interactionAngle:F

    invoke-virtual {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->configureSensor(FF)V

    .line 105
    :cond_0
    return-void
.end method
