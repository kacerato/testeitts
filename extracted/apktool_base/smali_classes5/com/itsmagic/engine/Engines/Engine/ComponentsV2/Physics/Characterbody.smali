.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;
.source "SourceFile"


# static fields
.field public static final i1:Ljava/lang/String; = "Characterbody"

.field public static final m1:Ljava/lang/Class;


# instance fields
.field public D0:F

.field public final H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ">;"
        }
    .end annotation
.end field

.field public I:I

.field public J:I

.field public K:Lcom/jme3/bullet/objects/PhysicsCharacter;

.field public L:I

.field public M:Z

.field public N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public O:F

.field public P:F

.field public Q:LJAVARuntime/GizmoObject;

.field public final R:Lcom/jme3/math/Vector3f;

.field public final S:Lcom/jme3/math/Vector3f;

.field public final T:Lcom/jme3/math/Vector3f;

.field public final U:Lcom/jme3/math/Vector3f;

.field public final V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public W:Z

.field public final X:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final Y:Lcom/jme3/math/Transform;

.field public final Z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public b1:LJAVARuntime/Component;

.field private gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private height:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private jumpForce:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mass:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private maxSlopeDegress:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field private stepHeight:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public useGravity:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public v0:F

.field private width:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->m1:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody$b;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody$b;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "Characterbody"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->useGravity:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->height:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->width:F

    const v0, 0x3eb33333    # 0.35f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->stepHeight:F

    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->maxSlopeDegress:F

    const/high16 v0, 0x42a00000    # 80.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->mass:F

    const/high16 v0, 0x40f00000    # 7.5f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->jumpForce:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->H:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->M:Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->R:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->S:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->T:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->U:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->W:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->X:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->Y:Lcom/jme3/math/Transform;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->Z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->v0:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->D0:F

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->mass:F

    return p0
.end method

.method public static synthetic access$002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->mass:F

    return p1
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->height:F

    return p0
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->width:F

    return p0
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->stepHeight:F

    return p0
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->maxSlopeDegress:F

    return p0
.end method

.method public static synthetic access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->maxSlopeDegress:F

    return p1
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->jumpForce:F

    return p0
.end method

.method public static synthetic access$502(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->jumpForce:F

    return p1
.end method

.method public static synthetic access$600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p0
.end method

.method private addToPhysics()V
    .locals 4

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->height:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const v2, 0x3dcccccd    # 0.1f

    if-gtz v0, :cond_0

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->height:F

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->width:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->width:F

    :cond_1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->height:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->O:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->width:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->P:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    div-float/2addr v0, v3

    new-instance v3, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;

    invoke-direct {v3, v2, v0}, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;-><init>(FF)V

    new-instance v0, Lcom/jme3/bullet/objects/PhysicsCharacter;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->stepHeight:F

    invoke-direct {v0, v3, v2}, Lcom/jme3/bullet/objects/PhysicsCharacter;-><init>(Lcom/jme3/bullet/collision/shapes/ConvexShape;F)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->K:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v0, p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->maxSlopeDegress:F

    const/high16 v2, 0x42b20000    # 89.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v0, v2}, LNc/b;->E(FFF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->maxSlopeDegress:F

    invoke-static {v0}, LNc/b;->K1(F)D

    move-result-wide v2

    double-to-float v0, v2

    const v2, 0x3fc90fdb

    invoke-static {v1, v0, v2}, LNc/b;->E(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->K:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/objects/PhysicsCharacter;->setMaxSlope(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->K:Lcom/jme3/bullet/objects/PhysicsCharacter;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->jumpForce:F

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->setJumpSpeed(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->fillPositionCache(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->K:Lcom/jme3/bullet/objects/PhysicsCharacter;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->S:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->warp(Lcom/jme3/math/Vector3f;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->updateLayer()V

    sget-object v0, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LK8/a;->o:LCc/c;

    iget-object v1, v1, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->K:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/PhysicsSpace;->add(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private drawGizmo()V
    .locals 12

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->Q:LJAVARuntime/GizmoObject;

    if-nez v0, :cond_2

    new-instance v0, LJAVARuntime/GizmoObject;

    invoke-direct {v0}, LJAVARuntime/GizmoObject;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->Q:LJAVARuntime/GizmoObject;

    new-instance v1, LJAVARuntime/Color;

    const/16 v2, 0x32

    const/16 v3, 0xff

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3, v4}, LJAVARuntime/Color;-><init>(IIII)V

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->Q:LJAVARuntime/GizmoObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setEnableTransparency(Z)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->height:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const v2, 0x3dcccccd    # 0.1f

    if-gtz v0, :cond_0

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->height:F

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->width:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->width:F

    :cond_1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->height:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->width:F

    add-float/2addr v0, v2

    new-instance v11, LGb/c;

    float-to-double v4, v0

    div-float/2addr v2, v1

    float-to-double v6, v2

    const/16 v9, 0x8

    sget-object v10, LGb/c$a;->VERTICAL:LGb/c$a;

    const/4 v8, 0x4

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, LGb/c;-><init>(DDIILGb/c$a;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->Q:LJAVARuntime/GizmoObject;

    invoke-virtual {v11}, LGb/c;->a()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v1

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->Q:LJAVARuntime/GizmoObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->Q:LJAVARuntime/GizmoObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->B0()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object v1

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoTransform;->setRotation(LJAVARuntime/Quaternion;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->Q:LJAVARuntime/GizmoObject;

    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method private fillPositionCache(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->S:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method private isSelectedAParent()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->f1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private removeFromPhysics()V
    .locals 3

    :try_start_0
    sget-object v0, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, LK8/a;->o:LCc/c;

    iget-object v1, v1, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->K:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/PhysicsSpace;->remove(Ljava/lang/Object;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->I:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->J:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->K:Lcom/jme3/bullet/objects/PhysicsCharacter;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->M:Z

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->Q:LJAVARuntime/GizmoObject;

    return-void
.end method

.method private updateLayer()V
    .locals 4

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->I:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->i()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->J:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->i()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v1

    invoke-virtual {v1}, LIc/m;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->i()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->c:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->I:I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->i()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v0

    invoke-virtual {v0}, LIc/m;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->J:I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->g()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->h()I

    move-result v1

    sget-object v2, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->K:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v3, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollisionGroup(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->K:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollideWithGroups(I)V

    monitor-exit v2

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public acceptColliders()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public addForce(FF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->H:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addForce(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector2"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->H:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;-><init>()V

    .line 3
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->useGravity:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->useGravity:Z

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 5
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->height:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->height:F

    .line 6
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->width:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->width:F

    .line 7
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->stepHeight:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->stepHeight:F

    .line 8
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->jumpForce:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->jumpForce:F

    .line 9
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->b()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 0
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

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->M:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->removeFromPhysics()V

    :cond_0
    return-void
.end method

.method public disabledUpdatePhysics()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->disabledUpdatePhysics()V

    return-void
.end method

.method public enablePredictUnconstraintMotion()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getBulletObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->K:Lcom/jme3/bullet/objects/PhysicsCharacter;

    return-object v0
.end method

.method public getBulletShape()Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Characterbody"

    return-object v0
.end method

.method public getForwardSpeed()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->v0:F

    return v0
.end method

.method public getGravityMultiplier()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->height:F

    return v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f0700de

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

    const p1, 0x7f05009e

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 6
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

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody$c;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->MASS:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v5, "mass"

    invoke-virtual {v1, v2, p0, v5, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody$d;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;)V

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->HEIGHT:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v5, "height"

    invoke-virtual {v1, v2, p0, v5, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody$e;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;)V

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->WIDTH:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v5, "width"

    invoke-virtual {v1, v2, p0, v5, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody$f;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;)V

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STEP_HEIGHT:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v5, "stepHeight"

    invoke-virtual {v1, v2, p0, v5, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody$g;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;)V

    const-string v5, "Max slope"

    invoke-direct {v1, v2, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v5, "maxSlopeDegress"

    invoke-virtual {v1, v2, p0, v5, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody$h;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;)V

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->JUMP_SPEED:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v5, "jumpForce"

    invoke-virtual {v1, v2, p0, v5, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LAYER:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody$i;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;)V

    invoke-virtual {v1, v2, p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->d(Ljava/lang/String;Landroid/content/Context;Lrb/a;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody$j;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->GRAVITY:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {p1, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;)V

    const-string v2, "Gravity multiplier"

    invoke-direct {p1, v1, v2, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getJumpSpeed()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->jumpForce:F

    return v0
.end method

.method public getOnPhysicsVelocity()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->X:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public getSideSpeed()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->D0:F

    return v0
.end method

.method public getStepHeight()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->stepHeight:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Characterbody"

    return-object v0
.end method

.method public getVelocity()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->width:F

    return v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isGlobalDirections()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->W:Z

    return v0
.end method

.method public isGrounded()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->K:Lcom/jme3/bullet/objects/PhysicsCharacter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsCharacter;->onGround()Z

    move-result v0

    return v0
.end method

.method public jump()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->K:Lcom/jme3/bullet/objects/PhysicsCharacter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsCharacter;->jump()V

    :cond_0
    return-void
.end method

.method public onColliderChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->invalidateBulletShapeChildrenCache()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->M:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->removeFromPhysics()V

    :cond_0
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->onDetach()V

    return-void
.end method

.method public onPhysicsGetTransformations()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->onPhysicsGetTransformations()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->K:Lcom/jme3/bullet/objects/PhysicsCharacter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->X:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->R:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/objects/PhysicsCharacter;->getLinearVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->K:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :cond_0
    return-void
.end method

.method public prePhysic()V
    .locals 7

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->useGravity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->getGravityMultiplier()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    sget-wide v2, LK8/a;->u:J

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->r()Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->K:Lcom/jme3/bullet/objects/PhysicsCharacter;

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    mul-float/2addr v0, v6

    invoke-direct {v3, v4, v5, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v2, v3}, Lcom/jme3/bullet/objects/PhysicsCharacter;->setGravity(Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->K:Lcom/jme3/bullet/objects/PhysicsCharacter;

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/objects/PhysicsCharacter;->setGravity(Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->R:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->K:Lcom/jme3/bullet/objects/PhysicsCharacter;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->R:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/objects/PhysicsCharacter;->setGravity(Lcom/jme3/math/Vector3f;)V

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->fillPositionCache(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->K:Lcom/jme3/bullet/objects/PhysicsCharacter;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->S:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/objects/PhysicsCharacter;->warp(Lcom/jme3/math/Vector3f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->R:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    invoke-static {}, Lc8/b;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, LK8/d;->b()F

    move-result v0

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->W:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->R:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->T:Lcom/jme3/math/Vector3f;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->v0:F

    mul-float/2addr v4, v0

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->R:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->U:Lcom/jme3/math/Vector3f;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->D0:F

    mul-float/2addr v4, v0

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->R:Lcom/jme3/math/Vector3f;

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->D0:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->v0:F

    mul-float/2addr v4, v0

    invoke-virtual {v2, v3, v1, v4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    :goto_2
    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->H:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->H:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->R:Lcom/jme3/math/Vector3f;

    iget v5, v4, Lcom/jme3/math/Vector3f;->x:F

    iget v6, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, v4, Lcom/jme3/math/Vector3f;->x:F

    iget v5, v4, Lcom/jme3/math/Vector3f;->z:F

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v3, v0

    add-float/2addr v5, v3

    iput v5, v4, Lcom/jme3/math/Vector3f;->z:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->K:Lcom/jme3/bullet/objects/PhysicsCharacter;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->jumpForce:F

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/objects/PhysicsCharacter;->setJumpSpeed(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    :try_start_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->K:Lcom/jme3/bullet/objects/PhysicsCharacter;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->R:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/objects/PhysicsCharacter;->setWalkDirection(Lcom/jme3/math/Vector3f;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->maxSlopeDegress:F

    const/high16 v2, 0x42b20000    # 89.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v0, v2}, LNc/b;->E(FFF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->maxSlopeDegress:F

    invoke-static {v0}, LNc/b;->K1(F)D

    move-result-wide v2

    double-to-float v0, v2

    const v2, 0x3fc90fdb

    invoke-static {v1, v0, v2}, LNc/b;->E(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->K:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/objects/PhysicsCharacter;->setMaxSlope(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->K:Lcom/jme3/bullet/objects/PhysicsCharacter;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->stepHeight:F

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->setStepHeight(F)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->updateLayer()V

    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 3
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->drawGizmo()V

    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->forward()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->right()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->T:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    invoke-virtual {v0, v1, v2, p2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->U:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p2, v0, v1, p1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->M:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->addToPhysics()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->prePhysic()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->M:Z

    :cond_0
    return-void
.end method

.method public setForwardSpeed(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forwardSpeed"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->v0:F

    return-void
.end method

.method public setGlobalDirections(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useGlobalDirections"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->W:Z

    return-void
.end method

.method public setGravityMultiplier(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gravityMultiplier"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public setHeight(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->height:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->height:F

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->Q:LJAVARuntime/GizmoObject;

    :cond_1
    return-void
.end method

.method public setJumpSpeed(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jumpForce"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->jumpForce:F

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->b1:LJAVARuntime/Component;

    return-void
.end method

.method public setSideSpeed(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sideSpeed"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->D0:F

    return-void
.end method

.method public setStepHeight(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stepHeight"
        }
    .end annotation

    const v0, 0x3d4ccccd    # 0.05f

    invoke-static {v0, p1}, LNc/b;->M(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->stepHeight:F

    return-void
.end method

.method public setVelocity(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "velocity"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public setWidth(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->width:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->width:F

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->Q:LJAVARuntime/GizmoObject;

    :cond_1
    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->b1:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Characterbody;

    invoke-direct {v0, p0}, LJAVARuntime/Characterbody;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->b1:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public updatePhysics()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->updatePhysics()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->M:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->O:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->height:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->P:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->width:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->removeFromPhysics()V

    :cond_1
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->M:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->prePhysic()V

    :cond_2
    return-void
.end method
