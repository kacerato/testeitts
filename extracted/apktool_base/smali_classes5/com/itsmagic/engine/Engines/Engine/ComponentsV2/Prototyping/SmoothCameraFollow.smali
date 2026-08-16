.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# static fields
.field public static P:Ljava/lang/String; = "SmoothCameraFollow"

.field public static Q:Ljava/lang/Class;


# instance fields
.field public final E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final I:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public final J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final L:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public final M:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public N:F

.field public O:LJAVARuntime/Component;

.field public distance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public fov:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public fovIntensity:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public height:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public initialFov:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public maxHeightDistance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public minimalFov:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public positionDamping:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public rotationDamping:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public shake:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public shakeIntensity:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public shakeMagnitude:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->Q:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->P:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->distance:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->height:F

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->maxHeightDistance:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->positionDamping:F

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->rotationDamping:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->shake:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->shakeIntensity:F

    const v1, 0x3e99999a    # 0.3f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->shakeMagnitude:F

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->fov:Z

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->fovIntensity:F

    const/high16 v0, 0x428c0000    # 70.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->initialFov:F

    const/high16 v0, 0x420c0000    # 35.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->minimalFov:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->I:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->L:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->N:F

    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->distance:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->distance:F

    .line 5
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->height:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->height:F

    .line 6
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->maxHeightDistance:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->maxHeightDistance:F

    .line 7
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->positionDamping:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->positionDamping:F

    .line 8
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->rotationDamping:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->rotationDamping:F

    .line 9
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->shake:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->shake:Z

    .line 10
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->shakeIntensity:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->shakeIntensity:F

    .line 11
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->shakeMagnitude:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->shakeMagnitude:F

    .line 12
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->fov:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->fov:Z

    .line 13
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->fovIntensity:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->fovIntensity:F

    .line 14
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->initialFov:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->initialFov:F

    .line 15
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->minimalFov:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->minimalFov:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SMOOTH_CAMERA_FOLLOW:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistance()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->distance:F

    return v0
.end method

.method public getHeight()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->height:F

    return v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070268

    return v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TARGET:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow$b;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;)V

    invoke-virtual {v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->d(Ljava/lang/String;LR8/e;)LC5/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object p1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow$c;

    invoke-direct {v2, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    const-string v3, "Follow"

    invoke-static {p1, v3, v2}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object p1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow$d;

    invoke-direct {v2, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    const-string v1, "Effects"

    invoke-static {p1, v1, v2}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMaxHeightDistance()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->maxHeightDistance:F

    return v0
.end method

.method public getPositionDamping()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->positionDamping:F

    return v0
.end method

.method public getRotationDamping()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->rotationDamping:F

    return v0
.end method

.method public getShakeIntensity()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->shakeIntensity:F

    return v0
.end method

.method public getShakeMagnitude()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->shakeMagnitude:F

    return v0
.end method

.method public getTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "SmoothCameraFollow"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->SmoothCameraFollow:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public isShake()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->shake:Z

    return v0
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->j()V

    invoke-static {}, Lc8/b;->k()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->f()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-static {}, LK8/d;->b()F

    move-result p2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-static {}, LK8/d;->b()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v4, v5, v4

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v3}, LIc/A;->b(F)F

    move-result v3

    iget-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->shake:Z

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    cmpl-float v4, v3, v6

    if-lez v4, :cond_2

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->shakeIntensity:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_2

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->N:F

    invoke-static {}, LK8/d;->b()F

    move-result v7

    const/high16 v8, 0x41f00000    # 30.0f

    mul-float/2addr v7, v8

    mul-float/2addr v7, v3

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->shakeIntensity:F

    mul-float/2addr v7, v8

    add-float/2addr v4, v7

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->N:F

    const/high16 v7, 0x43b40000    # 360.0f

    cmpl-float v8, v4, v7

    if-ltz v8, :cond_0

    sub-float/2addr v4, v7

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->N:F

    :cond_0
    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->N:F

    cmpg-float v8, v4, v6

    if-gez v8, :cond_1

    add-float/2addr v4, v7

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->N:F

    :cond_1
    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->N:F

    invoke-static {v4}, LNc/b;->d0(F)F

    move-result v4

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->shakeMagnitude:F

    mul-float/2addr v4, v7

    mul-float/2addr v4, v3

    const v7, 0x3c03126f    # 0.008f

    mul-float/2addr v4, v7

    invoke-static {v4}, LIc/A;->b(F)F

    move-result v4

    invoke-static {v6}, LIc/A;->b(F)F

    move-result v7

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v8}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->S2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v8}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v8, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v4, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_2
    iget-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->fov:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->initialFov:F

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->fovIntensity:F

    mul-float/2addr v7, v3

    const v3, 0x3d23d70a    # 0.04f

    mul-float/2addr v7, v3

    sub-float/2addr v4, v7

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->minimalFov:F

    invoke-static {v3, v4}, LNc/b;->M(FF)F

    move-result v3

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->Camera:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getFov()F

    move-result v7

    invoke-static {}, LK8/d;->b()F

    move-result v8

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v8, v9

    invoke-static {v7, v3, v8}, LNc/b;->z(FFF)F

    move-result v3

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setFov(F)V

    :cond_3
    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equally(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equally(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->forward()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->distance:F

    neg-float v3, v3

    invoke-virtual {v2, v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->I:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Z(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :cond_5
    :goto_0
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->L:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->I:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->rotationDamping:F

    mul-float/2addr v4, p2

    invoke-virtual {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->f(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v6, v6, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->I:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->q0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->distance:F

    invoke-virtual {v2, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->subLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->height:F

    add-float/2addr v1, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->positionDamping:F

    mul-float/2addr v4, p2

    invoke-static {v3, v1, v4}, LNc/b;->z(FFF)F

    move-result p2

    invoke-virtual {v2, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p2

    sub-float/2addr p2, v1

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->maxHeightDistance:F

    invoke-static {v4}, LNc/b;->k(F)F

    move-result v4

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->maxHeightDistance:F

    cmpl-float v5, p2, v4

    if-lez v5, :cond_6

    add-float/2addr v1, v4

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    goto :goto_1

    :cond_6
    neg-float v5, v4

    cmpg-float p2, p2, v5

    if-gez p2, :cond_7

    sub-float/2addr v1, v4

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    :cond_7
    :goto_1
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    :try_start_1
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_3
    return-void
.end method

.method public setDistance(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "distance"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0, p1}, LNc/b;->M(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->distance:F

    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->height:F

    return-void
.end method

.method public setMaxHeightDistance(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxHeightDistance"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->maxHeightDistance:F

    return-void
.end method

.method public setPositionDamping(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionDamping"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->positionDamping:F

    return-void
.end method

.method public setRotationDamping(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotationDamping"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->rotationDamping:F

    return-void
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->O:LJAVARuntime/Component;

    return-void
.end method

.method public setShake(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shake"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->shake:Z

    return-void
.end method

.method public setShakeIntensity(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shakeIntensity"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->shakeIntensity:F

    return-void
.end method

.method public setShakeMagnitude(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shakeMagnitude"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->shakeMagnitude:F

    return-void
.end method

.method public setTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->O:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/SmoothCameraFollow;

    invoke-direct {v0, p0}, LJAVARuntime/SmoothCameraFollow;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SmoothCameraFollow;->O:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
