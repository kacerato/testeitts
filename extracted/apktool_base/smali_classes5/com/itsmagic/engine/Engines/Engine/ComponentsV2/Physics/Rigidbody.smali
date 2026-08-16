.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;
    }
.end annotation


# static fields
.field public static final b1:Ljava/lang/String; = "Rigidbody"

.field public static final i1:Ljava/lang/Class;


# instance fields
.field public D0:LJAVARuntime/Component;

.field public H:I

.field public I:I

.field public J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public K:Lcom/jme3/math/Vector3f;

.field public L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public M:Lcom/jme3/math/Vector3f;

.field public N:F

.field public O:F

.field public P:F

.field public Q:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

.field public R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

.field public S:I

.field public T:Z

.field public U:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

.field public final V:Lcom/jme3/math/Vector3f;

.field public final W:Lcom/jme3/math/Vector3f;

.field public final X:Lcom/jme3/math/Quaternion;

.field public final Y:Lcom/jme3/math/Vector3f;

.field public final Z:Lcom/jme3/math/Vector3f;

.field public angularDamping:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public bounciness:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public ccdMotionThreshold:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public ccdSweptSphereRadius:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private collisionEvents:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public collisionMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public friction:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public linearDamping:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public mass:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final q0:Lcom/jme3/math/Quaternion;

.field public useGravity:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public v0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->i1:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$g;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const-string v0, "Rigidbody"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->mass:F

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->useGravity:Z

    .line 4
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    .line 5
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;->Discrete:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->collisionMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 6
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->friction:F

    const v2, 0x3c23d70a    # 0.01f

    .line 7
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->linearDamping:F

    .line 8
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->angularDamping:F

    const/4 v2, 0x0

    .line 9
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->bounciness:F

    const v2, 0x3dcccccd    # 0.1f

    .line 10
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->ccdMotionThreshold:F

    .line 11
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->ccdSweptSphereRadius:F

    .line 12
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 13
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    .line 14
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->collisionEvents:Z

    .line 15
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 16
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->K:Lcom/jme3/math/Vector3f;

    .line 17
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 18
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->M:Lcom/jme3/math/Vector3f;

    const/high16 v0, -0x40800000    # -1.0f

    .line 19
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->N:F

    const v0, -0x39e3c400    # -9999.0f

    .line 20
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->O:F

    .line 21
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->P:F

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->T:Z

    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->U:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    .line 24
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->V:Lcom/jme3/math/Vector3f;

    .line 25
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->W:Lcom/jme3/math/Vector3f;

    .line 26
    new-instance v1, Lcom/jme3/math/Quaternion;

    invoke-direct {v1}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->X:Lcom/jme3/math/Quaternion;

    .line 27
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->Y:Lcom/jme3/math/Vector3f;

    .line 28
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->Z:Lcom/jme3/math/Vector3f;

    .line 29
    new-instance v1, Lcom/jme3/math/Quaternion;

    invoke-direct {v1}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->q0:Lcom/jme3/math/Quaternion;

    .line 30
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->v0:Z

    return-void
.end method

.method public constructor <init>(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mass"
        }
    .end annotation

    .line 31
    const-string v0, "Rigidbody"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 32
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->mass:F

    const/4 v1, 0x1

    .line 33
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->useGravity:Z

    .line 34
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    .line 35
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;->Discrete:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->collisionMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 36
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->friction:F

    const v2, 0x3c23d70a    # 0.01f

    .line 37
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->linearDamping:F

    .line 38
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->angularDamping:F

    const/4 v2, 0x0

    .line 39
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->bounciness:F

    const v2, 0x3dcccccd    # 0.1f

    .line 40
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->ccdMotionThreshold:F

    .line 41
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->ccdSweptSphereRadius:F

    .line 42
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 43
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    .line 44
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->collisionEvents:Z

    .line 45
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 46
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->K:Lcom/jme3/math/Vector3f;

    .line 47
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 48
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->M:Lcom/jme3/math/Vector3f;

    const/high16 v0, -0x40800000    # -1.0f

    .line 49
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->N:F

    const v0, -0x39e3c400    # -9999.0f

    .line 50
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->O:F

    .line 51
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->P:F

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->T:Z

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->U:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    .line 54
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->V:Lcom/jme3/math/Vector3f;

    .line 55
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->W:Lcom/jme3/math/Vector3f;

    .line 56
    new-instance v1, Lcom/jme3/math/Quaternion;

    invoke-direct {v1}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->X:Lcom/jme3/math/Quaternion;

    .line 57
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->Y:Lcom/jme3/math/Vector3f;

    .line 58
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->Z:Lcom/jme3/math/Vector3f;

    .line 59
    new-instance v1, Lcom/jme3/math/Quaternion;

    invoke-direct {v1}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->q0:Lcom/jme3/math/Quaternion;

    .line 60
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->v0:Z

    .line 61
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->mass:F

    return-void
.end method

.method private RemoveRigidbodyFromPhysics()V
    .locals 2

    :try_start_0
    sget-object v0, LK8/a;->o:LCc/c;

    iget-object v0, v0, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->remove(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->Q:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->v0:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->T:Z

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->H:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->I:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->N:F

    const v0, -0x39e3c400    # -9999.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->O:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->P:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->propagateDettachHostPhysicsEntityChanged()V

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->collisionEvents:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->collisionEvents:Z

    return p1
.end method

.method private addToPhysics()V
    .locals 4

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->mass:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w1()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    move-result-object v2

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->U:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a2()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->Q:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    if-nez v2, :cond_2

    new-instance v2, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-direct {v2}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->Q:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    :cond_2
    new-instance v2, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->Q:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-direct {v2, v3, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;F)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v2, p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Z0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->fillPositionCache(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->W:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    new-instance v2, Lcom/jme3/math/Vector3f;

    const v3, -0x3ee30a3d    # -9.81f

    invoke-direct {v2, v1, v3, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setGravity(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->bounciness:F

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setRestitution(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->friction:F

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setFriction(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setContactProcessingThreshold(F)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->fillCriticalTransformCache()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->W:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->X:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->updateLayer(Lcom/jme3/bullet/objects/PhysicsRigidBody;)V

    sget-object v0, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LK8/a;->o:LCc/c;

    iget-object v1, v1, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/PhysicsSpace;->add(Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->propagateNewHostPhysicsEntityChanged()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private fillCriticalTransformCache()V
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->fillPositionCache(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i0()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->X:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->W:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method private updateLayer(Lcom/jme3/bullet/objects/PhysicsRigidBody;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bulletRigidbody"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->H:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->i()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->I:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->i()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v1

    invoke-virtual {v1}, LIc/m;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->i()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->c:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->H:I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->i()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v0

    invoke-virtual {v0}, LIc/m;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->I:I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->g()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->h()I

    move-result v1

    sget-object v2, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollisionGroup(I)V

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollideWithGroups(I)V

    monitor-exit v2

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public addForce(FFF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-eqz v0, :cond_0

    .line 8
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1, p1, p2, p3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->applyForce(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    :cond_0
    return-void
.end method

.method public addForce(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "force"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->addForce(FFF)V

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "force can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addForce(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "force",
            "relativePosition"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    invoke-virtual {v0, v1, v2, p2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 3
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->W:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p2, v0, v1, p1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 4
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->W:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->applyForce(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "relativePosition can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "force can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addVelocity(FFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public addVelocity(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "force"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->addVelocity(FFF)V

    return-void
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->mass:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->mass:F

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    .line 5
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->useGravity:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->useGravity:Z

    .line 6
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->collisionMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->collisionMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;

    .line 7
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->friction:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->friction:F

    .line 8
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->linearDamping:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->linearDamping:F

    .line 9
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->angularDamping:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->angularDamping:F

    .line 10
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->bounciness:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->bounciness:F

    .line 11
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->ccdMotionThreshold:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->ccdMotionThreshold:F

    .line 12
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->ccdSweptSphereRadius:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->ccdSweptSphereRadius:F

    .line 13
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 14
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->b()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

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

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->v0:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->RemoveRigidbodyFromPhysics()V

    :cond_0
    return-void
.end method

.method public disabledUpdatePhysics()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->disabledUpdatePhysics()V

    return-void
.end method

.method public enableCollisionEvents()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->collisionEvents:Z

    return v0
.end method

.method public enablePredictUnconstraintMotion()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAngularVelocity()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public getBounciness()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->bounciness:F

    return v0
.end method

.method public getBulletObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    return-object v0
.end method

.method public getBulletRigibody()Lcom/jme3/bullet/objects/PhysicsRigidBody;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    return-object v0
.end method

.method public getBulletShape()Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->Q:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Rigidbody"

    return-object v0
.end method

.method public getFreeze()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    return-object v0
.end method

.method public getGravityMultiplier()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
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
    .locals 12
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

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$h;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->MASS:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v2, v3, v4, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_0

    const-string v3, "mass"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v2, v1, p0, v3, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LAYER:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$i;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;)V

    invoke-virtual {v2, v3, p1, v4}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->d(Ljava/lang/String;Landroid/content/Context;Lrb/a;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$j;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->FRICTION:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_1

    const-string v2, "friction"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$k;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LINEAR_DAMPING:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_2

    const-string v2, "linearDamping"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$l;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$l;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ANGULAR_DAMPING:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_3

    const-string v2, "angularDamping"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$m;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$m;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;)V

    const-string v3, "Bounciness"

    invoke-direct {p1, v2, v3, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_4

    const-string v2, "bounciness"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$n;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$n;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;)V

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    const-string v4, "Script collision events"

    invoke-direct {p1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$o;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$o;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->GRAVITY:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->GRAVITY_MULTIPLIER:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    invoke-static {p1, v2, v4}, LF5/c;->L(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;

    move-result-object p1

    if-eqz v1, :cond_5

    const-string v2, "gravityMultiplier"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->VEC3:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->FREEZE_POSITION:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->Vector:LC5/b$a;

    const/4 v4, 0x3

    new-array v5, v4, [LC5/b;

    invoke-direct {p1, v1, v2, v5}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object v1, p1, LC5/b;->p:[LC5/b;

    new-instance v5, LC5/b;

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$a;

    invoke-direct {v6, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;)V

    const-string v7, "X"

    invoke-direct {v5, v6, v7, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v6, 0x0

    aput-object v5, v1, v6

    iget-object v1, p1, LC5/b;->p:[LC5/b;

    new-instance v5, LC5/b;

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$b;

    invoke-direct {v8, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;)V

    const-string v9, "Y"

    invoke-direct {v5, v8, v9, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v8, 0x1

    aput-object v5, v1, v8

    iget-object v1, p1, LC5/b;->p:[LC5/b;

    new-instance v5, LC5/b;

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$c;

    invoke-direct {v10, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;)V

    const-string v11, "Z"

    invoke-direct {v5, v10, v11, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v10, 0x2

    aput-object v5, v1, v10

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->FREEZE_ROTATION:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v4, [LC5/b;

    invoke-direct {p1, v1, v2, v4}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object v1, p1, LC5/b;->p:[LC5/b;

    new-instance v2, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$d;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;)V

    invoke-direct {v2, v4, v7, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    aput-object v2, v1, v6

    iget-object v1, p1, LC5/b;->p:[LC5/b;

    new-instance v2, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$e;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;)V

    invoke-direct {v2, v4, v9, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    aput-object v2, v1, v8

    iget-object v1, p1, LC5/b;->p:[LC5/b;

    new-instance v2, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$f;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;)V

    invoke-direct {v2, v4, v11, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    aput-object v2, v1, v10

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COLLIDERS:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->S:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc

    invoke-direct {p1, v1, v3}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lc8/b;->j()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, LC5/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COLLISIONS:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->collisionCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v3}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method public getInvMass()F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->mass:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Rigidbody"

    return-object v0
.end method

.method public getVelocity()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDynamic()Z
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->mass:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onColliderChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->invalidateBulletShapeChildrenCache()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->T:Z

    return-void
.end method

.method public onDetach()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->v0:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->RemoveRigidbodyFromPhysics()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->propagateDettachHostPhysicsEntityChanged()V

    :cond_0
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->onDetach()V

    return-void
.end method

.method public onPhysicsGetTransformations()V
    .locals 5

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->onPhysicsGetTransformations()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->q0:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->z3(Lcom/jme3/math/Quaternion;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->Z:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    iget-boolean v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PX:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->Z:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->x:F

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    iget-boolean v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PY:Z

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->Z:Lcom/jme3/math/Vector3f;

    iget v3, v3, Lcom/jme3/math/Vector3f;->y:F

    :goto_1
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PZ:Z

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->Z:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    :goto_2
    invoke-virtual {v1, v2, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setPosition(FFF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getLinearVelocity()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularVelocity()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/jme3/math/Vector3f;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_3
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
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->mass:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gtz v2, :cond_1

    move v0, v3

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->linearDamping:F

    invoke-static {v1, v2, v3}, LNc/b;->E(FFF)F

    move-result v2

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->angularDamping:F

    invoke-static {v1, v4, v3}, LNc/b;->E(FFF)F

    move-result v3

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->P:F

    cmpl-float v4, v4, v3

    if-nez v4, :cond_2

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->O:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v4, v2, v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setDamping(FF)V

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->P:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->O:F

    :cond_3
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->bounciness:F

    invoke-virtual {v2, v3}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setRestitution(F)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->friction:F

    invoke-virtual {v2, v3}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setFriction(F)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->U1()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->N:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v2, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setMass(F)V

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->N:F

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->N:F

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setMass(F)V

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->N:F

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    iget-boolean v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RX:Z

    if-nez v2, :cond_6

    iget-boolean v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RY:Z

    if-nez v2, :cond_6

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RZ:Z

    if-eqz v0, :cond_a

    :cond_6
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->V:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getInverseInertiaLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    iget-boolean v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RX:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->V:Lcom/jme3/math/Vector3f;

    iput v1, v2, Lcom/jme3/math/Vector3f;->x:F

    :cond_7
    iget-boolean v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RY:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->V:Lcom/jme3/math/Vector3f;

    iput v1, v2, Lcom/jme3/math/Vector3f;->y:F

    :cond_8
    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RZ:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->V:Lcom/jme3/math/Vector3f;

    iput v1, v0, Lcom/jme3/math/Vector3f;->z:F

    :cond_9
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->V:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setInverseInertiaLocal(Lcom/jme3/math/Vector3f;)V

    :cond_a
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->U:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w1()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    move-result-object v2

    if-eq v0, v2, :cond_c

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->v0:Z

    if-eqz v0, :cond_b

    sget-object v0, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v2, LK8/a;->o:LCc/c;

    iget-object v2, v2, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v2, v3}, Lcom/jme3/bullet/PhysicsSpace;->remove(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    sget-object v2, LK8/a;->o:LCc/c;

    iget-object v2, v2, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v2, v3}, Lcom/jme3/bullet/PhysicsSpace;->add(Ljava/lang/Object;)V

    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w1()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->U:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    :cond_c
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->useGravity:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->getGravityMultiplier()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    sget-wide v2, LK8/a;->u:J

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-lez v0, :cond_10

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->r()Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    new-instance v3, Lcom/jme3/math/Vector3f;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PX:Z

    if-eqz v4, :cond_d

    move v4, v1

    goto :goto_4

    :cond_d
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    mul-float/2addr v4, v5

    :goto_4
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    iget-boolean v5, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PY:Z

    if-eqz v5, :cond_e

    move v5, v1

    goto :goto_5

    :cond_e
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    mul-float/2addr v5, v6

    :goto_5
    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    iget-boolean v6, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PZ:Z

    if-eqz v6, :cond_f

    move v0, v1

    goto :goto_6

    :cond_f
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    mul-float/2addr v0, v6

    :goto_6
    invoke-direct {v3, v4, v5, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v2, v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setGravity(Lcom/jme3/math/Vector3f;)V

    goto :goto_7

    :cond_10
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setGravity(Lcom/jme3/math/Vector3f;)V

    goto :goto_7

    :cond_11
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setGravity(Lcom/jme3/math/Vector3f;)V

    :goto_7
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->U1()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->K:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->K:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setLinearVelocity(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->getAngularVelocity()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->M:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->M:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setAngularVelocity(Lcom/jme3/math/Vector3f;)V

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->K:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->K:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setLinearVelocity(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->getAngularVelocity()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->M:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->M:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setAngularVelocity(Lcom/jme3/math/Vector3f;)V

    :goto_8
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->fillCriticalTransformCache()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->W:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->X:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->updateLayer(Lcom/jme3/bullet/objects/PhysicsRigidBody;)V

    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
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

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->v0:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->addToPhysics()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->prePhysic()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->v0:Z

    :cond_0
    return-void
.end method

.method public resyncOnFrame()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->resyncOnFrame()V

    invoke-static {}, Lc8/b;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->posPhysics()V

    :cond_0
    return-void
.end method

.method public setAngularVelocity(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angularVelocity"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public setBounciness(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounciness"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->bounciness:F

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->gravityMultiplier:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->D0:LJAVARuntime/Component;

    return-void
.end method

.method public setVelocity(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "velocity"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "velocity can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->D0:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Rigidbody;

    invoke-direct {v0, p0}, LJAVARuntime/Rigidbody;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->D0:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public updatePhysics()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->updatePhysics()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->Q:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->countChildren()I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->S:I

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->v0:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lc8/b;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->prePhysics()V

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->prePhysic()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->T:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->v0:Z

    if-eqz v0, :cond_2

    sget-object v0, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->Q:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setCollisionShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->T:Z

    :cond_3
    return-void
.end method
