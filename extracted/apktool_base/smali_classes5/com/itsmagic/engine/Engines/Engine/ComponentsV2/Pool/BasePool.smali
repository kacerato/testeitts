.class public abstract Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Lh9/a;
.implements Lu9/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$N;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$M;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;
    }
.end annotation


# static fields
.field public static final F6:F = 0.01f

.field public static final F7:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;"
        }
    .end annotation
.end field

.field public static final F8:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;"
        }
    .end annotation
.end field

.field public static final H6:I = 0x10


# instance fields
.field public volatile D0:Z

.field public final D2:Lcom/jme3/math/Vector3f;

.field public D3:Z

.field public D4:Z

.field public final D5:Ljava/lang/Object;

.field public final D6:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public E:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public F:I

.field public volatile F1:Z

.field public final F2:Lj9/b;

.field public F3:LO8/a;

.field public volatile F4:Z

.field public F5:Z

.field public final G:Ljava/lang/Object;

.field public final H:Ljava/lang/Object;

.field public volatile H1:Z

.field public final H2:Lcom/jme3/math/Transform;

.field public H3:I

.field public H4:Ljava/lang/Runnable;

.field public final H5:LMc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMc/a<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;",
            ">;"
        }
    .end annotation
.end field

.field public final I:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile J:F

.field public final K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm9/c;",
            ">;"
        }
    .end annotation
.end field

.field public volatile L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm9/c;",
            ">;"
        }
    .end annotation
.end field

.field public volatile L1:Z

.field public final L2:Ln9/a;

.field public final M:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/Material/Material;",
            "Lm9/c;",
            ">;"
        }
    .end annotation
.end field

.field public volatile M1:Z

.field public final M2:Ln9/b;

.field public M3:Z

.field public final N:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/Material/Material;",
            "Lda/d;",
            ">;"
        }
    .end annotation
.end field

.field public final O:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;",
            "LCb/a;",
            ">;"
        }
    .end annotation
.end field

.field public final P:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;"
        }
    .end annotation
.end field

.field public final Q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lib/h;",
            ">;"
        }
    .end annotation
.end field

.field public volatile R:Z

.field public R1:Z

.field public final R2:Lm9/e;

.field public S:Z

.field public final T:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$h;

.field public final U:Ljava/lang/Runnable;

.field public final V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;",
            ">;"
        }
    .end annotation
.end field

.field public volatile V1:LDc/a;

.field public final V2:Ljava/lang/Runnable;

.field public final W:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;",
            ">;"
        }
    .end annotation
.end field

.field public final X:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final Y:Lm9/h;

.field public volatile Z:Z

.field public volatile b1:Z

.field public volatile b2:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

.field private bounciness:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public brushIntensity:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public brushObjectSpacing:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public brushPlaceObjectsPerMeter:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public brushSize:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public volatile castShadow:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public volatile enableImpostorSystem:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public volatile enableMaxRenderDistanceV2:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private friction:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public volatile i1:Z

.field public final i2:LMc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMc/i<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;",
            ">;"
        }
    .end annotation
.end field

.field public final i3:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject$a;

.field public volatile impostorLighting:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public volatile impostorStartDistance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public impostorTextureResolutionID:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public impostorWindEffect:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public volatile m1:Z

.field public final m2:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;",
            ">;"
        }
    .end annotation
.end field

.field public volatile m3:Z

.field public m4:Z

.field public volatile maxRenderDistance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public maxScale:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public minScale:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private final objects:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;",
            ">;"
        }
    .end annotation
.end field

.field public final q0:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile q1:Z

.field public final q2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public q3:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;

.field public randomizeRotationX:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public randomizeRotationY:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public randomizeRotationZ:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public volatile receiveShadow:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public selectedBrushID:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private staticMesh:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private stickMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$N;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private stickToTerrain:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public volatile v0:I

.field public final v1:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$M;",
            ">;"
        }
    .end annotation
.end field

.field public final v2:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public final v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public v4:Z

.field public volatile y1:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$H;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$H;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F7:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$I;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$I;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F8:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedComponentType"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;->Data:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->enableMaxRenderDistanceV2:Z

    const/high16 v0, 0x437a0000    # 250.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->maxRenderDistance:F

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->enableImpostorSystem:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorLighting:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorTextureResolutionID:I

    const/high16 v0, 0x42000000    # 32.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorStartDistance:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorWindEffect:F

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->castShadow:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->receiveShadow:Z

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$N;->Terrain:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$N;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->stickMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$N;

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->stickToTerrain:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->G:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->K:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->N:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->O:Ljava/util/Map;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->P:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Q:Ljava/util/Map;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$k;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->T:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$h;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$v;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$v;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->U:Ljava/lang/Runnable;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->V:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->W:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->X:Ljava/util/Map;

    new-instance v1, Lm9/h;

    invoke-direct {v1}, Lm9/h;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Y:Lm9/h;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->q0:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->D0:Z

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->b1:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->i1:Z

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m1:Z

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->q1:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v1:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F1:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H1:Z

    new-instance v1, LMc/i;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, LMc/i;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->i2:LMc/i;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m2:Ljava/util/Map;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->q2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v2:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->D2:Lcom/jme3/math/Vector3f;

    new-instance v1, Lj9/b;

    invoke-direct {v1, p0}, Lj9/b;-><init>(Lh9/a;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F2:Lj9/b;

    new-instance v1, Lcom/jme3/math/Transform;

    invoke-direct {v1}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H2:Lcom/jme3/math/Transform;

    new-instance v1, Ln9/a;

    invoke-direct {v1}, Ln9/a;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L2:Ln9/a;

    new-instance v1, Ln9/b;

    invoke-direct {v1}, Ln9/b;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M2:Ln9/b;

    new-instance v1, Lm9/e;

    invoke-direct {v1}, Lm9/e;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->R2:Lm9/e;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$C;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$C;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->V2:Ljava/lang/Runnable;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$D;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$D;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->i3:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject$a;

    const/high16 v1, 0x42480000    # 50.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->brushSize:F

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->brushIntensity:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->selectedBrushID:I

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->brushPlaceObjectsPerMeter:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->brushObjectSpacing:F

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    const/4 v1, 0x0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->bounciness:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->friction:F

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->randomizeRotationX:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->randomizeRotationY:Z

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->randomizeRotationZ:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->staticMesh:Z

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->minScale:F

    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->maxScale:F

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;->None:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->q3:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->D3:Z

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H3:I

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M3:Z

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v4:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->D5:Ljava/lang/Object;

    new-instance p1, LMc/a;

    invoke-direct {p1}, LMc/a;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H5:LMc/a;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->D6:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->S:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->requestBaseRebuildFromHook()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Lm9/e;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->R2:Lm9/e;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->b2:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    return-object p0
.end method

.method public static synthetic access$1202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F1:Z

    return p1
.end method

.method public static synthetic access$1300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->onPoolMaterialChanged(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->J:F

    return p0
.end method

.method public static synthetic access$1402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->J:F

    return p1
.end method

.method public static synthetic access$1500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->copyMaterialObjects()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->updateImpostorOwnerMaterialObject()V

    return-void
.end method

.method public static synthetic access$1700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->buildCollisionBakeFromBaseColliders(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->scheduleCollisionBake(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    return-void
.end method

.method public static synthetic access$1902(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->q1:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->R:Z

    return p0
.end method

.method public static synthetic access$2002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->b1:Z

    return p1
.end method

.method public static synthetic access$2102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->i1:Z

    return p1
.end method

.method public static synthetic access$2200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->U:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    return-object p0
.end method

.method public static synthetic access$2302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    return-object p1
.end method

.method public static synthetic access$2400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->staticMesh:Z

    return p0
.end method

.method public static synthetic access$2402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->staticMesh:Z

    return p1
.end method

.method public static synthetic access$2500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$N;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->stickMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$N;

    return-object p0
.end method

.method public static synthetic access$2502(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$N;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$N;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->stickMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$N;

    return-object p1
.end method

.method public static synthetic access$2600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->stickToTerrain:Z

    return p0
.end method

.method public static synthetic access$2700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$2800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->bounciness:F

    return p0
.end method

.method public static synthetic access$2802(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->bounciness:F

    return p1
.end method

.method public static synthetic access$2900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->friction:F

    return p0
.end method

.method public static synthetic access$2902(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->friction:F

    return p1
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->applyBaseHookRegistrations()V

    return-void
.end method

.method public static synthetic access$3000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)LMc/i;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->i2:LMc/i;

    return-object p0
.end method

.method public static synthetic access$3100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    return-object p0
.end method

.method public static synthetic access$3200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;LO8/a;)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->calculateBrushAreaRatio(LO8/a;)F

    move-result p0

    return p0
.end method

.method public static synthetic access$3300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;LO8/a;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->countObjectsInsideBrush(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;LO8/a;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$3400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;FFF)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->canPlaceInSquareMeterCell(FFF)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$3500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;FFF)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->canPlaceAtMinimumSpacing(FFF)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$3600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->D6:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->clearBaseState()V

    return-void
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->D4:Z

    return p0
.end method

.method public static synthetic access$502(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->D4:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Z
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->rebuildRenderable()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$702(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->y1:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)LDc/a;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->V1:LDc/a;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Lm9/h;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Y:Lm9/h;

    return-object p0
.end method

.method private applyBaseHookRegistrations()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->P:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->P:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->registerBaseStructureListenerLocked(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->V:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->V:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->registerBaseSourceListenersLocked(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->registerMaterialListenerLocked(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    goto :goto_2

    :cond_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private applyColliderShapeSizing(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "collider",
            "sourceVertex",
            "localMat4"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getShape()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    move-result-object v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Box:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Sphere:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Capsule:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getCapsuleWidth()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v1, v0}, LNc/b;->M(FF)F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getCapsuleLength()F

    move-result p1

    invoke-static {v1, p1}, LNc/b;->M(FF)F

    move-result p1

    add-float/2addr p1, v3

    move v0, v3

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    move p1, v3

    move v0, p1

    :goto_1
    if-nez v2, :cond_4

    return-void

    :cond_4
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object p2

    if-nez p2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->u()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const v1, 0x3727c5ac    # 1.0E-5f

    cmpg-float v5, v2, v1

    if-ltz v5, :cond_7

    cmpg-float v5, v4, v1

    if-ltz v5, :cond_7

    cmpg-float v1, p2, v1

    if-gez v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->G()V

    div-float/2addr v3, v2

    div-float/2addr p1, v4

    div-float/2addr v0, p2

    invoke-virtual {v1, v3, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->setScale(FFF)V

    invoke-virtual {p3, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    :cond_7
    :goto_2
    return-void
.end method

.method private applyPreparedCollisionChanges()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Y:Lm9/h;

    invoke-virtual {v0}, Lm9/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Y:Lm9/h;

    invoke-virtual {v0}, Lm9/h;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Y:Lm9/h;

    invoke-virtual {v0}, Lm9/h;->f()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Y:Lm9/h;

    invoke-virtual {v1}, Lm9/h;->e()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->notifyCollisionObjectRemoved(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->notifyCollisionObjectChanged(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->notifyCollisionObjectAdded(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    :goto_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Y:Lm9/h;

    invoke-virtual {v0}, Lm9/h;->a()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Y:Lm9/h;

    invoke-virtual {v0}, Lm9/h;->i()V

    return-void
.end method

.method private applyScheduledCollisionBake()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v1:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$M;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$M;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f0()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->E:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-ne v3, v1, :cond_2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F:I

    if-ne v3, v2, :cond_2

    return-void

    :cond_2
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->E:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F:I

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$M;->b:LDc/a;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->V1:LDc/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->y1:Z

    return-void
.end method

.method private buildCollisionBakeFromBaseColliders(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inverseBaseObjectMat"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->copyBaseColliders()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->resolveColliderBakeVertex(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result v5

    if-gtz v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v5}, Lib/g;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->applyColliderShapeSizing(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;

    invoke-direct {v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative;->c(Ljava/util/List;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    return-object p1
.end method

.method private buildCollisionEntry(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pooledObject"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->V1:LDc/a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->getScale()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_1

    move v1, v2

    :cond_1
    new-instance v2, LDc/c;

    invoke-direct {v2, v0}, LDc/c;-><init>(LDc/a;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->D2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->D2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v0}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->getId()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setUserIndex(I)V

    new-instance v0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-direct {v0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;

    invoke-direct {v1, p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H2:Lcom/jme3/math/Transform;

    invoke-virtual {v0, v2, v3}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->addChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Transform;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setUserIndex(I)V

    new-instance v2, Li9/b;

    invoke-direct {v2, v0, v1}, Li9/b;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->i()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->j()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->k()F

    move-result v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->n()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v5

    invoke-virtual {v2, v0, v3, v4, v5}, Li9/b;->s(FFFLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->bounciness:F

    invoke-virtual {v2, v0}, Li9/b;->n(F)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->friction:F

    invoke-virtual {v2, v0}, Li9/b;->o(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v2, v0}, Li9/b;->p(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;

    invoke-direct {v0, p1, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;Li9/b;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;)V

    return-object v0
.end method

.method private buildCollisionMesh(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)LDc/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collisionBakeVertex"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object p1

    invoke-static {v1, p1}, LW8/a;->d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)LDc/a;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private calculateBrushAreaRatio(LO8/a;)F
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brush"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v1, v3, :cond_2

    int-to-float v4, v1

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    const/high16 v6, 0x41800000    # 16.0f

    div-float/2addr v4, v6

    move v7, v0

    :goto_1
    if-ge v7, v3, :cond_1

    int-to-float v8, v7

    add-float/2addr v8, v5

    div-float/2addr v8, v6

    invoke-virtual {p1, v4, v8}, LO8/a;->c(FF)F

    move-result v8

    const v9, 0x3c23d70a    # 0.01f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    int-to-float p1, v2

    const/16 v0, 0x100

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method private canPlaceAtMinimumSpacing(FFF)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "z",
            "minObjectSpacing"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    mul-float/2addr p3, p3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->i()F

    move-result v4

    sub-float/2addr v4, p1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->k()F

    move-result v3

    sub-float/2addr v3, p2

    mul-float/2addr v4, v4

    mul-float/2addr v3, v3

    add-float/2addr v4, v3

    cmpg-float v3, v4, p3

    if-gez v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private canPlaceInSquareMeterCell(FFF)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "z",
            "placeDensity"
        }
    .end annotation

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p2, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getSquareMeterCellObjectLimit(IIF)I

    move-result p3

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    return v0

    :cond_0
    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->i()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->k()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    if-ne v3, p2, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-lt v2, p3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private checkBase()Z
    .locals 2

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->startCheckBase()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->isBaseColliderCacheDirty()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private clearBaseSourceListenersLocked()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->O:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LCb/a;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->L1(LCb/a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->O:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private clearBaseState()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->clearMaterialListenersLocked()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->clearBaseSourceListenersLocked()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->clearBaseStructureListenersLocked()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->K:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->V:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->W:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->X:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L1:Z

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L:Ljava/util/List;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearBaseStructureListenersLocked()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->P:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->P:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->T:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$h;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->w1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$h;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Q:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/h;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private clearCollisionEntries()V
    .locals 2

    sget-object v0, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->clearCollisionEntriesLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearCollisionEntriesLocked()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->i2:LMc/i;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->i2:LMc/i;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;->b:Li9/b;

    invoke-virtual {v1}, Li9/b;->f()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H5:LMc/a;

    invoke-virtual {v0}, LMc/a;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->i2:LMc/i;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m2:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private clearMaterialListenersLocked()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->N:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lda/d;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->X(Lda/d;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->N:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private collectBaseStructureSourceLocked(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->P:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->P:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private computeColliderBakeSignature(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collider"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v1

    const/16 v2, 0x1f

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getShape()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    move-result-object v3

    mul-int/2addr v1, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    add-int/2addr v1, v4

    iget-object v4, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v4, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getEffectiveGlobalTransformFrameID()I

    move-result v4

    add-int/2addr v1, v4

    mul-int/2addr v1, v2

    iget-object v4, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v4

    add-int/2addr v1, v4

    :cond_2
    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Capsule:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v3, v4, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getCapsuleWidth()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getCapsuleLength()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v1, v3

    :cond_3
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->resolveColliderBakeVertex(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    mul-int/2addr v1, v2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f0()I

    move-result v0

    :cond_4
    add-int/2addr v1, v0

    return v1
.end method

.method private copyBaseColliders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->W:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private copyMaterialObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lm9/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L:Ljava/util/List;

    return-object v0
.end method

.method private countObjectsInsideBrush(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;LO8/a;)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "brushStart",
            "brushEnd",
            "brush"
        }
    .end annotation

    iget v0, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    const/4 v4, 0x0

    if-lez v3, :cond_3

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->findInSquare(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Ljava/util/List;

    move-result-object p2

    move v2, v4

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_2

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm9/k;

    invoke-virtual {v3}, Lm9/k;->b()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->i()F

    move-result v5

    iget v6, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v0

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->k()F

    move-result v3

    iget v6, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr v3, v6

    div-float/2addr v3, v1

    invoke-virtual {p3, v5, v3}, LO8/a;->c(FF)F

    move-result v3

    const v5, 0x3c23d70a    # 0.01f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v4
.end method

.method private getImpostorSourceObject()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->b2:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    return-object v0
.end method

.method private getSquareMeterCellObjectLimit(IIF)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cellX",
            "cellZ",
            "placeDensity"
        }
    .end annotation

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v1, v0

    sub-float/2addr p3, v1

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getSquareMeterCellRandom01(II)F

    move-result p1

    cmpg-float p1, p1, p3

    if-gez p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method private getSquareMeterCellRandom01(II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cellX",
            "cellZ"
        }
    .end annotation

    const v0, 0x4606f1f

    mul-int/2addr p1, v0

    const v0, 0x5700411

    mul-int/2addr p2, v0

    xor-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0xd

    xor-int/2addr p1, p2

    const p2, 0x4bf19f61    # 3.1669954E7f

    mul-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0x10

    xor-int/2addr p1, p2

    const p2, 0x7fffffff

    and-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x4f000000

    div-float/2addr p1, p2

    return p1
.end method

.method private hasEnabledBaseCollider()Z
    .locals 4

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->copyBaseColliders()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private hasPendingCollisionSync()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v1:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->y1:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Y:Lm9/h;

    invoke-virtual {v0}, Lm9/h;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H5:LMc/a;

    invoke-virtual {v0}, LMc/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

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

.method private isBaseColliderCacheDirty()Z
    .locals 7

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->copyBaseColliders()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iget-object v5, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->X:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->computeColliderBakeSignature(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)I

    move-result v3

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v4

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :goto_2
    return v4

    :cond_4
    return v1
.end method

.method private levelTerrainAsync(Ljava/lang/Runnable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->stickToTerrain:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->stickMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$N;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$N;->None:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$N;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v4:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->D5:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H4:Ljava/lang/Runnable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F4:Z

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v4:Z

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return v0
.end method

.method private notifyCollisionObjectAdded(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pooledObject"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->V1:LDc/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m2:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H5:LMc/a;

    invoke-virtual {v0, p1}, LMc/a;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyCollisionObjectChanged(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pooledObject"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->V1:LDc/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m2:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->notifyCollisionObjectRemoved(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H5:LMc/a;

    invoke-virtual {v0, p1}, LMc/a;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private notifyCollisionObjectRemoved(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pooledObject"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->removePendingCollisionBuild(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m2:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->i2:LMc/i;

    invoke-virtual {v0, p1}, LMc/i;->remove(Ljava/lang/Object;)Z

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;->b:Li9/b;

    invoke-virtual {p1}, Li9/b;->f()V

    return-void
.end method

.method private onPoolMaterialChanged(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "material",
            "filamentMaterial"
        }
    .end annotation

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm9/c;

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->requestFullChunkRebuild()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F1:Z

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private prepareBase()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L2:Ln9/a;

    invoke-virtual {v0}, Ln9/a;->p()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L2:Ln9/a;

    invoke-virtual {v0}, Ln9/a;->d()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M2:Ln9/b;

    invoke-virtual {v0}, Ln9/b;->l()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->copyMaterialObjects()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm9/c;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v3

    invoke-virtual {v2, v3}, Lm9/c;->j(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->clearBaseState()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->registerBaseStructureListenerLocked(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o0()Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->E()Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$a;

    invoke-direct {v2, p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    invoke-static {v2}, Lca/c;->D(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private rebuildAllCollisionEntries()V
    .locals 4

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->clearCollisionEntriesLocked()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->V1:LDc/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->y1:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->G:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H5:LMc/a;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-virtual {v2, v3}, LMc/a;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->y1:Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private rebuildRenderable()Z
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->R2:Lm9/e;

    invoke-virtual {v0}, Lm9/e;->e()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->q0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v0:I

    :cond_0
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Z:Z

    return v1

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->q0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v0:I

    if-eq v3, v0, :cond_2

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v0:I

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Z:Z

    return v1

    :cond_2
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Z:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L2:Ln9/a;

    invoke-virtual {v0}, Ln9/a;->p()V

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F1:Z

    return v2
.end method

.method private registerBaseSourceListenersLocked(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelRenderer"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->O:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$F;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$F;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->O:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->v(LCb/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private registerBaseStructureListenerLocked(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->P:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->P:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->T:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$h;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->u(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$h;)V

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$G;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$G;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Q:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u(Lib/h;)V

    :cond_1
    return-void
.end method

.method private registerMaterialListenerLocked(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->N:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$E;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$E;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->N:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->j(Lda/d;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private removePendingCollisionBuild(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pooledObject"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H5:LMc/a;

    invoke-virtual {v0, p1}, LMc/a;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private requestBaseRebuildFromHook()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F5:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->b1:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->i1:Z

    return-void
.end method

.method private requestFullChunkRebuild()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->q0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m4:Z

    return-void
.end method

.method private resolveColliderBakeVertex(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collider"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getShape()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getCollisionVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->ConvexModel:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-eq v0, v2, :cond_6

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Decomposition:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Box:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v0, p1, :cond_3

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->C1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Sphere:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v0, p1, :cond_4

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SPHERE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->C1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    return-object p1

    :cond_4
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Capsule:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v0, p1, :cond_5

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CAPSULE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->C1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v1

    :cond_6
    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getConvexVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getCollisionVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private runAddBrush()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->D6:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$A;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$A;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    invoke-static {v0}, Lca/c;->D(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private runPendingLevelTerrainTask()V
    .locals 13

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->D5:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F4:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_e

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F4:Z

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H4:Ljava/lang/Runnable;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H4:Ljava/lang/Runnable;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    :try_start_1
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->stickMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$N;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$N;->Terrain:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$N;

    if-ne v3, v4, :cond_9

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v4}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    move v5, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v7

    if-eqz v7, :cond_1

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_1
    move-exception v1

    goto/16 :goto_c

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Llb/e;->c()Llb/e;

    move-result-object v4

    move v5, v1

    :goto_2
    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const v7, -0x800001

    move v8, v1

    move v9, v8

    move v10, v9

    :goto_3
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_6

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->isDataLoaded()Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->i()F

    move-result v9

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->k()F

    move-result v12

    invoke-virtual {v11, v9, v12}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->isInsideTerrain(FF)Z

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v12, 0x1

    if-eqz v9, :cond_5

    :try_start_3
    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->i()F

    move-result v9

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->k()F

    move-result v10

    invoke-virtual {v11, v9, v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getWorldY(FF)F

    move-result v9

    cmpl-float v10, v9, v7

    if-lez v10, :cond_4

    invoke-virtual {v6, v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->u(F)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v7, v9

    :catch_0
    :cond_4
    move v9, v12

    move v10, v9

    goto :goto_4

    :cond_5
    move v9, v12

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :catch_1
    move-exception v6

    goto :goto_5

    :cond_6
    if-eqz v9, :cond_7

    if-nez v10, :cond_7

    :try_start_4
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :goto_5
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TERRAIN LEVELING POOL OBJECTS["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Llb/e;->h(Ljava/lang/String;)V

    goto :goto_a

    :cond_9
    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$N;->Physics:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$N;

    if-ne v3, v4, :cond_b

    move v3, v1

    :goto_7
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    new-instance v5, Laa/e;

    invoke-direct {v5}, Laa/e;-><init>()V

    invoke-virtual {v5, v1}, Laa/e;->o(Z)V

    invoke-virtual {v5, v1}, Laa/e;->n(Z)V

    new-instance v6, Laa/c;

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->i()F

    move-result v8

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->k()F

    move-result v9

    const v10, 0x47c34f80    # 99999.0f

    invoke-direct {v7, v8, v10, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->down()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Laa/c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    invoke-virtual {v5, v6}, Laa/e;->y(Laa/c;)Laa/a;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Laa/a;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->u(F)V

    goto :goto_9

    :catch_2
    move-exception v4

    goto :goto_8

    :cond_a
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_9

    :goto_8
    :try_start_7
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    :goto_a
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$b;

    invoke-direct {v1, p0, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Ljava/util/List;Ljava/lang/Runnable;)V

    :goto_b
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    goto :goto_d

    :goto_c
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$b;

    invoke-direct {v1, p0, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Ljava/util/List;Ljava/lang/Runnable;)V

    goto :goto_b

    :goto_d
    return-void

    :catchall_2
    move-exception v1

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$b;

    invoke-direct {v3, p0, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-static {v3}, LK8/a;->I(Ljava/lang/Runnable;)V

    throw v1

    :goto_e
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v1
.end method

.method private runRemoveBrush()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->D6:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$B;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$B;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    invoke-static {v0}, Lca/c;->D(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private scheduleCollisionBake(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collisionBakeVertex"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->buildCollisionMesh(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)LDc/a;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v1:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$M;

    invoke-direct {v2, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$M;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;LDc/a;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private shouldUsePoolCollision()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m1:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->V1:LDc/a;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->hasEnabledBaseCollider()Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method private syncPoolCollisionState()V
    .locals 4

    sget-object v0, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->applyPreparedCollisionChanges()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->applyScheduledCollisionBake()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->shouldUsePoolCollision()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->clearCollisionEntriesLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->y1:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->rebuildAllCollisionEntries()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->y1:Z

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H5:LMc/a;

    invoke-virtual {v1}, LMc/a;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H5:LMc/a;

    invoke-virtual {v1}, LMc/a;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, LMc/a;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m2:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->buildCollisionEntry(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m2:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->i2:LMc/i;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateBakeSuppressor()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->BakeChildSuppressor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ComponentUtils/BakeChildSuppressor;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m1:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->q1:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ComponentUtils/BakeChildSuppressor;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ComponentUtils/BakeChildSuppressor;-><init>()V

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->S:Z

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->S:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->S:Z

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->S:Z

    :try_start_1
    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setEnabled(Z)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->S:Z

    goto :goto_1

    :catchall_1
    move-exception v0

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->S:Z

    throw v0

    :cond_2
    :goto_1
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->q1:Z

    :cond_3
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m1:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->b1:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->S:Z

    :try_start_2
    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setEnabled(Z)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->S:Z

    goto :goto_2

    :catchall_2
    move-exception v0

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->S:Z

    throw v0

    :cond_5
    :goto_2
    return-void
.end method

.method private updateCollisionEntry(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->q2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->m(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v2:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->o(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;->b:Li9/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->q2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v2:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v1, v2}, Li9/b;->t(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;->b:Li9/b;

    invoke-virtual {p1}, Li9/b;->v()V

    return-void
.end method

.method private updateImpostorOwnerMaterialObject()V
    .locals 9

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->copyMaterialObjects()Ljava/util/List;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm9/c;

    invoke-virtual {v5}, Lm9/c;->c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v1, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x96

    cmp-long v1, v1, v4

    const/4 v2, 0x1

    if-ltz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    move v4, v3

    move v5, v4

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_7

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lm9/c;

    invoke-virtual {v6}, Lm9/c;->c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v7

    if-lez v7, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v3

    :goto_3
    if-eqz v1, :cond_4

    if-eqz v7, :cond_4

    move v7, v2

    goto :goto_4

    :cond_4
    move v7, v3

    :goto_4
    if-nez v5, :cond_5

    if-eqz v7, :cond_5

    move v8, v2

    goto :goto_5

    :cond_5
    move v8, v3

    :goto_5
    invoke-virtual {v6, v7}, Lm9/c;->k(Z)V

    invoke-virtual {v6, v8}, Lm9/c;->l(Z)V

    if-eqz v8, :cond_6

    move v5, v2

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    if-eqz v5, :cond_8

    move v3, v2

    :cond_8
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L1:Z

    return-void
.end method


# virtual methods
.method public add(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->G:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;-><init>()V

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->x(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->i3:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject$a;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->s(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject$a;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->V1:LDc/a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Y:Lm9/h;

    invoke-virtual {p1, v1}, Lm9/h;->n(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->R2:Lm9/e;

    invoke-virtual {p1, v1}, Lm9/e;->x(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->b2:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F1:Z

    :cond_1
    monitor-exit v0

    return-object v1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

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
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F2:Lj9/b;

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

.method public applyBrushPress()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->q3:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->runRemoveBrush()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->runAddBrush()V

    :goto_0
    return-void
.end method

.method public beforeCollisionEvents()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F2:Lj9/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lj9/b;->j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public canBuildRenderables()Z
    .locals 4

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->copyMaterialObjects()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm9/c;

    invoke-virtual {v3}, Lm9/c;->g()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public checkBase(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_8

    .line 6
    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    .line 7
    instance-of v4, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v4, :cond_3

    .line 8
    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    .line 9
    iget-object v4, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 10
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H:Ljava/lang/Object;

    monitor-enter v4

    .line 11
    :try_start_0
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M:Ljava/util/Map;

    iget-object v6, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm9/c;

    .line 12
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    return v3

    .line 13
    :cond_0
    iget-object v4, v5, Lm9/c;->e:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 14
    iget v6, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->K:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v6, v4, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    iget-object v4, v5, Lm9/c;->f:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 16
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f0()I

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v2, v4, :cond_7

    :cond_2
    :goto_1
    return v3

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 18
    :cond_3
    instance-of v4, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    if-eqz v4, :cond_7

    .line 19
    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    .line 20
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H:Ljava/lang/Object;

    monitor-enter v4

    .line 21
    :try_start_2
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->X:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    .line 22
    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->X:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 23
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v5, :cond_4

    return v3

    .line 25
    :cond_4
    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->computeColliderBakeSignature(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)I

    move-result v2

    if-eqz v6, :cond_5

    .line 26
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v2, :cond_7

    :cond_5
    return v3

    :cond_6
    if-eqz v5, :cond_7

    return v3

    :catchall_1
    move-exception p1

    .line 27
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 28
    :goto_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 29
    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    .line 30
    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->checkBase(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-eqz v2, :cond_9

    return v3

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    return v1
.end method

.method public abstract clearBakeObjects()V
.end method

.method public cloneTo(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->staticMesh:Z

    iput-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->staticMesh:Z

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->stickToTerrain:Z

    iput-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->stickToTerrain:Z

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->receiveShadow:Z

    iput-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->receiveShadow:Z

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->castShadow:Z

    iput-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->castShadow:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->enableMaxRenderDistanceV2:Z

    iput-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->enableMaxRenderDistanceV2:Z

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->maxRenderDistance:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->maxRenderDistance:F

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->enableImpostorSystem:Z

    iput-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->enableImpostorSystem:Z

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorLighting:Z

    iput-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorLighting:Z

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorTextureResolutionID:I

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorTextureResolutionID:I

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorStartDistance:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorStartDistance:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorWindEffect:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorWindEffect:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->b()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    move-result-object v0

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->e()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public delete(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hpo"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->G:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->s(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject$a;)V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->V1:LDc/a;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Y:Lm9/h;

    invoke-virtual {v5, p1}, Lm9/h;->o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    :cond_1
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->R2:Lm9/e;

    invoke-virtual {v5, p1}, Lm9/e;->A(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    :goto_1
    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->b2:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F1:Z

    :cond_3
    monitor-exit v0

    return-void

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public deleteHPOs(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "searchResultList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lm9/k;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm9/k;

    :try_start_0
    invoke-virtual {v1}, Lm9/k;->b()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->delete(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
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

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L2:Ln9/a;

    invoke-virtual {p1}, Ln9/a;->r()V

    return-void
.end method

.method public disabledUpdatePhysics()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->i2:LMc/i;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->i2:LMc/i;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;->b:Li9/b;

    invoke-virtual {v1}, Li9/b;->f()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public emitBaseObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->collectBaseStructureSourceLocked(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->V:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M:Ljava/util/Map;

    iget-object v5, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm9/c;

    if-nez v4, :cond_0

    new-instance v4, Lm9/c;

    iget-object v5, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {v4, v5, v6, v0}, Lm9/c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M:Ljava/util/Map;

    iget-object v6, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->K:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->K:Ljava/util/List;

    invoke-direct {v5, v6}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L:Ljava/util/List;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v4, v2}, Lm9/c;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V

    goto :goto_3

    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->W:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->X:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->computeColliderBakeSignature(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void

    :catchall_2
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public enableCollisionEvents()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public findColliderFromHash(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hash"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->copyBaseColliders()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->Collider:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F2:Lj9/b;

    invoke-virtual {v0, p1}, Lj9/b;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lj9/a;

    move-result-object p1

    return-object p1
.end method

.method public findInCircle(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "center",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            "F)",
            "Ljava/util/List<",
            "Lm9/k;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    mul-float/2addr p2, p2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->l()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtDistanceIgnoreY(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v3

    cmpg-float v4, v3, p2

    if-gtz v4, :cond_0

    new-instance v4, Lm9/k;

    invoke-direct {v4, v2, v3}, Lm9/k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;F)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public findInSphere(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "center",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            "F)",
            "Ljava/util/List<",
            "Lm9/k;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    mul-float/2addr p2, p2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->l()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtDistance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v3

    cmpg-float v4, v3, p2

    if-gtz v4, :cond_0

    new-instance v4, Lm9/k;

    invoke-direct {v4, v2, v3}, Lm9/k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;F)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public findInSquare(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "min",
            "max"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ")",
            "Ljava/util/List<",
            "Lm9/k;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->q0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setXZ(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->l()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    iget v6, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    iget v6, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    iget v6, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    iget v6, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    new-instance v5, Lm9/k;

    invoke-virtual {v4, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtDistanceIgnoreY(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v4

    invoke-direct {v5, v3, v4}, Lm9/k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;F)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getBrushEntries(Landroid/content/Context;)Ljava/util/List;
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

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$d;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    sget-object v2, LC5/b$a;->SLBoolean:LC5/b$a;

    const-string v3, "Randomize rotation X"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$e;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    const-string v3, "Randomize rotation Y"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$f;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    const-string v3, "Randomize rotation Z"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$g;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    sget-object v2, LC5/b$a;->SLFloat:LC5/b$a;

    const-string v3, "Minimal scale"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v4, "minScale"

    invoke-virtual {v0, v1, p0, v4, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$h;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    const-string v4, "Maximum scale"

    invoke-direct {v0, v1, v4, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v2, "maxScale"

    invoke-virtual {v0, v1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getBulletShape()Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBulletShapeChildren()[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;
    .locals 1

    sget-object v0, Lh9/a;->J4:[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    return-object v0
.end method

.method public getCollidersCount()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->i2:LMc/i;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDataEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, LC5/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECTS:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getHPOCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    const-string v2, "Clear all objects"

    invoke-direct {v0, v1, v2}, LC5/b;-><init>(LD5/a;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getEnableImpostorSystem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->enableImpostorSystem:Z

    return v0
.end method

.method public getGameObjectForPhysics()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method

.method public getHPOCount()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f07026a

    return v0
.end method

.method public getImpostorEntries(Landroid/content/Context;)Ljava/util/List;
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

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$r;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$r;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    sget-object v2, LC5/b$a;->SLBoolean:LC5/b$a;

    const-string v3, "Enable impostor system"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    const-string v3, "Impostor lighting"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorTextureResolutionID:I

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$t;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$t;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    const-string v2, "Impostor resolution"

    invoke-static {v2, v0, v1}, LF5/c;->v(Ljava/lang/String;ILF5/c$s0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$u;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$u;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    sget-object v2, LC5/b$a;->SLFloat:LC5/b$a;

    const-string v3, "Impostor start distance"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v3, "impostorStartDistance"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v0, v1, p0, v3, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$w;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$w;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    const-string v3, "Impostor wind effect"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getImpostorLighting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorLighting:Z

    return v0
.end method

.method public getImpostorStartDistance()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorStartDistance:F

    return v0
.end method

.method public getImpostorTexture()Lub/p;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L2:Ln9/a;

    invoke-virtual {v0}, Ln9/a;->n()Lub/p;

    move-result-object v0

    return-object v0
.end method

.method public getImpostorTextureResolutionID()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorTextureResolutionID:I

    return v0
.end method

.method public getImpostorWindEffect()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorWindEffect:F

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

    const p1, 0x7f050098

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

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, LC5/b;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->MISSING_OBJECT_TEMPLATE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v4

    const/16 v5, 0xc

    invoke-direct {v1, v2, v5, v4}, LC5/b;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ADD_MODEL_OBJECT_AS_CHILD:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-direct {v1, v2, v5, v3}, LC5/b;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$c;

    invoke-direct {v2, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Landroid/content/Context;)V

    const v3, 0x7f0c00f9

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/e;ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getImpostorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getPhysicsEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getDataEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getModelEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getBrushEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-object v0
.end method

.method public getMaterialObjectList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lm9/c;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->copyMaterialObjects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getModelEntries(Landroid/content/Context;)Ljava/util/List;
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

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$i;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    sget-object v2, LC5/b$a;->SLBoolean:LC5/b$a;

    const-string v3, "Static bake"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->stickMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$N;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$j;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    const-string v3, "Stick mode"

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$N;

    invoke-static {v3, v4, v0, v1}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$l;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$l;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    const-string v3, "Stick to terrain"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$m;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$m;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CAST_SHADOWS:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$n;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$n;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    const-string v3, "Receive shadows"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$o;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$o;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ENABLE_MAX_DISTANCE:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->enableMaxRenderDistanceV2:Z

    if-eqz v0, :cond_0

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$p;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$p;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    const-string v2, "Max render distance"

    sget-object v3, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v2, "maxRenderDistance"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v0, v1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public getObjectAt(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPhysicsEntries(Landroid/content/Context;)Ljava/util/List;
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

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$x;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$x;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    sget-object v3, LC5/b$a;->SLFloat:LC5/b$a;

    const-string v4, "Bounciness"

    invoke-direct {v1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v5, "bounciness"

    invoke-virtual {v1, v2, p0, v5, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$y;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$y;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->FRICTION:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v3, "friction"

    invoke-virtual {v1, v2, p0, v3, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LAYER:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$z;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$z;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    invoke-virtual {v1, v2, p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->d(Ljava/lang/String;Landroid/content/Context;Lrb/a;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getSelectedBrush()LO8/a;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F3:LO8/a;

    if-eqz v0, :cond_0

    iget v0, v0, LO8/a;->g:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->selectedBrushID:I

    if-eq v0, v1, :cond_3

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->selectedBrushID:I

    sget-object v1, LK8/a;->r:LO8/b;

    invoke-virtual {v1}, LO8/b;->b()I

    move-result v2

    if-lt v0, v2, :cond_1

    invoke-virtual {v1}, LO8/b;->b()I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->selectedBrushID:I

    :cond_1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->selectedBrushID:I

    if-gez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->selectedBrushID:I

    :cond_2
    invoke-virtual {v1}, LO8/b;->b()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->selectedBrushID:I

    invoke-virtual {v1, v0}, LO8/b;->a(I)LO8/a;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F3:LO8/a;

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F3:LO8/a;

    return-object v0
.end method

.method public getStickToTerrain()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->stickToTerrain:Z

    return v0
.end method

.method public getTerrainListenerRadius()F
    .locals 8

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->stickToTerrain:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getTerrainListenerWorldX()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getTerrainListenerWorldZ()F

    move-result v2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->J:F

    invoke-static {v1, v3}, LNc/b;->S0(FF)F

    move-result v1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->G:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->i()F

    move-result v6

    sub-float/2addr v6, v0

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->k()F

    move-result v7

    sub-float/2addr v7, v2

    mul-float/2addr v6, v6

    mul-float/2addr v7, v7

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->getScale()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->J:F

    mul-float/2addr v5, v7

    add-float/2addr v6, v5

    cmpl-float v5, v6, v1

    if-lez v5, :cond_1

    move v1, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    monitor-exit v3

    return v1

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTerrainListenerWorldX()F
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->G:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const v2, -0x800001

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->i()F

    move-result v4

    cmpg-float v5, v4, v1

    if-gez v5, :cond_0

    move v1, v4

    :cond_0
    cmpl-float v5, v4, v2

    if-lez v5, :cond_1

    move v2, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    monitor-exit v0

    return v1

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w0()F

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getTerrainListenerWorldZ()F
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->G:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const v2, -0x800001

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->k()F

    move-result v4

    cmpg-float v5, v4, v1

    if-gez v5, :cond_0

    move v1, v4

    :cond_0
    cmpl-float v5, v4, v2

    if-lez v5, :cond_1

    move v2, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    monitor-exit v0

    return v1

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->y0()F

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public invalidateBulletShapeChildrenCache()V
    .locals 0

    return-void
.end method

.method public isActiveForPhysics()Z
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v0

    return v0
.end method

.method public isImpostorSystemActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->enableImpostorSystem:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L1:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInsideBrush(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->brushSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F7:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->brushSize:F

    div-float/2addr v3, v2

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F8:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isMaxRenderDistanceActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->enableMaxRenderDistanceV2:Z

    return v0
.end method

.method public keepContactList()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lowTaskUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 7
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

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->lowTaskUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->mainCameraAllowEditor()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->updateForCameraAsync(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Y:Lm9/h;

    invoke-virtual {p1}, Lm9/h;->l()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->R2:Lm9/e;

    invoke-virtual {p1}, Lm9/e;->u()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->R2:Lm9/e;

    invoke-virtual {p1}, Lm9/e;->v()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->R2:Lm9/e;

    invoke-virtual {p1}, Lm9/e;->o()V

    invoke-static {}, Ln9/c;->f()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->runPendingLevelTerrainTask()V

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Z:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->R2:Lm9/e;

    invoke-virtual {p1}, Lm9/e;->q()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->G:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-direct {v2, p2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->R2:Lm9/e;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->copyMaterialObjects()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v3

    iget-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->castShadow:Z

    iget-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->receiveShadow:Z

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->J:F

    invoke-virtual/range {v0 .. v6}, Lm9/e;->w(Ljava/util/List;Ljava/util/List;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;ZZF)V

    goto :goto_0

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyObjectChanged(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hpo"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->i3:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject$a;

    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject$a;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    return-void
.end method

.method public onAttach()V
    .locals 5

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->R:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v4:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F5:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->i1:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F1:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->R2:Lm9/e;

    invoke-virtual {v0}, Lm9/e;->i()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->G:Ljava/lang/Object;

    monitor-enter v0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->i3:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject$a;

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->s(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    :goto_1
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->b2:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDetach()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->R:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->G:Ljava/lang/Object;

    monitor-enter v1

    move v2, v0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->objects:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->s(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Y:Lm9/h;

    invoke-virtual {v2}, Lm9/h;->c()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->b2:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->copyMaterialObjects()Ljava/util/List;

    move-result-object v1

    move v2, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm9/c;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v5

    invoke-virtual {v3, v5}, Lm9/c;->j(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->R2:Lm9/e;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v2

    invoke-virtual {v1, v2}, Lm9/e;->m(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L2:Ln9/a;

    invoke-virtual {v1}, Ln9/a;->q()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M2:Ln9/b;

    invoke-virtual {v1}, Ln9/b;->l()V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->D5:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F4:Z

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H4:Ljava/lang/Runnable;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->D4:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H5:LMc/a;

    invoke-virtual {v1}, LMc/a;->clear()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->clearCollisionEntries()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->V1:LDc/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v1:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->y1:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Z:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M1:Z

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->E:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F:I

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m1:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->clearBaseState()V

    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public onDrawFrame()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDrawFrame()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L2:Ln9/a;

    invoke-virtual {v0}, Ln9/a;->s()V

    return-void
.end method

.method public onPhysicsGetTransformations()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F2:Lj9/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lj9/b;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public onTerrainModifiedNear(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->stickToTerrain:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v4:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->requestFullChunkRebuild()V

    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 13
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

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M3:Z

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->i1:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F5:Z

    if-nez v0, :cond_5

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BasePool - preUpdate base check"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    :try_start_0
    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H3:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->b1:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m1:Z

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->i1:Z

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->staticMesh:Z

    if-eqz v3, :cond_4

    invoke-static {}, Lc8/b;->k()Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F5:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->clearBakeObjects()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->i1:Z

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->b1:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->prepareBase()V

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m1:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->requestFullChunkRebuild()V

    goto :goto_2

    :cond_3
    add-int/2addr v3, v2

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H3:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    goto :goto_4

    :goto_3
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    throw p1

    :cond_5
    :goto_4
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m3:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->q3:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;->None:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;

    if-eq v0, v3, :cond_8

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "BasePool - preUpdate brush"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_5

    :cond_6
    move-object v0, v1

    :goto_5
    :try_start_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getSelectedBrush()LO8/a;

    move-result-object v4

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->D3:Z

    if-eqz v4, :cond_7

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->q3:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;

    if-eq v5, v3, :cond_7

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m3:Z

    if-eqz v3, :cond_7

    invoke-virtual {v4}, LO8/a;->f()Lub/p;

    move-result-object v3

    invoke-static {v3}, Lub/p;->L(Lub/p;)Z

    move-result v3

    if-eqz v3, :cond_7

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->D3:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    goto :goto_7

    :cond_7
    :goto_6
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    goto :goto_8

    :goto_7
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    throw p1

    :cond_8
    :goto_8
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m1:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m4:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Y:Lm9/h;

    invoke-virtual {v0}, Lm9/h;->k()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_9
    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "BasePool - preUpdate rebuild"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_9

    :cond_a
    move-object v0, v1

    :goto_9
    :try_start_2
    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m4:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Z:Z

    if-eqz v3, :cond_b

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->rebuildRenderable()Z

    move-result v3

    if-eqz v3, :cond_c

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m4:Z

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->y1:Z

    move v3, v2

    goto :goto_a

    :catchall_2
    move-exception p1

    goto :goto_b

    :cond_b
    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->D4:Z

    if-nez v3, :cond_c

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->canBuildRenderables()Z

    move-result v3

    if-eqz v3, :cond_c

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->D4:Z

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->V2:Ljava/lang/Runnable;

    invoke-direct {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->levelTerrainAsync(Ljava/lang/Runnable;)Z

    :cond_c
    move v3, p2

    :goto_a
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M3:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->Y:Lm9/h;

    invoke-virtual {v3}, Lm9/h;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_d
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    goto :goto_c

    :goto_b
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    throw p1

    :cond_e
    :goto_c
    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "BasePool - preUpdate chunk changes"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_d

    :cond_f
    move-object v0, v1

    :goto_d
    :try_start_3
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->R2:Lm9/e;

    invoke-virtual {v3}, Lm9/e;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->q1:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->b1:Z

    if-eqz v0, :cond_12

    :cond_10
    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "BasePool - preUpdate bake suppressor"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_e

    :cond_11
    move-object v0, v1

    :goto_e
    :try_start_4
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->updateBakeSuppressor()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    :cond_12
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->hasPendingCollisionSync()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "BasePool - preUpdate collision sync"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_f

    :cond_13
    move-object v0, v1

    :goto_f
    :try_start_5
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->syncPoolCollisionState()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    goto :goto_10

    :catchall_3
    move-exception p1

    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    throw p1

    :cond_14
    :goto_10
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F1:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L2:Ln9/a;

    invoke-virtual {v0}, Ln9/a;->w()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_11

    :cond_15
    move p1, p2

    goto :goto_13

    :cond_16
    :goto_11
    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "BasePool - preUpdate impostor preview"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_12

    :cond_17
    move-object v0, v1

    :goto_12
    :try_start_6
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L2:Ln9/a;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorTextureResolutionID:I

    invoke-virtual {v3, v4}, Ln9/a;->x(I)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->copyMaterialObjects()Ljava/util/List;

    move-result-object v10

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L2:Ln9/a;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    iget-boolean v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m1:Z

    iget-boolean v9, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L1:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getImpostorSourceObject()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v11

    iget v12, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->J:F

    move-object v6, p1

    invoke-virtual/range {v5 .. v12}, Ln9/a;->t(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZZZLjava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;F)V

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F1:Z

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H1:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    move p1, v2

    :goto_13
    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "BasePool - preUpdate impostor resources"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_14

    :cond_18
    move-object v0, v1

    :goto_14
    :try_start_7
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->isImpostorSystemActive()Z

    move-result v3

    iget-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->R1:Z

    if-eq v4, v3, :cond_19

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->R1:Z

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H1:Z

    goto :goto_15

    :catchall_4
    move-exception p1

    goto/16 :goto_1a

    :cond_19
    :goto_15
    if-eqz p1, :cond_1a

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M2:Ln9/b;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L2:Ln9/a;

    invoke-virtual {v5}, Ln9/a;->k()F

    move-result v5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L2:Ln9/a;

    invoke-virtual {v6}, Ln9/a;->j()F

    move-result v6

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L2:Ln9/a;

    invoke-virtual {v7}, Ln9/a;->l()F

    move-result v7

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L2:Ln9/a;

    invoke-virtual {v8}, Ln9/a;->m()F

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Ln9/b;->m(FFFF)V

    :cond_1a
    iget-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H1:Z

    if-nez v4, :cond_1b

    if-eqz v3, :cond_23

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M2:Ln9/b;

    invoke-virtual {v4}, Ln9/b;->k()Z

    move-result v4

    if-eqz v4, :cond_23

    :cond_1b
    if-eqz v3, :cond_1c

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getImpostorTexture()Lub/p;

    move-result-object v4

    goto :goto_16

    :cond_1c
    move-object v4, v1

    :goto_16
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M2:Ln9/b;

    invoke-virtual {v5}, Ln9/b;->g()Z

    move-result v5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M2:Ln9/b;

    invoke-virtual {v6}, Ln9/b;->d()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v6

    if-eqz v3, :cond_1d

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M2:Ln9/b;

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorWindEffect:F

    invoke-virtual {v7, v8}, Ln9/b;->n(F)V

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M2:Ln9/b;

    iget-boolean v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorLighting:Z

    invoke-virtual {v7, v4, v8}, Ln9/b;->o(Lub/p;Z)V

    :cond_1d
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M2:Ln9/b;

    invoke-virtual {v7}, Ln9/b;->g()Z

    move-result v7

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M2:Ln9/b;

    invoke-virtual {v8}, Ln9/b;->d()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v8

    if-eq v6, v8, :cond_1e

    move v6, v2

    goto :goto_17

    :cond_1e
    move v6, p2

    :goto_17
    if-eqz v3, :cond_1f

    if-eqz v7, :cond_1f

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M2:Ln9/b;

    invoke-virtual {v8}, Ln9/b;->h()Z

    move-result v8

    if-eqz v8, :cond_1f

    move v8, v2

    goto :goto_18

    :cond_1f
    move v8, p2

    :goto_18
    iput-boolean v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M1:Z

    if-eqz v7, :cond_21

    if-nez p1, :cond_20

    if-eqz v5, :cond_20

    if-eqz v6, :cond_21

    :cond_20
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->R2:Lm9/e;

    invoke-virtual {p1}, Lm9/e;->E()V

    :cond_21
    if-eqz v3, :cond_22

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M2:Ln9/b;

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorWindEffect:F

    iget-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorLighting:Z

    invoke-virtual {p1, v4, v3, v5}, Ln9/b;->i(Lub/p;FZ)Z

    move-result p1

    if-eqz p1, :cond_22

    move p2, v2

    :cond_22
    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H1:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_23
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    invoke-static {}, Lp6/d;->E1()Z

    move-result p1

    if-eqz p1, :cond_24

    const-string p1, "BasePool - preUpdate visibility batch"

    invoke-static {p1}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object p1

    goto :goto_19

    :cond_24
    move-object p1, v1

    :goto_19
    :try_start_8
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->R2:Lm9/e;

    invoke-virtual {p2}, Lm9/e;->d()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    invoke-static {p1}, Lp6/d;->J1(Lp6/g;)V

    invoke-static {}, Lp6/d;->E1()Z

    move-result p1

    if-eqz p1, :cond_25

    const-string p1, "BasePool - preUpdate impostor chunks"

    invoke-static {p1}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v1

    :cond_25
    :try_start_9
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->R2:Lm9/e;

    invoke-virtual {p1}, Lm9/e;->H()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    invoke-static {v1}, Lp6/d;->J1(Lp6/g;)V

    return-void

    :catchall_5
    move-exception p1

    invoke-static {v1}, Lp6/d;->J1(Lp6/g;)V

    throw p1

    :catchall_6
    move-exception p2

    invoke-static {p1}, Lp6/d;->J1(Lp6/g;)V

    throw p2

    :goto_1a
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    throw p1

    :catchall_7
    move-exception p1

    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    throw p1

    :catchall_8
    move-exception p1

    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    throw p1

    :catchall_9
    move-exception p1

    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    throw p1
.end method

.method public propagateEditorViewModes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewModes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf5/d;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->propagateEditorViewModes(Ljava/util/List;)V

    new-instance v0, Lh5/a;

    invoke-direct {v0, p0}, Lh5/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public receiveEvent(LLb/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->receiveEvent(LLb/c;)V

    instance-of v0, p1, LI9/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M2:Ln9/b;

    check-cast p1, LI9/a;

    invoke-virtual {p1}, LI9/a;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln9/b;->j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;)V

    :cond_0
    return-void
.end method

.method public renderBrushes()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->D3:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getSelectedBrush()LO8/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public resyncOnFrame()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F2:Lj9/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lj9/b;->i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public setEnableImpostorSystem(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableImpostorSystem"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->enableImpostorSystem:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->enableImpostorSystem:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H1:Z

    return-void
.end method

.method public setImpostorLighting(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impostorLighting"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorLighting:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorLighting:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H1:Z

    return-void
.end method

.method public setImpostorStartDistance(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impostorStartDistance"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorStartDistance:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorStartDistance:F

    return-void
.end method

.method public setImpostorTextureResolutionID(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impostorTextureResolutionID"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorTextureResolutionID:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorTextureResolutionID:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F1:Z

    return-void
.end method

.method public setImpostorWindEffect(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impostorWindEffect"
        }
    .end annotation

    invoke-static {p1}, LNc/b;->G(F)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorWindEffect:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorWindEffect:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->H1:Z

    return-void
.end method

.method public setStickToTerrain(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stickToTerrain"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->stickToTerrain:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->stickToTerrain:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v4:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->requestFullChunkRebuild()V

    return-void
.end method

.method public abstract startCheckBase()Z
.end method

.method public abstract startPreparationOfBase()V
.end method

.method public updateForCameraAsync(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->R2:Lm9/e;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->isMaxRenderDistanceActive()Z

    move-result v2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->maxRenderDistance:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->isImpostorSystemActive()Z

    move-result v4

    iget-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M1:Z

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->impostorStartDistance:F

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->M2:Ln9/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L2:Ln9/a;

    invoke-virtual {v1}, Ln9/a;->k()F

    move-result v8

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L2:Ln9/a;

    invoke-virtual {v1}, Ln9/a;->j()F

    move-result v9

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L2:Ln9/a;

    invoke-virtual {v1}, Ln9/a;->l()F

    move-result v10

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->L2:Ln9/a;

    invoke-virtual {v1}, Ln9/a;->m()F

    move-result v11

    move-object v1, p1

    invoke-virtual/range {v0 .. v11}, Lm9/e;->h(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;ZFZZFLn9/b;FFFF)V

    return-void
.end method

.method public updatePhysics()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->i2:LMc/i;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->i2:LMc/i;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->updateCollisionEntry(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
