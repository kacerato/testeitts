.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCubeCamera;
.super Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;
.source "SourceFile"


# static fields
.field public static final a9:F = 0.3f


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRenderDistance(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setMinimalDistance(F)V

    const/high16 v0, 0x42480000    # 50.0f

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setFov(F)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-super {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setOrthoDiameter(F)V

    const/16 v1, 0x3e9

    invoke-super {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setLayer(I)V

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;->Alpha:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    invoke-super {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setBackgroundType(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;)V

    const v1, 0x3f333333    # 0.7f

    invoke-super {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectPosX(F)V

    const v1, 0x3e99999a    # 0.3f

    invoke-super {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectWidth(F)V

    invoke-super {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectHeight(F)V

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRenderPercentage(F)V

    return-void
.end method


# virtual methods
.method public allowPostProcessing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public renderFog()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public renderGizmos()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
