.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final R2:F = 0.01f

.field public static final V2:F = 0.25f

.field public static final i3:F = 0.005f

.field public static final m3:Z = true

.field public static final q3:Ljava/lang/String; = "VehicleWheel"

.field public static final v3:Ljava/lang/Class;


# instance fields
.field public D0:F

.field public final D2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public transient E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public transient F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final F1:Ljavax/vecmath/Quat4f;

.field public final F2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;"
        }
    .end annotation
.end field

.field public transient G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final transient H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public H1:F

.field public final H2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final transient I:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public final transient J:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public transient K:Z

.field public transient L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

.field public L1:F

.field public L2:LJAVARuntime/GizmoObject;

.field public transient M:Lcom/jme3/bullet/objects/VehicleWheel;

.field public M1:F

.field public M2:LJAVARuntime/Component;

.field public transient N:Z

.field public transient O:Z

.field public transient P:Z

.field public transient Q:Z

.field public transient R:F

.field public final R1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public transient S:F

.field public transient T:F

.field public final transient U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public transient V:F

.field public final V1:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public final transient W:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public X:F

.field public Y:F

.field public Z:F

.field public b1:F

.field public final b2:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public camber:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public frictionSlip:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public i1:Z

.field public final i2:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public m1:F

.field public final m2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public final q0:LIc/e;

.field public q1:F

.field public final q2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public radius:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private refactoredChildren:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public suspensionRestLength:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public v0:F

.field public final v1:Lib/a;

.field public final v2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public final y1:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->v3:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const-string v0, "VehicleWheel"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->radius:F

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->suspensionRestLength:F

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->frictionSlip:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->refactoredChildren:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->camber:F

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-direct {v3, v1, v4, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3, v4, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->I:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->K:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->O:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->P:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->Q:Z

    const v3, 0x3c23d70a    # 0.01f

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->R:F

    const/high16 v3, 0x3e800000    # 0.25f

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->S:F

    const v3, 0x3ba3d70a    # 0.005f

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->T:F

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->V:F

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->W:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->Y:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->Z:F

    new-instance v3, LIc/e;

    invoke-direct {v3}, LIc/e;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->q0:LIc/e;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->i1:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->v1:Lib/a;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->y1:Lcom/jme3/math/Vector3f;

    new-instance v0, Ljavax/vecmath/Quat4f;

    invoke-direct {v0}, Ljavax/vecmath/Quat4f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->F1:Ljavax/vecmath/Quat4f;

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->H1:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L1:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M1:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->R1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->V1:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->b2:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->i2:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->m2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->q2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->D2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->F2:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->H2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L2:LJAVARuntime/GizmoObject;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->refreshConnectionPointFromHierarchy(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    return-void
.end method

.method private areWheelHierarchyListenerPropertiesOutdated()Z
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->O:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->P:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->Q:Z

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->R:F

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->S:F

    const/high16 v2, 0x3e800000    # 0.25f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->T:F

    const v2, 0x3ba3d70a    # 0.005f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private clearVehiclePhysicsBinding()V
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->detachFromVehiclePhysics()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->removeWheelHierarchyMatrixListeners()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    return-void
.end method

.method private detachFromVehiclePhysics()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    invoke-virtual {v0, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;->removeWheel(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;Lcom/jme3/bullet/objects/VehicleWheel;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->K:Z

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->V:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->V1:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->C0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->W:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->C0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->syncWheelChildOffsets()V

    return-void
.end method

.method private editorSetScales1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    return-void
.end method

.method private migrateToNewStructure()V
    .locals 6

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->refactoredChildren:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->refactoredChildren:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v4

    iget-object v5, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Z3()Lib/f;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v4, "[AutoGen-ModelPivot]"

    invoke-direct {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->R1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c;

    invoke-direct {v4, p0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;Ljava/util/HashMap;)V

    invoke-static {v0, v4}, LK8/a;->h(ILjava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private reconcileVehiclePhysicsBinding(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextVehiclePhysics"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->clearVehiclePhysicsBinding()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    if-eq v0, p1, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->clearVehiclePhysicsBinding()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->K:Z

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;->R:Lcom/jme3/bullet/objects/PhysicsVehicle;

    if-nez p1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->detachFromVehiclePhysics()V

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->refreshHierarchyMatrixListenerBinding()V

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->K:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;->R:Lcom/jme3/bullet/objects/PhysicsVehicle;

    if-eqz v0, :cond_4

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;->addWheel(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->K:Z

    :cond_4
    return-void
.end method

.method private refreshConnectionPointFromCurrentHierarchy()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Q0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->refreshConnectionPointFromHierarchy(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshConnectionPointFromHierarchy(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hierarchyMatrix"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->D1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v1, 0x3c23d70a    # 0.01f

    invoke-virtual {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equalsApprox(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez v0, :cond_3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->K:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;->requestWheelRefresh()V

    :cond_4
    return-void
.end method

.method private refreshHierarchyMatrixListenerBinding()V
    .locals 10

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->resolveVehiclePhysicsFromHierarchy()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    if-eq v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->N:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->removeWheelHierarchyMatrixListeners()V

    :cond_1
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->N:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->saveWheelHierarchyListenerProperties()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->v1:Lib/a;

    iget-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->O:Z

    iget-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->P:Z

    iget-boolean v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->Q:Z

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->R:F

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->S:F

    iget v9, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->T:F

    invoke-virtual/range {v1 .. v9}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lib/a;ZZZFFF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->N:Z

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->areWheelHierarchyListenerPropertiesOutdated()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->updateWheelHierarchyListenerProperties()V

    :cond_5
    return-void

    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->removeWheelHierarchyMatrixListeners()V

    :cond_7
    :goto_1
    return-void
.end method

.method private removeWheelHierarchyMatrixListeners()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->N:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->v1:Lib/a;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M2(Lib/a;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->N:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->O:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->P:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->Q:Z

    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->R:F

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->S:F

    const v0, 0x3ba3d70a    # 0.005f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->T:F

    return-void
.end method

.method private resolveVehiclePhysicsFromHierarchy()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    return-object v0
.end method

.method private saveWheelHierarchyListenerProperties()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->O:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->P:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->Q:Z

    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->R:F

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->S:F

    const v0, 0x3ba3d70a    # 0.005f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->T:F

    return-void
.end method

.method private syncWheelChildOffsets()V
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v2}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->V:F

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    sub-float/2addr v3, v4

    invoke-static {v3}, LNc/b;->k(F)F

    move-result v3

    const v5, 0x3c23d70a    # 0.01f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u3(F)V

    :cond_2
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->W:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->V1:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->u0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i0()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->W:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->r(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->W:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateSuspensionTravelPercentage()V
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/VehicleWheel;->getSuspensionLength()F

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->q1:F

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v2

    if-eqz v2, :cond_2

    cmpg-float v2, v1, v4

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr v0, v1

    invoke-static {v0}, LNc/b;->I(F)F

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->suspensionRestLength:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->m1:F

    const v1, 0x3f733333    # 0.95f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->i1:Z

    return-void

    :cond_2
    :goto_0
    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->m1:F

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->i1:Z

    return-void
.end method

.method private updateWheelHierarchyListenerProperties()V
    .locals 10

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->v1:Lib/a;

    iget-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->O:Z

    iget-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->P:Z

    iget-boolean v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->Q:Z

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->R:F

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->S:F

    iget v9, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->T:F

    invoke-virtual/range {v1 .. v9}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w4(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lib/a;ZZZFFF)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->saveWheelHierarchyListenerProperties()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateWheelModel(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tmpChassisPhysicsPos",
            "tmpChassisPhysicsRot"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;->R:Lcom/jme3/bullet/objects/PhysicsVehicle;

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {v0}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->F2:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :goto_0
    if-eqz v2, :cond_4

    if-eq v2, v0, :cond_4

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->F2:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->q2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->j0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v2, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->f1(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->m2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->q2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->F2:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_6

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->F2:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->D2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v2, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    iget-object v3, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i0()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v3

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->j0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    invoke-virtual {v0, v2, v3, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->Z0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->m2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->D2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p2, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->L(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->R1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->m2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->R1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->E()Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->R1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->y1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->S(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->H2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->H2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->H2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->y1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->H2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p2

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->V:F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->i2:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M1:F

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->v(FFF)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->b2:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->camber:F

    invoke-virtual {p1, v0, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->v(FFF)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->V1:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L1:F

    invoke-virtual {p1, p2, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->v(FFF)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->i2:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->b2:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->i0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->i2:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->V1:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->i0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->V1:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->i2:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->u0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->D2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->H2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->V1:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->j0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {p1, p2, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->Z0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->m2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->D2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p1, p2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->L(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->D1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->I:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->updateSuspensionTravelPercentage()V

    goto :goto_2

    :cond_7
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->m1:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->i1:Z

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public addToVehicle(Lcom/jme3/bullet/objects/PhysicsVehicle;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "physicsVehicle",
            "vehiclePhysics"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->refreshHierarchyMatrixListenerBinding()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->refreshConnectionPointFromCurrentHierarchy()V

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez v1, :cond_2

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->S1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;->getSpeedPercentage()F

    move-result v1

    iget v2, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;->maxSuspensionTravelCm:F

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;->lengthOverSpeed:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {v1}, LNc/b;->k(F)F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->p(F)F

    move-result p2

    mul-float/2addr v2, p2

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->suspensionRestLength:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v2, v1

    mul-float v7, p2, v2

    :try_start_1
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toVector3f()Lcom/jme3/math/Vector3f;

    move-result-object v4

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toVector3f()Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toVector3f()Lcom/jme3/math/Vector3f;

    move-result-object v6

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->radius:F

    const/4 v9, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Lcom/jme3/bullet/objects/PhysicsVehicle;->addWheel(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FFZ)Lcom/jme3/bullet/objects/VehicleWheel;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "FAILED TO ADD VEHICLE WHEEL"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    move p1, v0

    :goto_2
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->K:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->K:Z

    :cond_5
    :goto_4
    return v0
.end method

.method public beforeVehiclePhysics(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vehiclePhysics"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;->getSpeedPercentage()F

    move-result v0

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;->maxSuspensionTravelCm:F

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;->lengthOverSpeed:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {v0}, LNc/b;->k(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->p(F)F

    move-result v2

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;->suspensionStiffness:F

    iget-object v3, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;->stiffnessOverSpeed:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {v0}, LNc/b;->k(F)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->p(F)F

    move-result v3

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;->suspensionDamping:F

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;->dampingOverSpeed:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {v0}, LNc/b;->k(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->p(F)F

    move-result p1

    mul-float/2addr v3, p1

    const/high16 p1, 0x41000000    # 8.0f

    invoke-static {p1, v2}, LNc/b;->M(FF)F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float v0, v1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->q1:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->radius:F

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/objects/VehicleWheel;->setRadius(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->suspensionRestLength:F

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->q1:F

    mul-float/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/objects/VehicleWheel;->setRestLength(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->frictionSlip:F

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/objects/VehicleWheel;->setFrictionSlip(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    const v2, 0x461c4000    # 10000.0f

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/objects/VehicleWheel;->setMaxSuspensionForce(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/VehicleWheel;->setMaxSuspensionTravelCm(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/VehicleWheel;->setSuspensionStiffness(F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    const v0, 0x3f547ae1    # 0.83f

    mul-float/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/VehicleWheel;->setWheelsDampingCompression(F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    const v0, 0x3f6147ae    # 0.88f

    mul-float/2addr v3, v0

    invoke-virtual {p1, v3}, Lcom/jme3/bullet/objects/VehicleWheel;->setWheelsDampingRelaxation(F)V

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->suspensionRestLength:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->q1:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->Z:F

    :cond_0
    return-void
.end method

.method public clearVehicleAttachmentForRebuild(Lcom/jme3/bullet/objects/PhysicsVehicle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "physicsVehicle"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/jme3/bullet/objects/VehicleWheel;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsVehicle;->removeWheel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->K:Z

    return-void
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->radius:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->radius:F

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->suspensionRestLength:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->suspensionRestLength:F

    .line 5
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->frictionSlip:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->frictionSlip:F

    .line 6
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->refactoredChildren:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->refactoredChildren:Z

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public drawGizmo()V
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L2:LJAVARuntime/GizmoObject;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/GizmoObject;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CIRCLE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->E1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;LFb/a;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v1

    invoke-direct {v0, v1}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L2:LJAVARuntime/GizmoObject;

    new-instance v1, LJAVARuntime/Color;

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, LJAVARuntime/Color;-><init>(III)V

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L2:LJAVARuntime/GizmoObject;

    sget-object v1, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setRenderMode(LJAVARuntime/GizmoElement$RenderMode;)V

    :cond_0
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L2:LJAVARuntime/GizmoObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v4

    invoke-virtual {v3, v4}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L2:LJAVARuntime/GizmoObject;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->radius:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, LJAVARuntime/GizmoTransform;->setScale(F)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v4, v5, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->m(FFFFLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->i0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    const/high16 v3, 0x42820000    # 65.0f

    invoke-static {v4, v5, v4, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->m(FFFFLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->i0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L2:LJAVARuntime/GizmoObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object v4

    invoke-virtual {v3, v4}, LJAVARuntime/GizmoTransform;->setRotation(LJAVARuntime/Quaternion;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L2:LJAVARuntime/GizmoObject;

    invoke-static {v3}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void
.end method

.method public getCamber()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->camber:F

    return v0
.end method

.method public getCurrentBrake()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->D0:F

    return v0
.end method

.method public getCurrentSteer()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->b1:F

    return v0
.end method

.method public getCurrentTorque()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->v0:F

    return v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->VEHICLE_WHEEL:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070272

    return v0
.end method

.method public getInspectorColor(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const p1, 0x7f0500a5

    return p1
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

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$d;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RADIUS:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz p1, :cond_1

    const-string v2, "radius"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v1, p1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$e;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SUSPENSION_REST_LENGTH:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz p1, :cond_2

    const-string v2, "suspensionRestLength"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v1, p1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$f;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->FRICTION_SLIP:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz p1, :cond_3

    const-string v2, "frictionSlip"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v1, p1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$g;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;)V

    const-string v3, "Camber"

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz p1, :cond_4

    const-string v2, "camber"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v1, p1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getModelPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public getModelRotation()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->I:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/VehicleWheel;->getRotationAngle()F

    move-result v0

    invoke-static {v0}, LNc/b;->J1(F)F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSkidding()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->X:F

    return v0
.end method

.method public getSuspensionTravelPercentage()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->m1:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "VehicleWheel"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->VehicleWheel:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public incrementRotation(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->q0:LIc/e;

    invoke-virtual {v0}, LIc/e;->b()F

    move-result v1

    invoke-static {p1}, LNc/b;->K1(F)D

    move-result-wide v2

    double-to-float p1, v2

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, LIc/e;->d(F)V

    :cond_0
    return-void
.end method

.method public isGrounded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->i1:Z

    return v0
.end method

.method public onAttach()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->migrateToNewStructure()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->resolveVehiclePhysicsFromHierarchy()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->reconcileVehiclePhysicsBinding(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;)V

    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->clearVehiclePhysicsBinding()V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    return-void
.end method

.method public onHierarchyActiveChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onHierarchyActiveChanged(Z)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->clearVehiclePhysicsBinding()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->resolveVehiclePhysicsFromHierarchy()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->reconcileVehiclePhysicsBinding(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;)V

    return-void
.end method

.method public onHostPhysicsEntityChanged(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "physicsComponent"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onHostPhysicsEntityChanged(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;)V

    instance-of v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->resolveVehiclePhysicsFromHierarchy()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->reconcileVehiclePhysicsBinding(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;)V

    return-void
.end method

.method public onParentChanged()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onParentChanged()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->resolveVehiclePhysicsFromHierarchy()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->reconcileVehiclePhysicsBinding(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;)V

    return-void
.end method

.method public posVehiclePhysics(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vehiclePhysics",
            "tmpChassisPhysicsPos",
            "tmpChassisPhysicsRot"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->updatePhysicsState()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->y1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/VehicleWheel;->getWheelWorldLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->H1:F

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getRotationAngle()F

    move-result v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->Y:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    invoke-static {v0, v1, v2}, LNc/b;->z(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/VehicleWheel;->setRotationAngle(F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getRotationAngle()F

    move-result p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->q0:LIc/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LIc/e;->c(F)F

    move-result v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/VehicleWheel;->setRotationAngle(F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getRotationAngle()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->H1:F

    invoke-static {p1}, LNc/b;->J1(F)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->L1:F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getSteerAngle()F

    move-result p1

    invoke-static {p1}, LNc/b;->J1(F)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M1:F

    invoke-direct {p0, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->updateWheelModel(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getSkidInfo()F

    move-result p1

    sub-float/2addr v3, p1

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->X:F

    invoke-static {}, Lc8/b;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->posWheelPhysics()V

    :cond_0
    return-void
.end method

.method public posWheelPhysics()V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->syncWheelChildOffsets()V

    return-void
.end method

.method public setBrake(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brake"
        }
    .end annotation

    invoke-static {p1}, LIc/A;->b(F)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->D0:F

    return-void
.end method

.method public setCamber(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camber"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->camber:F

    return-void
.end method

.method public setRotation(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M:Lcom/jme3/bullet/objects/VehicleWheel;

    if-eqz v0, :cond_0

    invoke-static {p1}, LNc/b;->K1(F)D

    move-result-wide v1

    double-to-float p1, v1

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/VehicleWheel;->setRotationAngle(F)V

    :cond_0
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M2:LJAVARuntime/Component;

    return-void
.end method

.method public setSkidding(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skidding"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->X:F

    return-void
.end method

.method public setSteering(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "steer"
        }
    .end annotation

    invoke-static {p1}, LIc/A;->b(F)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->b1:F

    return-void
.end method

.method public setTorque(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "torque"
        }
    .end annotation

    invoke-static {p1}, LIc/A;->b(F)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->v0:F

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M2:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/VehicleWheel;

    invoke-direct {v0, p0}, LJAVARuntime/VehicleWheel;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->M2:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public updateOnSelectedHierarchy()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->updateOnSelectedHierarchy()V

    invoke-static {}, Lc8/b;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->editorSetScales1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->drawGizmo()V

    return-void
.end method
