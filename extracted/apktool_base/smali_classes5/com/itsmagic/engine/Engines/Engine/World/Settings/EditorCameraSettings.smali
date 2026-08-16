.class public Lcom/itsmagic/engine/Engines/Engine/World/Settings/EditorCameraSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cameraPitch:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public cameraPos:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public cameraYaw:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public cameraZoom:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/Settings/EditorCameraSettings;->cameraPos:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v0, 0x40e00000    # 7.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/Settings/EditorCameraSettings;->cameraZoom:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/Settings/EditorCameraSettings;->cameraPitch:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/Settings/EditorCameraSettings;->cameraYaw:F

    return-void
.end method
