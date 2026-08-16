.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lh9/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;
    }
.end annotation


# static fields
.field public static final L2:F = 0.01f

.field public static final M2:F = 0.25f

.field public static final R2:F = 0.005f

.field public static final V2:Z = true

.field public static final i3:Ljava/lang/String; = "Collider"

.field public static final m3:Ljava/lang/Class;


# instance fields
.field public transient D0:Z

.field public final D2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public E:LJAVARuntime/GizmoObject;

.field public F:Z

.field public transient F1:Z

.field public final F2:[F

.field public G:Z

.field public final H:Lcom/jme3/math/Transform;

.field public transient H1:Z

.field public H2:LJAVARuntime/Component;

.field public I:Z

.field public final J:[F

.field public final K:[F

.field public final L:[F

.field public transient L1:Z

.field public M:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public transient M1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LW8/b;",
            ">;"
        }
    .end annotation
.end field

.field public N:Z

.field public O:I

.field public P:LEb/a;

.field public Q:Ljava/lang/String;

.field public final R:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;

.field public R1:I

.field public final S:[F

.field public final T:[F

.field public U:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;

.field public V:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;

.field public final V1:Lib/a;

.field public W:Z

.field public final X:Lj9/b;

.field public transient Y:Lh9/b;

.field public Z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LDc/a;",
            ">;"
        }
    .end annotation
.end field

.field public transient b1:Z

.field public final b2:Lib/h;

.field private bounciness:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private capsuleLength:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private capsuleWidth:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private decompositionQuality:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private friction:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public transient i1:F

.field public final i2:LCb/a;

.field private layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public transient m1:F

.field public final m2:Ljava/lang/Runnable;

.field private maxHulls:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public modelFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public navMesh:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public transient q0:Z

.field public transient q1:F

.field public final q2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public transient v0:Z

.field public transient v1:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final v2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public transient y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->m3:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const-string v0, "Collider"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Box:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    const/high16 v0, 0x40000000    # 2.0f

    .line 3
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleLength:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 4
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleWidth:F

    const v1, 0x3e4ccccd    # 0.2f

    .line 5
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->decompositionQuality:F

    const/16 v1, 0xc

    .line 6
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->maxHulls:I

    .line 7
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->bounciness:F

    .line 9
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->friction:F

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F:Z

    .line 11
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->G:Z

    .line 12
    new-instance v1, Lcom/jme3/math/Transform;

    invoke-direct {v1}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->H:Lcom/jme3/math/Transform;

    .line 13
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->I:Z

    const/16 v1, 0x10

    .line 14
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->J:[F

    .line 15
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->K:[F

    .line 16
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->L:[F

    .line 17
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->N:Z

    .line 18
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$g;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->R:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;

    .line 19
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->S:[F

    .line 20
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->T:[F

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->W:Z

    .line 22
    new-instance v2, Lj9/b;

    invoke-direct {v2, p0}, Lj9/b;-><init>(Lh9/a;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->X:Lj9/b;

    .line 23
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->D0:Z

    .line 24
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->b1:Z

    const v0, 0x3c23d70a    # 0.01f

    .line 25
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->i1:F

    const/high16 v0, 0x3e800000    # 0.25f

    .line 26
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->m1:F

    const v0, 0x3ba3d70a    # 0.005f

    .line 27
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q1:F

    .line 28
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$h;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V1:Lib/a;

    .line 29
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$i;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->b2:Lib/h;

    .line 30
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$j;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->i2:LCb/a;

    .line 31
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$k;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->m2:Ljava/lang/Runnable;

    .line 32
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    .line 33
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    .line 34
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->D2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    .line 35
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F2:[F

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shape"
        }
    .end annotation

    .line 36
    const-string v0, "Collider"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Box:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    const/high16 v0, 0x40000000    # 2.0f

    .line 38
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleLength:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 39
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleWidth:F

    const v1, 0x3e4ccccd    # 0.2f

    .line 40
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->decompositionQuality:F

    const/16 v1, 0xc

    .line 41
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->maxHulls:I

    .line 42
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    const/4 v1, 0x0

    .line 43
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->bounciness:F

    .line 44
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->friction:F

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F:Z

    .line 46
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->G:Z

    .line 47
    new-instance v1, Lcom/jme3/math/Transform;

    invoke-direct {v1}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->H:Lcom/jme3/math/Transform;

    .line 48
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->I:Z

    const/16 v1, 0x10

    .line 49
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->J:[F

    .line 50
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->K:[F

    .line 51
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->L:[F

    .line 52
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->N:Z

    .line 53
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$g;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->R:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;

    .line 54
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->S:[F

    .line 55
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->T:[F

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->W:Z

    .line 57
    new-instance v2, Lj9/b;

    invoke-direct {v2, p0}, Lj9/b;-><init>(Lh9/a;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->X:Lj9/b;

    .line 58
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->D0:Z

    .line 59
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->b1:Z

    const v0, 0x3c23d70a    # 0.01f

    .line 60
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->i1:F

    const/high16 v0, 0x3e800000    # 0.25f

    .line 61
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->m1:F

    const v0, 0x3ba3d70a    # 0.005f

    .line 62
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q1:F

    .line 63
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$h;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V1:Lib/a;

    .line 64
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$i;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->b2:Lib/h;

    .line 65
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$j;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->i2:LCb/a;

    .line 66
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$k;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->m2:Ljava/lang/Runnable;

    .line 67
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    .line 68
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    .line 69
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->D2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    .line 70
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F2:[F

    .line 71
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shape",
            "modelFile",
            "showGizmo"
        }
    .end annotation

    .line 72
    const-string p3, "Collider"

    invoke-direct {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    .line 73
    sget-object p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Box:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    const/high16 p3, 0x40000000    # 2.0f

    .line 74
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleLength:F

    const/high16 p3, 0x3f000000    # 0.5f

    .line 75
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleWidth:F

    const v0, 0x3e4ccccd    # 0.2f

    .line 76
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->decompositionQuality:F

    const/16 v0, 0xc

    .line 77
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->maxHulls:I

    .line 78
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->bounciness:F

    .line 80
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->friction:F

    const/4 p3, 0x0

    .line 81
    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F:Z

    .line 82
    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->G:Z

    .line 83
    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->H:Lcom/jme3/math/Transform;

    .line 84
    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->I:Z

    const/16 v0, 0x10

    .line 85
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->J:[F

    .line 86
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->K:[F

    .line 87
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->L:[F

    .line 88
    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->N:Z

    .line 89
    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$g;

    invoke-direct {p3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->R:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;

    .line 90
    new-array p3, v0, [F

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->S:[F

    .line 91
    new-array p3, v0, [F

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->T:[F

    const/4 p3, 0x1

    .line 92
    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->W:Z

    .line 93
    new-instance v1, Lj9/b;

    invoke-direct {v1, p0}, Lj9/b;-><init>(Lh9/a;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->X:Lj9/b;

    .line 94
    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->D0:Z

    .line 95
    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->b1:Z

    const p3, 0x3c23d70a    # 0.01f

    .line 96
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->i1:F

    const/high16 p3, 0x3e800000    # 0.25f

    .line 97
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->m1:F

    const p3, 0x3ba3d70a    # 0.005f

    .line 98
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q1:F

    .line 99
    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$h;

    invoke-direct {p3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V1:Lib/a;

    .line 100
    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$i;

    invoke-direct {p3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->b2:Lib/h;

    .line 101
    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$j;

    invoke-direct {p3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->i2:LCb/a;

    .line 102
    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$k;

    invoke-direct {p3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->m2:Ljava/lang/Runnable;

    .line 103
    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    .line 104
    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    .line 105
    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->D2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    .line 106
    new-array p3, v0, [F

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F2:[F

    .line 107
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    .line 108
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->modelFile:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)LEb/a;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->P:LEb/a;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->v1:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->H1:Z

    return p0
.end method

.method public static synthetic access$1100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->reconcilePhysicsAttachment()V

    return-void
.end method

.method public static synthetic access$1202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;LJAVARuntime/GizmoObject;)LJAVARuntime/GizmoObject;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;

    return-object p1
.end method

.method public static synthetic access$1300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleLength:F

    return p0
.end method

.method public static synthetic access$1400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleWidth:F

    return p0
.end method

.method public static synthetic access$1500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->decompositionQuality:F

    return p0
.end method

.method public static synthetic access$1600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->maxHulls:I

    return p0
.end method

.method public static synthetic access$1700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->bounciness:F

    return p0
.end method

.method public static synthetic access$1800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->friction:F

    return p0
.end method

.method public static synthetic access$1900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->N:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;Lcom/itsmagic/engine/Engines/Engine/Vector/f;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->refreshHierarchyMatrixFor(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Z)V

    return-void
.end method

.method public static synthetic access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->R1:I

    return p1
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->O:I

    return p1
.end method

.method public static synthetic access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F:Z

    return p0
.end method

.method public static synthetic access$702(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->requestColliderRefresh()V

    return-void
.end method

.method public static synthetic access$902(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->L1:Z

    return p1
.end method

.method private applyCollisionVertex(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->M:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->i2:LCb/a;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->L1(LCb/a;)V

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->M:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f0()I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->O:I

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->M:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->i2:LCb/a;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->v(LCb/a;)V

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->P:LEb/a;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->markShapeDirty()V

    return-void
.end method

.method private areHierarchyListenerPropertiesOutdated(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normalizeLikeColliderShape"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->D0:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->v0:Z

    if-ne v0, p1, :cond_1

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->b1:Z

    if-ne p1, v1, :cond_1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->i1:F

    const v0, 0x3c23d70a    # 0.01f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->m1:F

    const/high16 v0, 0x3e800000    # 0.25f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q1:F

    const v0, 0x3ba3d70a    # 0.005f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private attachComponent(Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "compoundShape",
            "pc"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->U:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->c()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->U:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->d()Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    move-result-object v1

    if-ne p1, v1, :cond_0

    if-eq p2, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->detachFromComponent()V

    :cond_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->isOnPhysics()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w1()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    move-result-object v0

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->STATIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->J:[F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->L:[F

    invoke-static {v0, v2}, LNc/c;->c([F[F)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->J:[F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->L:[F

    invoke-static {v0, v2}, LNc/c;->b([F[F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F:Z

    :cond_2
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->detachFromComponent()V

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->onColliderChanged()V

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->navMesh:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->R:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;

    invoke-virtual {v0, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;)V

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->isOnPhysics()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->J:[F

    invoke-direct {v7, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>([F)V

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->isDynamic()Z

    move-result v0

    invoke-virtual {p0, v7, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->generateCollisionList(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Z)Ljava/util/List;

    move-result-object v6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->navMesh:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->R:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;

    invoke-virtual {v0, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;)V

    :cond_5
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->detachFromComponent()V

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->J:[F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->L:[F

    invoke-static {v0, v2}, LNc/c;->b([F[F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->H:Lcom/jme3/math/Transform;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->C1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toVector3f()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->H:Lcom/jme3/math/Transform;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q1()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Q0()Lcom/jme3/math/Quaternion;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/math/Transform;->setRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Transform;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->H:Lcom/jme3/math/Transform;

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lcom/jme3/math/Transform;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->U:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->onColliderChanged()V

    :cond_6
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F:Z

    :cond_7
    return-void
.end method

.method private attachLocal()V
    .locals 8

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->isOnPhysics()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w1()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    move-result-object v0

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->STATIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->J:[F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->L:[F

    invoke-static {v0, v2}, LNc/c;->c([F[F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->J:[F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->L:[F

    invoke-static {v0, v2}, LNc/c;->b([F[F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F:Z

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->detachFromLocalStaticbody()V

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->navMesh:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->R:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;

    invoke-virtual {v0, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->isOnPhysics()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->J:[F

    invoke-direct {v5, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>([F)V

    invoke-virtual {p0, v5, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->generateCollisionList(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Z)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->navMesh:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->R:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;

    invoke-virtual {v0, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;)V

    :cond_3
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->detachFromLocalStaticbody()V

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->J:[F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->L:[F

    invoke-static {v0, v2}, LNc/c;->b([F[F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->H:Lcom/jme3/math/Transform;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->C1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toVector3f()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->H:Lcom/jme3/math/Transform;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q1()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Q0()Lcom/jme3/math/Quaternion;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/math/Transform;->setRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Transform;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->H:Lcom/jme3/math/Transform;

    move-object v2, v0

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lcom/jme3/math/Transform;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->k(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->bounciness:F

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->i(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->friction:F

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->j(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->l(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    :cond_4
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F:Z

    :cond_5
    return-void
.end method

.method public static buildAllConvexColliderFor(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "destination"
        }
    .end annotation

    invoke-static {p0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->ModelRenderer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->n0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getMeshFile()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->ConvexModel:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;Ljava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static buildAllModelColliderFor(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "destination"
        }
    .end annotation

    invoke-static {p0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->ModelRenderer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->n0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getMeshFile()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;Ljava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static buildModelShapeCandidates(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/Vector/f;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertex",
            "matrix4",
            "isDynamic"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/f;",
            "Z)",
            "Ljava/util/List<",
            "LW8/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->buildModelShapeCandidates(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/Vector/f;ZLjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildModelShapeCandidates(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/Vector/f;ZLjava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertex",
            "matrix4",
            "isDynamic",
            "prebuiltMeshes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/f;",
            "Z",
            "Ljava/util/List<",
            "LDc/a;",
            ">;)",
            "Ljava/util/List<",
            "LW8/b;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    if-eqz p0, :cond_4

    .line 3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_4

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p0}, LDb/b;->a(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)LDb/a;

    move-result-object p0

    if-nez p3, :cond_1

    .line 5
    invoke-virtual {p0}, LDb/a;->j()Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    if-nez p3, :cond_2

    return-object v0

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->w1()F

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->y1()F

    move-result v2

    .line 8
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->A1()F

    move-result p1

    const/4 v3, 0x0

    if-eqz p2, :cond_3

    .line 9
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    if-ge v3, p0, :cond_4

    .line 10
    new-instance p0, LW8/b;

    new-instance p1, LDc/b;

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LDc/a;

    invoke-direct {p1, p2}, LDc/b;-><init>(LDc/a;)V

    invoke-direct {p0, p1}, LW8/b;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p0, v1, v2, p1}, LDb/a;->d(FFF)LDb/a$c;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 12
    invoke-virtual {p0}, LDb/a$c;->c()I

    move-result p1

    :goto_2
    if-ge v3, p1, :cond_4

    .line 13
    invoke-virtual {p0, v3}, LDb/a$c;->b(I)LW8/b;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 14
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_4
    return-object v0
.end method

.method private calculateGizmoHierarchyMatrixFor(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "physicsObject"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->N:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->refreshHierarchyMatrixListenerBinding()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->N:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :cond_2
    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->v1:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->J:[F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F2:[F

    invoke-static {p1, v0}, LNc/c;->b([F[F)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->Q0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;ZZZ)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->D2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->J:[F

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->x0([F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->D2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p1, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->L(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F2:[F

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o([F)[F

    :goto_0
    return v2

    :cond_5
    :goto_1
    return v1
.end method

.method private calculateParent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "c"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->calculateParent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private detachFromComponent()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->U:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->U:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->invalidateBulletShapeChildrenCache()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->navMesh:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->R:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;)V

    :cond_0
    return-void
.end method

.method private detachFromLocalStaticbody()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->invalidateBulletShapeChildrenCache()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->navMesh:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->R:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;)V

    :cond_0
    return-void
.end method

.method private directVertexSet(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->Q:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->applyCollisionVertex(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    return-void
.end method

.method private drawGizmo()V
    .locals 12

    :try_start_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->I:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->isSelectedAParent()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, LJAVARuntime/GizmoObject;

    invoke-direct {v1}, LJAVARuntime/GizmoObject;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->I:Z

    const/16 v3, 0xff

    if-eqz v2, :cond_1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v4, 0x48

    const/4 v5, 0x0

    const/16 v6, 0x7a

    invoke-direct {v2, v6, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(IIII)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LJAVARuntime/GizmoObject;->setEnableTransparency(Z)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto/16 :goto_3

    :cond_1
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v4, 0xfc

    const/16 v5, 0x1e

    const/16 v6, 0x28

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(IIII)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Capsule:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v1, v2, :cond_2

    :try_start_2
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleLength:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleWidth:F

    add-float/2addr v1, v2

    new-instance v11, LGb/c;

    float-to-double v4, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    float-to-double v6, v2

    sget-object v10, LGb/c$a;->VERTICAL:LGb/c$a;

    const/4 v8, 0x4

    const/16 v9, 0x8

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, LGb/c;-><init>(DDIILGb/c$a;)V

    invoke-virtual {v11}, LGb/c;->a()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    invoke-static {v1}, LIb/k;->j(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->G()V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v1

    invoke-virtual {v2, v1}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Box:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    invoke-static {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->E1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;LFb/a;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v2

    invoke-virtual {v1, v2}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Sphere:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;

    sget-object v2, LW7/b;->f:LC8/a;

    iget-object v2, v2, LC8/a;->a:LD8/a;

    iget-object v2, v2, LD8/a;->j:LD8/b;

    invoke-virtual {v2}, LD8/b;->c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v2

    invoke-virtual {v1, v2}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-eq v1, v2, :cond_5

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->ConvexModel:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-eq v1, v2, :cond_5

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Decomposition:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getCollisionVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v1, v2, :cond_6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getCollisionVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    invoke-static {v1}, LDb/b;->a(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)LDb/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getCollisionVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v2

    invoke-virtual {v1, v2}, LDb/a;->l(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v1

    invoke-virtual {v2, v1}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V

    goto :goto_4

    :cond_6
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->ConvexModel:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Decomposition:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v1, v2, :cond_9

    :cond_7
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->P:LEb/a;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;

    invoke-virtual {v1}, LEb/a;->c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v1

    invoke-virtual {v2, v1}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V

    goto :goto_4

    :cond_8
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;

    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->v1:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->calculateGizmoHierarchyMatrixFor(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;

    sget-object v1, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setRenderMode(LJAVARuntime/GizmoElement$RenderMode;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F2:[F

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoTransform;->setMatrix([F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;

    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_6
    return-void
.end method

.method private getBulletShapeChildrenCache()Lh9/b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->Y:Lh9/b;

    if-nez v0, :cond_0

    new-instance v0, Lh9/b;

    invoke-direct {v0}, Lh9/b;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->Y:Lh9/b;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->Y:Lh9/b;

    return-object v0
.end method

.method private isOnPhysics()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->U:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isSelectedAParent()Z
    .locals 2

    sget-object v0, LW7/b;->i:La8/a;

    iget-object v0, v0, La8/a;->a:La8/b;

    iget-object v0, v0, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_1

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->calculateParent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private loadVertexFromModelFile(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelFile"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "@@ASSET@@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ".mesh"

    invoke-static {p1, v2}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v2, LFb/a;

    invoke-direct {v2}, LFb/a;-><init>()V

    invoke-virtual {v2, v3}, LFb/a;->a(Z)LFb/a;

    move-result-object v2

    invoke-virtual {v2, v3}, LFb/a;->b(Z)LFb/a;

    move-result-object v2

    invoke-static {p1, v1, v3, v2, v0}, LFb/c;->o(Ljava/lang/String;ZZLFb/a;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    const-string v1, ".obj"

    invoke-static {p1, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_1
    new-instance v1, LFb/a;

    invoke-direct {v1}, LFb/a;-><init>()V

    invoke-virtual {v1, v3}, LFb/a;->a(Z)LFb/a;

    move-result-object v1

    invoke-virtual {v1, v3}, LFb/a;->b(Z)LFb/a;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->B1(Ljava/lang/String;LFb/a;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private markShapeDirty()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->l1()V

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->requestColliderRefresh()V

    return-void
.end method

.method private normalizeShapeMatrix(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Sphere:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Capsule:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    invoke-static {v0, v1}, LNc/b;->X0(FF)F

    move-result v0

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    invoke-static {v0, v1}, LNc/b;->X0(FF)F

    move-result v0

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    :cond_1
    return-void
.end method

.method private reconcilePhysicsAttachment()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->H1:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->G:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->N:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->refreshHierarchyMatrixListenerBinding()V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->sanitizeHostPhysicsComponent(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->getBulletShape()Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->detachFromLocalStaticbody()V

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->attachComponent(Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->detachFromComponent()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->attachLocal()V

    return-void

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->removeFromPhysics()V

    return-void
.end method

.method private refreshHierarchyMatrixFor(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hierarchyMatrix",
            "scheduleChangeOnDifference"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->normalizeShapeMatrix(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->S:[F

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o([F)[F

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->N:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->requestColliderRefresh()V

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->S:[F

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->J:[F

    invoke-static {p1, p2}, LNc/c;->b([F[F)V

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->N:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private refreshHierarchyMatrixListenerBinding()V
    .locals 13

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->sanitizeHostPhysicsComponent(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    if-eq v1, v0, :cond_1

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_a

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v3, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shouldNormalizeHierarchyListenerLikeColliderShape()Z

    move-result v3

    iget-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F1:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->b2:Lib/h;

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F1:Z

    :cond_3
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->v1:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eq v4, v0, :cond_5

    iget-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q0:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V1:Lib/a;

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M2(Lib/a;)V

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q0:Z

    :cond_4
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->v1:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_6

    invoke-direct {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->saveHierarchyListenerProperties(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->v1:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V1:Lib/a;

    const/high16 v11, 0x3e800000    # 0.25f

    const v12, 0x3ba3d70a    # 0.005f

    const/4 v7, 0x1

    const/4 v9, 0x1

    const v10, 0x3c23d70a    # 0.01f

    move v8, v3

    invoke-virtual/range {v4 .. v12}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lib/a;ZZZFFF)V

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q0:Z

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q0:Z

    if-eqz v0, :cond_6

    if-eqz v4, :cond_6

    iget-object v0, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_6

    invoke-direct {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->areHierarchyListenerPropertiesOutdated(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->updateHierarchyListenerProperties(Z)V

    :cond_6
    :goto_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->N:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q0:Z

    if-nez v0, :cond_7

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->v1:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v4, :cond_7

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v4, :cond_7

    invoke-direct {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->saveHierarchyListenerProperties(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->v1:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V1:Lib/a;

    const/high16 v11, 0x3e800000    # 0.25f

    const v12, 0x3ba3d70a    # 0.005f

    const/4 v7, 0x1

    const/4 v9, 0x1

    const v10, 0x3c23d70a    # 0.01f

    move v8, v3

    invoke-virtual/range {v4 .. v12}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lib/a;ZZZFFF)V

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q0:Z

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->v1:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v1, :cond_9

    if-eqz v0, :cond_8

    invoke-direct {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->areHierarchyListenerPropertiesOutdated(Z)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->updateHierarchyListenerProperties(Z)V

    :cond_8
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->v1:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v0, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Q0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {p0, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->refreshHierarchyMatrixFor(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Z)V

    :cond_9
    :goto_1
    return-void

    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->removeHierarchyMatrixListeners()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F1:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->b2:Lib/h;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u(Lib/h;)V

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F1:Z

    :cond_b
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q2:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {p0, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->refreshHierarchyMatrixFor(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Z)V

    :cond_c
    :goto_3
    return-void
.end method

.method private releasePreparedShapeCandidates()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->M1:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->M1:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->M1:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LW8/b;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, LW8/b;->e()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->M1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->M1:Ljava/util/List;

    return-void
.end method

.method private removeFromPhysics()V
    .locals 3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->detachFromComponent()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->detachFromLocalStaticbody()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->navMesh:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->R:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;)V

    :cond_0
    return-void
.end method

.method private removeHierarchyMatrixListeners()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q0:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V1:Lib/a;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M2(Lib/a;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F1:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->b2:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q0:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F1:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->D0:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->v0:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->b1:Z

    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->i1:F

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->m1:F

    const v0, 0x3ba3d70a    # 0.005f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q1:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->v1:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-void
.end method

.method private replaceCollisionVertexReference(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->M:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->i2:LCb/a;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->L1(LCb/a;)V

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->M:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f0()I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->O:I

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->M:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->i2:LCb/a;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->v(LCb/a;)V

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->P:LEb/a;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;

    return-void
.end method

.method private requestColliderRefresh()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->L1:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->L1:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->m2:Ljava/lang/Runnable;

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resolveHierarchyPhysicsObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private resolveReadyHostPhysicsComponent()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-class v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->acceptColliders()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->getBulletShape()Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method private sanitizeHostPhysicsComponent(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "physicsComponent"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->acceptColliders()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private saveHierarchyListenerProperties(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normalizeLikeColliderShape"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->D0:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->v0:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->b1:Z

    const p1, 0x3c23d70a    # 0.01f

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->i1:F

    const/high16 p1, 0x3e800000    # 0.25f

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->m1:F

    const p1, 0x3ba3d70a    # 0.005f

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->q1:F

    return-void
.end method

.method private setNavMesh(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "navMesh"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->navMesh:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->navMesh:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->R:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;

    invoke-virtual {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;)V

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->navMesh:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->requestColliderRefresh()V

    :cond_2
    return-void
.end method

.method private shouldNormalizeHierarchyListenerLikeColliderShape()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Sphere:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Capsule:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private syncModelFileState()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->modelFile:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->modelFile:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->modelFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->Q:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->loadVertexFromModelFile(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->applyCollisionVertex(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->Q:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->Q:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->applyCollisionVertex(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    :cond_3
    return-void
.end method

.method private updateAreaTriggerState(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "physicsComponent"
        }
    .end annotation

    instance-of p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->I:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->I:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;

    :cond_0
    return-void
.end method

.method private updateHierarchyListenerProperties(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normalizeLikeColliderShape"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->v1:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V1:Lib/a;

    const/high16 v8, 0x3e800000    # 0.25f

    const v9, 0x3ba3d70a    # 0.005f

    const/4 v4, 0x1

    const/4 v6, 0x1

    const v7, 0x3c23d70a    # 0.01f

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w4(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lib/a;ZZZFFF)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->saveHierarchyListenerProperties(Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addCollision(Lj9/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collision"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->X:Lj9/b;

    invoke-virtual {v0, p1}, Lj9/b;->a(Lj9/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public beforeCollisionEvents()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->X:Lj9/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lj9/b;->j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public calculateNavMeshMatrix()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->K:[F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r0([F)[F

    return-void
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->modelFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->modelFile:Ljava/lang/String;

    .line 5
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->decompositionQuality:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->decompositionQuality:F

    .line 6
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->maxHulls:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->maxHulls:I

    .line 7
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->navMesh:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;->b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->navMesh:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;

    .line 8
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleLength:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleLength:F

    .line 9
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleWidth:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleWidth:F

    .line 10
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->bounciness:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->bounciness:F

    .line 11
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->friction:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->friction:F

    .line 12
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->c(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public colliderWith(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->X:Lj9/b;

    invoke-virtual {v0, p1}, Lj9/b;->b(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->colliderWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public collisionAt(I)Lj9/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->X:Lj9/b;

    invoke-virtual {v0, p1}, Lj9/b;->c(I)Lj9/a;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->collisionAt(I)Lj9/a;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public collisionCount()I
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->X:Lj9/b;

    invoke-virtual {v0}, Lj9/b;->d()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->collisionCount()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public countAsync()I
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public disablePathfinder()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->navMesh:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->setNavMesh(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;)V

    :cond_0
    return-void
.end method

.method public disabledUpdatePhysics()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_0
    return-void
.end method

.method public enableCollisionEvents()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->W:Z

    return v0
.end method

.method public enablePathfinder()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->navMesh:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;-><init>()V

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->setNavMesh(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;)V

    :cond_0
    return-void
.end method

.method public findColliderFromHash(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hash"
        }
    .end annotation

    return-object p0
.end method

.method public findCollision(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lj9/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->X:Lj9/b;

    invoke-virtual {v0, p1}, Lj9/b;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lj9/a;

    move-result-object p1

    return-object p1
.end method

.method public generateCollisionList(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Z)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrix4",
            "isDynamic"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/f;",
            "Z)",
            "Ljava/util/List<",
            "LW8/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->M1:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->M1:Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->G:Z

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v2}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Box:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    const/high16 v4, 0x3f000000    # 0.5f

    if-ne v2, v3, :cond_2

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->P:LEb/a;

    new-instance p1, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2, v4, v4, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-direct {p1, p2}, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;-><init>(Lcom/jme3/math/Vector3f;)V

    new-instance p2, LW8/b;

    invoke-direct {p2, p1}, LW8/b;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_2
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Sphere:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v2, v3, :cond_3

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->P:LEb/a;

    new-instance p1, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    invoke-direct {p1, v4}, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;-><init>(F)V

    new-instance p2, LW8/b;

    invoke-direct {p2, p1}, LW8/b;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_3
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Capsule:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_6

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->P:LEb/a;

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleLength:F

    const p2, 0x3dcccccd    # 0.1f

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_4

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleLength:F

    :cond_4
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleWidth:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_5

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleWidth:F

    :cond_5
    new-instance p1, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleWidth:F

    div-float/2addr p2, v4

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleLength:F

    invoke-direct {p1, p2, v1}, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;-><init>(FF)V

    new-instance p2, LW8/b;

    invoke-direct {p2, p1}, LW8/b;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_6
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->ConvexModel:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    const/4 v5, 0x0

    if-ne v2, v3, :cond_9

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getCollisionVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->P:LEb/a;

    if-nez p2, :cond_7

    invoke-static {p1}, LEb/b;->a(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)LEb/a;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->P:LEb/a;

    :cond_7
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->P:LEb/a;

    if-eqz p1, :cond_8

    :goto_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->P:LEb/a;

    invoke-virtual {p1}, LEb/a;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v5, p1, :cond_8

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->P:LEb/a;

    invoke-virtual {p1}, LEb/a;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    new-instance p2, LW8/b;

    invoke-direct {p2, p1}, LW8/b;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;

    goto/16 :goto_6

    :cond_9
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v2, v3, :cond_a

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->P:LEb/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getCollisionVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v3

    if-lez v3, :cond_e

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result v3

    if-lez v3, :cond_e

    :try_start_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->Z:Ljava/util/List;

    invoke-static {v2, p1, p2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->buildModelShapeCandidates(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/Vector/f;ZLjava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f0()I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->O:I

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->Z:Ljava/util/List;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_6

    :cond_a
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Decomposition:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v2, p1, :cond_e

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getCollisionVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result p2

    if-lez p2, :cond_e

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result p2

    if-lez p2, :cond_e

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->P:LEb/a;

    if-nez p2, :cond_c

    :try_start_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->toArray()[F

    move-result-object p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->toArray()[I

    move-result-object p1

    new-instance v2, Lvhacd4/Vhacd4Parameters;

    invoke-direct {v2}, Lvhacd4/Vhacd4Parameters;-><init>()V

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->maxHulls:I

    const/16 v6, 0x400

    const/4 v7, 0x1

    invoke-static {v7, v3, v6}, LNc/b;->F(III)I

    move-result v3

    invoke-virtual {v2, v3}, Lvhacd4/Vhacd4Parameters;->setMaxHulls(I)V

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->decompositionQuality:F

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v7, 0x45000000    # 2048.0f

    mul-float v8, v3, v7

    invoke-static {v6, v8, v7}, LNc/b;->E(FFF)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v6}, Lvhacd4/Vhacd4Parameters;->setMaxVerticesPerHull(I)V

    const/high16 v6, 0x42800000    # 64.0f

    mul-float v7, v3, v6

    invoke-static {v4, v7, v6}, LNc/b;->E(FFF)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Lvhacd4/Vhacd4Parameters;->setMaxRecursion(I)V

    const v4, 0x461c4000    # 10000.0f

    const v6, 0x48927c00    # 300000.0f

    mul-float/2addr v3, v6

    invoke-static {v4, v3, v6}, LNc/b;->E(FFF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lvhacd4/Vhacd4Parameters;->setVoxelResolution(I)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    new-instance v4, LEb/a;

    invoke-direct {v4}, LEb/a;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->P:LEb/a;

    invoke-virtual {v4, v3}, LEb/a;->d(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->P:LEb/a;

    new-instance v6, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {v4, v6}, LEb/a;->e(Ljava/util/List;)V

    invoke-static {p2, p1, v2}, Lvhacd4/Vhacd4;->compute([F[ILvhacd4/Vhacd4Parameters;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lvhacd4/Vhacd4Hull;

    invoke-virtual {p2}, Lvhacd4/Vhacd4Hull;->clonePositions()[F

    move-result-object v2

    array-length v4, v2

    div-int/lit8 v4, v4, 0x3

    new-array v4, v4, [Lcom/jme3/math/Vector3f;

    move v6, v5

    move v7, v6

    :goto_3
    array-length v8, v2

    if-ge v6, v8, :cond_b

    aget v8, v2, v6

    add-int/lit8 v9, v6, 0x1

    aget v9, v2, v9

    add-int/lit8 v10, v6, 0x2

    aget v10, v2, v10

    new-instance v11, Lcom/jme3/math/Vector3f;

    invoke-direct {v11, v8, v9, v10}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    aput-object v11, v4, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x3

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception p1

    goto :goto_4

    :cond_b
    new-instance v2, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    invoke-direct {v2, v4}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;-><init>([Lcom/jme3/math/Vector3f;)V

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->P:LEb/a;

    invoke-virtual {v4}, LEb/a;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, LW8/b;

    invoke-direct {v4, v2}, LW8/b;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Utils/ConvexHullModel;->b(Lvhacd4/Vhacd4Hull;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->w(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :cond_c
    :goto_5
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->P:LEb/a;

    invoke-virtual {p1}, LEb/a;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v5, p1, :cond_d

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->P:LEb/a;

    invoke-virtual {p1}, LEb/a;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    new-instance p2, LW8/b;

    invoke-direct {p2, p1}, LW8/b;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_d
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;

    :cond_e
    :goto_6
    return-object v0
.end method

.method public getAttachedPhysicsObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->U:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/a;->c()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method

.method public getBounciness()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->bounciness:F

    return v0
.end method

.method public getBulletShape()Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->e()Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBulletShapeChildren()[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;
    .locals 2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getBulletShapeChildrenCache()Lh9/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getBulletShape()Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh9/b;->b(Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;)[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    move-result-object v0

    return-object v0
.end method

.method public getCapsuleLength()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleLength:F

    return v0
.end method

.method public getCapsuleWidth()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleWidth:F

    return v0
.end method

.method public getCollisionVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->syncModelFileState()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->M:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method

.method public getConvexVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->P:LEb/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LEb/a;->a()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDecompositionQuality()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->decompositionQuality:F

    return v0
.end method

.method public getDependencyFiles(LIc/h;)LIc/k;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    new-instance p1, LIc/k;

    invoke-direct {p1}, LIc/k;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->modelFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, LIc/k;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->modelFile:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COLLIDER:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEffectiveGlobalTransformFrameID()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->R1:I

    return v0
.end method

.method public getFriction()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->friction:F

    return v0
.end method

.method public getGameObjectForPhysics()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070269

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

    const p1, 0x7f050097

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 11
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

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v5, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CUBE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SPHERE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Capsule"

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->MODEL:LAc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CONVEX_MODEL:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Decomposition"

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    invoke-virtual {p0, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getTypeName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, LC5/b$a;->SLDropdown:LC5/b$a;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHAPE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v9

    invoke-direct/range {v2 .. v7}, LC5/b;-><init>(LD5/h;Ljava/lang/String;Ljava/util/List;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->ConvexModel:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Decomposition:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v2, v3, :cond_2

    :cond_1
    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$m;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$m;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LC5/b$a;->InputFile:LC5/b$a;

    const-string v6, ".mesh"

    invoke-direct {v2, v3, v4, v5, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Capsule:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v2, v3, :cond_3

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$n;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$n;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    sget-object v4, LC5/b$a;->SLFloat:LC5/b$a;

    const-string v5, "Length"

    invoke-direct {v2, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v5, "capsuleLength"

    invoke-virtual {v2, v1, p0, v5, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$b;

    invoke-direct {v5, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    const-string v6, "Width"

    invoke-direct {v2, v5, v6, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const-string v4, "capsuleWidth"

    invoke-virtual {v2, v1, p0, v4, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Decomposition:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v2, v3, :cond_4

    new-instance v2, LC5/b;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$c;

    invoke-direct {v5, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    sget-object v7, LC5/b$a;->SLFloatSlider:LC5/b$a;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const-string v6, "Quality"

    const/4 v8, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;FFF)V

    const-string v3, "decompositionQuality"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v2, v1, p0, v3, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$d;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    const-string v4, "Max hulls"

    sget-object v5, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v2, v3, v4, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const-string v3, "maxHulls"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->INT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v2, v1, p0, v3, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v1, v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getPathFinderInspector(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e;

    invoke-direct {v2, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;Landroid/content/Context;)V

    const-string p1, "Staticbody physics"

    invoke-static {v1, p1, v2}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method public getMaxHulls()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->maxHulls:I

    return v0
.end method

.method public getNavMesh()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->navMesh:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;

    return-object v0
.end method

.method public getOnPhysicsMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->L:[F

    return-object v0
.end method

.method public getPathFinderInspector(Landroid/content/Context;)Ljava/util/List;
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

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$f;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PATH_FINDER_COLLIDER:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->navMesh:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public getShape()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Collider"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->Collider:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public getTypeName(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "types"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Sphere:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Capsule:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->ConvexModel:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v1, v2, :cond_3

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Decomposition:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v1, v2, :cond_4

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_4
    :goto_0
    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public invalidateBulletShapeChildrenCache()V
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getBulletShapeChildrenCache()Lh9/b;

    move-result-object v0

    invoke-virtual {v0}, Lh9/b;->c()V

    return-void
.end method

.method public isActiveForPhysics()Z
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v0

    return v0
.end method

.method public isColliding()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->X:Lj9/b;

    invoke-virtual {v0}, Lj9/b;->g()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->isColliding()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isSuppressCollision()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->G:Z

    return v0
.end method

.method public loadAsync(LLb/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    const/4 v2, 0x0

    const-string v3, ")"

    const-string v4, "),(Collider),(Collision),("

    const-string v5, "("

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->modelFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, LLb/a;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->syncModelFileState()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getCollisionVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    invoke-static {v0}, LDb/b;->a(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)LDb/a;

    move-result-object v0

    invoke-virtual {v0}, LDb/a;->j()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->Z:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F:Z

    invoke-interface {p1}, LLb/a;->e()V

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->ConvexModel:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->modelFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, LLb/a;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->syncModelFileState()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getCollisionVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result v1

    if-lez v1, :cond_2

    :try_start_1
    invoke-static {v0}, LEb/b;->a(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)LEb/a;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->P:LEb/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F:Z

    invoke-interface {p1}, LLb/a;->e()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onAttach()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->resolveReadyHostPhysicsComponent()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->syncModelFileState()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->M:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->i2:LCb/a;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->L1(LCb/a;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->M:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->i2:LCb/a;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->v(LCb/a;)V

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->refreshHierarchyMatrixListenerBinding()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->updateAreaTriggerState(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->H1:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->requestColliderRefresh()V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k0()I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->R1:I

    return-void
.end method

.method public onDeserialized()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDeserialized()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->removeHierarchyMatrixListeners()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->M:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->i2:LCb/a;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->L1(LCb/a;)V

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->releasePreparedShapeCandidates()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->removeFromPhysics()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->H1:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->L1:Z

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    return-void
.end method

.method public onHierarchyActiveChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onHierarchyActiveChanged(Z)V

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->removeFromPhysics()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->H1:Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->navMesh:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->R:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;

    invoke-virtual {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->refreshHierarchyMatrixListenerBinding()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->updateAreaTriggerState(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->H1:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->requestColliderRefresh()V

    return-void
.end method

.method public onHostPhysicsEntityChanged(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "physicsComponent"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onHostPhysicsEntityChanged(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;)V

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->sanitizeHostPhysicsComponent(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->refreshHierarchyMatrixListenerBinding()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->updateAreaTriggerState(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->removeFromPhysics()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->H1:Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->navMesh:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->R:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;

    invoke-virtual {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->H1:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->requestColliderRefresh()V

    return-void
.end method

.method public onParentChanged()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onParentChanged()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->resolveReadyHostPhysicsComponent()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->refreshHierarchyMatrixListenerBinding()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->updateAreaTriggerState(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->H1:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->F:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->requestColliderRefresh()V

    :cond_1
    return-void
.end method

.method public onPhysicsGetTransformations()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->X:Lj9/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lj9/b;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public reloadFilesPaths(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->modelFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->modelFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collider: REPLACING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->modelFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " TO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->modelFile:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public resyncOnFrame()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->X:Lj9/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lj9/b;->i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public setBounciness(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounciness"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->bounciness:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->bounciness:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->i(F)V

    :cond_1
    return-void
.end method

.method public setCapsuleLength(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capsuleLength"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleLength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleLength:F

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->markShapeDirty()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;

    :cond_1
    return-void
.end method

.method public setCapsuleWidth(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capsuleWidth"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->capsuleWidth:F

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->markShapeDirty()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->E:LJAVARuntime/GizmoObject;

    :cond_1
    return-void
.end method

.method public setConvexVertex(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->directVertexSet(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->modelFile:Ljava/lang/String;

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->ConvexModel:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->setShape(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;)V

    return-void
.end method

.method public setDecompositionQuality(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decompositionQuality"
        }
    .end annotation

    const v0, 0x3c23d70a    # 0.01f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, LNc/b;->E(FFF)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->decompositionQuality:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->decompositionQuality:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->markShapeDirty()V

    :cond_0
    return-void
.end method

.method public setFriction(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friction"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->friction:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->friction:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->j(F)V

    :cond_1
    return-void
.end method

.method public setMaxHulls(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxHulls"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x400

    invoke-static {v0, p1, v1}, LNc/b;->F(III)I

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->maxHulls:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->maxHulls:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->markShapeDirty()V

    :cond_0
    return-void
.end method

.method public setModelFile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelFile"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->modelFile:Ljava/lang/String;

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->modelFile:Ljava/lang/String;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->syncModelFileState()V

    return-void
.end method

.method public setPreparedShapeCandidates(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shape",
            "sourceVertex",
            "shapeCandidates"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;",
            "Ljava/util/List<",
            "LW8/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->releasePreparedShapeCandidates()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->M1:Ljava/util/List;

    if-eqz p3, :cond_0

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 p3, 0x0

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->Q:Ljava/lang/String;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->modelFile:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->replaceCollisionVertexReference(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-eq p2, p1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    :cond_2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->markShapeDirty()V

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->H2:LJAVARuntime/Component;

    return-void
.end method

.method public setShape(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shape"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->markShapeDirty()V

    :cond_1
    return-void
.end method

.method public setSuppressCollision(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suppressCollision"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->G:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->G:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->removeFromPhysics()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->markShapeDirty()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVertex(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->directVertexSet(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->modelFile:Ljava/lang/String;

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->setShape(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;)V

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->H2:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Collider;

    invoke-direct {v0, p0}, LJAVARuntime/Collider;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->H2:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public updateOnSelectedHierarchy()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->updateOnSelectedHierarchy()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->drawGizmo()V

    return-void
.end method

.method public updatePhysics()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->V:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->l(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_0
    return-void
.end method
