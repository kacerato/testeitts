.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# static fields
.field public static final O:Ljava/lang/String; = "WindEffect"

.field public static final P:Ljava/lang/Class;

.field public static final Q:LI9/a;

.field public static final R:Ljava/lang/String; = "@@ASSET@@Engine/Interface/Models/bilboard.obj"

.field public static final S:Ljava/lang/String; = "@@ASSET@@/Editor/Wind/wind.png"

.field public static final T:F = 0.5f

.field public static final U:F = 0.05f


# instance fields
.field public E:I

.field public transient F:LJAVARuntime/GizmoPath;

.field public transient G:LJAVARuntime/GizmoObject;

.field public transient H:LJAVARuntime/GizmoObject;

.field public transient I:LJAVARuntime/Vertex;

.field public transient J:LJAVARuntime/Vertex;

.field public transient K:LJAVARuntime/Texture;

.field public transient L:LJAVARuntime/Color;

.field public final M:Lib/h;

.field public N:LJAVARuntime/Component;

.field private intensity:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->P:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    new-instance v0, LI9/a;

    invoke-direct {v0}, LI9/a;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->Q:LI9/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "WindEffect"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->intensity:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->E:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->M:Lib/h;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->E:I

    return p0
.end method

.method public static synthetic access$002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->E:I

    return p1
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->emitWindEffect()V

    return-void
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->intensity:F

    return p0
.end method

.method private bindTransformListener()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->M:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->M:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u(Lib/h;)V

    :cond_0
    return-void
.end method

.method private drawWindGizmos()V
    .locals 8

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->ensureWindGizmos()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->F:LJAVARuntime/GizmoPath;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->G:LJAVARuntime/GizmoObject;

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    :try_start_0
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v5, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v5, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->F:LJAVARuntime/GizmoPath;

    invoke-virtual {v5}, LJAVARuntime/GizmoPath;->clear()V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->F:LJAVARuntime/GizmoPath;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->L:LJAVARuntime/Color;

    invoke-virtual {v5, v6}, LJAVARuntime/GizmoPath;->setColor(LJAVARuntime/Color;)V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->F:LJAVARuntime/GizmoPath;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, LJAVARuntime/GizmoPath;->setWireFrameWidth(I)V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->F:LJAVARuntime/GizmoPath;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, LJAVARuntime/GizmoPath;->setThickness(F)V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->F:LJAVARuntime/GizmoPath;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v6

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->F:LJAVARuntime/GizmoPath;

    invoke-virtual {v5}, LJAVARuntime/GizmoPath;->apply()V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->F:LJAVARuntime/GizmoPath;

    invoke-static {v5}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->H:LJAVARuntime/GizmoObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v6

    invoke-virtual {v5, v6}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->H:LJAVARuntime/GizmoObject;

    const v6, 0x3d4ccccd    # 0.05f

    invoke-virtual {v5, v6}, LJAVARuntime/GizmoTransform;->setScale(F)V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->H:LJAVARuntime/GizmoObject;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->L:LJAVARuntime/Color;

    invoke-virtual {v5, v6}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->H:LJAVARuntime/GizmoObject;

    invoke-static {v5}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->G:LJAVARuntime/GizmoObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v6

    invoke-virtual {v5, v6}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->mainCameraAllowEditor()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderCameraPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderCameraPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Z(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->G:LJAVARuntime/GizmoObject;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object v6

    invoke-virtual {v5, v6}, LJAVARuntime/GizmoTransform;->setRotation(LJAVARuntime/Quaternion;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->G:LJAVARuntime/GizmoObject;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v5, v6}, LJAVARuntime/GizmoTransform;->setScale(F)V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->G:LJAVARuntime/GizmoObject;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, LJAVARuntime/GizmoObject;->setEnableTransparency(Z)V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->G:LJAVARuntime/GizmoObject;

    invoke-virtual {v5, v6}, LJAVARuntime/GizmoObject;->setDualFaceRender(Z)V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->G:LJAVARuntime/GizmoObject;

    invoke-static {v5}, LUb/a;->a(LJAVARuntime/GizmoElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :goto_1
    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw v5

    :cond_3
    :goto_2
    return-void
.end method

.method private emitWindEffect()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->emitWindEffect(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;)V

    return-void
.end method

.method private static emitWindEffect(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windEffect"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->Q:LI9/a;

    invoke-virtual {v0, p0}, LI9/a;->b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;)V

    .line 3
    invoke-static {v0}, Lda/h;->g(Lda/b;)V

    .line 4
    new-instance v0, LI9/a;

    invoke-direct {v0}, LI9/a;-><init>()V

    .line 5
    invoke-virtual {v0, p0}, LI9/a;->b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;)V

    .line 6
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/World/a;->i(LLb/c;)V

    return-void
.end method

.method private ensureWindGizmos()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->F:LJAVARuntime/GizmoPath;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/GizmoPath;

    invoke-direct {v0}, LJAVARuntime/GizmoPath;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->F:LJAVARuntime/GizmoPath;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->L:LJAVARuntime/Color;

    if-nez v0, :cond_1

    new-instance v0, LJAVARuntime/Color;

    const/16 v1, 0xff

    invoke-direct {v0, v1, v1, v1}, LJAVARuntime/Color;-><init>(III)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->L:LJAVARuntime/Color;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->F:LJAVARuntime/GizmoPath;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->L:LJAVARuntime/Color;

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoPath;->setColor(LJAVARuntime/Color;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->G:LJAVARuntime/GizmoObject;

    if-nez v0, :cond_2

    new-instance v0, LJAVARuntime/GizmoObject;

    invoke-direct {v0}, LJAVARuntime/GizmoObject;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->G:LJAVARuntime/GizmoObject;

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->H:LJAVARuntime/GizmoObject;

    if-nez v0, :cond_3

    new-instance v0, LJAVARuntime/GizmoObject;

    invoke-direct {v0}, LJAVARuntime/GizmoObject;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->H:LJAVARuntime/GizmoObject;

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->J:LJAVARuntime/Vertex;

    if-nez v0, :cond_4

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SPHERE_LOWPOLY:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->C1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->J:LJAVARuntime/Vertex;

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->J:LJAVARuntime/Vertex;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->H:LJAVARuntime/GizmoObject;

    invoke-virtual {v1, v0}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V

    :cond_5
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->H:LJAVARuntime/GizmoObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->L:LJAVARuntime/Color;

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->I:LJAVARuntime/Vertex;

    if-nez v0, :cond_6

    const-string v0, "@@ASSET@@Engine/Interface/Models/bilboard.obj"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->B1(Ljava/lang/String;LFb/a;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->I:LJAVARuntime/Vertex;

    :cond_6
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->I:LJAVARuntime/Vertex;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->G:LJAVARuntime/GizmoObject;

    invoke-virtual {v1, v0}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V

    :cond_7
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->K:LJAVARuntime/Texture;

    if-nez v0, :cond_8

    const-string v0, "@@ASSET@@/Editor/Wind/wind.png"

    invoke-static {v0}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->K:LJAVARuntime/Texture;

    :cond_8
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->K:LJAVARuntime/Texture;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->G:LJAVARuntime/GizmoObject;

    invoke-virtual {v1, v0}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    :cond_9
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->G:LJAVARuntime/GizmoObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->L:LJAVARuntime/Color;

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    return-void
.end method

.method public static getFirst()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;
    .locals 4

    :try_start_0
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;

    invoke-static {v0}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private unbindTransformListener()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->M:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->intensity:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->intensity:F

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070267

    return v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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
    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;)V

    const-string v2, "Intensity"

    sget-object v3, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {p1, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getIntensity()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->intensity:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "WindThruster"

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public onAttach()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->bindTransformListener()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->emitWindEffect()V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->unbindTransformListener()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->getFirst()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->emitWindEffect(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;)V

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

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->bindTransformListener()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->emitWindEffect()V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->unbindTransformListener()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->getFirst()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;

    move-result-object p1

    if-eq p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->emitWindEffect(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;)V

    :goto_1
    return-void
.end method

.method public setIntensity(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intensity"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->intensity:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->emitWindEffect()V

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->N:LJAVARuntime/Component;

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->N:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/WindEffect;

    invoke-direct {v0, p0}, LJAVARuntime/WindEffect;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->N:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public updateOnSelectedHierarchy()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->updateOnSelectedHierarchy()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->drawWindGizmos()V

    return-void
.end method
