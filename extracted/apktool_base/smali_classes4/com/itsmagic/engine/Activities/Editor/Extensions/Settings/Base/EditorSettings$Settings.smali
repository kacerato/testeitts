.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$a;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$b;
    }
.end annotation


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

.field public allowAutomaticFormatter:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

.field public c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

.field public cameraFov:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public cameraResolutionPercentage:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public catchTerminalExceptionsEvenIfClosed:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public codeCompletion:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$a;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

.field public drawAxisCube:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

.field public enableFrameLimitOnEditor:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public enableProfilingToolsV2:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public entryEditorRotE:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public entryEditorRotS:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public f:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

.field public fixedResolutionPixelsHeight:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public fixedResolutionPixelsWidth:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public focusOnPropertiesAfterObjectSelection:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public freeResolutionPixels:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public githubOrganizationsCache:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public githubSelectedOrganization:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public githubToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public horizontalMouseSens:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public horizontalSlideSens:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public latestProject:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public limitFramesWhenEditor:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public materialGraphPreviewsEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public maxTerminalHistory:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public maximizeGameViewWhenPlay:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public minimalRenderDistanceV2:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mouseMoveSens:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mouseZoomSens:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public moveSens:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orientation:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$b;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public packagesDatabasePath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public packagesRepositoryUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public packagesVersionPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public projectCheckAtStartup:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public recompileWhenFinishTyping:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public recompileWhenOpenScript:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public renderBackend:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$a;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public renderDistanceV2:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public reopenTheLatestProjectAtStartup:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public selectionWireframeGizmo:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public shortcut_focusCamera:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public shortcut_maximizePanel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public shortcut_positionAxis:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public shortcut_rotationAxis:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public shortcut_saveProject:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public shortcut_scaleAxis:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public translateComponentNames:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public translateNoCodeV2:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public translateThermalFlow:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uiScale:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public verticalMouseSens:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public verticalSlideSens:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public vibrateOnSelection:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public zoomSens:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->uiScale:F

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$a;->Vulkan:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$a;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->renderBackend:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$a;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->drawAxisCube:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->packagesRepositoryUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->packagesDatabasePath:Ljava/lang/String;

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->packagesVersionPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->githubToken:Ljava/lang/String;

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->githubSelectedOrganization:Ljava/lang/String;

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->githubOrganizationsCache:Ljava/util/List;

    const/high16 v2, 0x41900000    # 18.0f

    iput v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->horizontalSlideSens:F

    iput v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->verticalSlideSens:F

    iput v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->horizontalMouseSens:F

    iput v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->verticalMouseSens:F

    const/high16 v3, 0x42480000    # 50.0f

    iput v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->zoomSens:F

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->mouseZoomSens:F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->moveSens:F

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->mouseMoveSens:F

    const v0, 0x459c4000    # 5000.0f

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->renderDistanceV2:F

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->minimalRenderDistanceV2:F

    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->cameraFov:F

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->cameraResolutionPercentage:F

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;->FreeAspectResolution:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;

    const/16 v0, 0x500

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->fixedResolutionPixelsWidth:I

    const/16 v0, 0x2d0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->fixedResolutionPixelsHeight:I

    const/16 v0, 0x190

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->freeResolutionPixels:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->maximizeGameViewWhenPlay:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->selectionWireframeGizmo:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->translateThermalFlow:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->translateComponentNames:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->translateNoCodeV2:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->materialGraphPreviewsEnabled:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->enableFrameLimitOnEditor:Z

    const/16 v3, 0x20

    iput v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->limitFramesWhenEditor:I

    const/16 v3, 0x3e7

    iput v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->maxTerminalHistory:I

    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->catchTerminalExceptionsEvenIfClosed:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->recompileWhenFinishTyping:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->allowAutomaticFormatter:Z

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$a;->Advanced:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$a;

    iput-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->codeCompletion:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$a;

    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->recompileWhenOpenScript:Z

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->f:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    iput v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->entryEditorRotS:F

    const/high16 v2, 0x43340000    # 180.0f

    iput v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->entryEditorRotE:F

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->latestProject:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->reopenTheLatestProjectAtStartup:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->enableProfilingToolsV2:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->vibrateOnSelection:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->focusOnPropertiesAfterObjectSelection:Z

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$b;->Landscape:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$b;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->orientation:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$b;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->projectCheckAtStartup:Z

    const-string v0, "CTRL + S"

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->shortcut_saveProject:Ljava/lang/String;

    const-string v0, "F"

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->shortcut_focusCamera:Ljava/lang/String;

    const-string v0, "M"

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->shortcut_maximizePanel:Ljava/lang/String;

    const-string v0, "Q"

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->shortcut_positionAxis:Ljava/lang/String;

    const-string v0, "W"

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->shortcut_rotationAxis:Ljava/lang/String;

    const-string v0, "E"

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->shortcut_scaleAxis:Ljava/lang/String;

    return-void
.end method
