.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Lh9/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$t;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$u;
    }
.end annotation


# static fields
.field public static final i2:Ljava/lang/String; = "SoftBodyRenderer"

.field public static final m2:Ljava/lang/Class;


# instance fields
.field public D0:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public E:Z

.field public volatile F:Z

.field public final F1:[F

.field public G:Ld9/a;

.field public H:Z

.field public final H1:Lj9/b;

.field public I:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;

.field public J:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

.field public K:Ljava/lang/String;

.field public L:Ljava/lang/String;

.field public final L1:Lda/d;

.field public M:I

.field public final M1:Lib/h;

.field public N:Z

.field public O:Z

.field public P:Lvc/q;

.field public Q:Lvc/q;

.field public R:Lvc/q;

.field public final R1:Lcom/jme3/math/Vector3f;

.field public S:Lvc/q;

.field public final T:Ljava/lang/Object;

.field public U:I

.field public V:I

.field public final V1:Lcom/jme3/math/Quaternion;

.field public W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

.field public X:Lcom/jme3/bullet/SoftBodyWorldInfo;

.field public Y:Lcom/jme3/scene/Mesh;

.field public Z:F

.field public b1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public b2:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

.field public castShadow:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public i1:LRb/c;

.field private inflation:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public m1:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field private mass:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public materialFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public meshFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private pressure:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public q0:F

.field public q1:Z

.field private rigidity:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$t;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public v0:F

.field public v1:Z

.field public y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->m2:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "SoftBodyRenderer"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->meshFile:Ljava/lang/String;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$t;->Physics:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$t;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$t;

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->castShadow:Z

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->mass:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->pressure:F

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->rigidity:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->inflation:F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->L:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->N:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->T:Ljava/lang/Object;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Z:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->q0:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->v0:F

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->F1:[F

    new-instance v0, Lj9/b;

    invoke-direct {v0, p0}, Lj9/b;-><init>(Lh9/a;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->H1:Lj9/b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$j;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->L1:Lda/d;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$k;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->M1:Lib/h;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->R1:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->V1:Lcom/jme3/math/Quaternion;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->onMaterialChanged()V

    return-void
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)LRb/c;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->i1:LRb/c;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$t;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$t;

    return-object p0
.end method

.method public static synthetic access$1002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$t;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$t;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$t;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->mass:F

    return p0
.end method

.method public static synthetic access$1102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->mass:F

    return p1
.end method

.method public static synthetic access$1200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->rigidity:F

    return p0
.end method

.method public static synthetic access$1202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->rigidity:F

    return p1
.end method

.method public static synthetic access$1300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->inflation:F

    return p0
.end method

.method public static synthetic access$1302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->inflation:F

    return p1
.end method

.method public static synthetic access$1400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->pressure:F

    return p0
.end method

.method public static synthetic access$1402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->pressure:F

    return p1
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)[F
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->F1:[F

    return-object p0
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->applyMaterialChange()V

    return-void
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->completeRenderableUpload(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->m1:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->buildRenderable()V

    return-void
.end method

.method public static synthetic access$902(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->v1:Z

    return p1
.end method

.method private addToGraphics()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->q1:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->i1:LRb/c;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->i1:LRb/c;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->q1:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->buildRenderable()V

    :goto_0
    return-void
.end method

.method private addToPhysics()V
    .locals 7

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->isPhysicsThread()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->G:Ld9/a;

    invoke-virtual {v0}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->I:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->T:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lvc/q;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v3

    invoke-direct {v2, v3}, Lvc/q;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->P:Lvc/q;

    new-instance v2, Lvc/q;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v3

    invoke-direct {v2, v3}, Lvc/q;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Q:Lvc/q;

    new-instance v2, Lvc/q;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v3

    invoke-direct {v2, v3}, Lvc/q;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->R:Lvc/q;

    new-instance v2, Lvc/q;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v3

    invoke-direct {v2, v3}, Lvc/q;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->S:Lvc/q;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->k1()Lvc/q;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->P:Lvc/q;

    invoke-direct {p0, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->copyVector3Buffer(Lvc/q;Lvc/q;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->k1()Lvc/q;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->R:Lvc/q;

    invoke-direct {p0, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->copyVector3Buffer(Lvc/q;Lvc/q;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->z0()Lvc/q;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Q:Lvc/q;

    invoke-direct {p0, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->copyVector3Buffer(Lvc/q;Lvc/q;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->z0()Lvc/q;

    move-result-object v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->S:Lvc/q;

    invoke-direct {p0, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->copyVector3Buffer(Lvc/q;Lvc/q;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->U:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->V:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    new-instance v1, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-direct {v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v1, p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    new-instance v1, Lcom/jme3/scene/Mesh;

    invoke-direct {v1}, Lcom/jme3/scene/Mesh;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Y:Lcom/jme3/scene/Mesh;

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->I:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->e()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->toFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v1, v3, v5, v4}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Y:Lcom/jme3/scene/Mesh;

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->I:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->d()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->toIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/IntBuffer;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Y:Lcom/jme3/scene/Mesh;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh;->updateBound()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Y:Lcom/jme3/scene/Mesh;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-static {v1, v4}, Lcom/jme3/bullet/util/NativeSoftBodyUtil;->appendFromTriMesh(Lcom/jme3/scene/Mesh;Lcom/jme3/bullet/objects/PhysicsSoftBody;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-static {v1}, Lr9/a;->a(Lcom/jme3/bullet/objects/PhysicsSoftBody;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countTetras()I

    move-result v1

    const/4 v4, 0x1

    if-lez v1, :cond_2

    move v0, v4

    :cond_2
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->O:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->applyMass()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0, v4, v4}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setPose(ZZ)V

    sget-object v0, LK8/a;->o:LCc/c;

    iget-object v0, v0, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getWorldInfo()Lcom/jme3/bullet/SoftBodyWorldInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->X:Lcom/jme3/bullet/SoftBodyWorldInfo;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->updateConfigs()V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->rigidity:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->q0:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->inflation:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->v0:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    int-to-float v0, v0

    const/high16 v6, 0x41c00000    # 24.0f

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    const/4 v1, 0x4

    const/16 v6, 0x2000

    invoke-virtual {v0, v1, v6}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->generateClusters(II)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Num clusters:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v6}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countClusters()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->updateClusters()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Y:Lcom/jme3/scene/Mesh;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v1

    mul-int/2addr v1, v5

    invoke-static {v1}, Luc/a;->c(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v0, v3, v5, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Y:Lcom/jme3/scene/Mesh;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v3

    mul-int/2addr v3, v5

    invoke-static {v3}, Luc/a;->c(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v0, v1, v5, v3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Y:Lcom/jme3/scene/Mesh;

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->updateBound()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    new-instance v1, Lcom/jme3/math/Vector3f;

    const v3, -0x3ee30a3d    # -9.81f

    const/4 v5, 0x0

    invoke-direct {v1, v5, v3, v5}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setGravity(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setMargin(F)V

    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->E:Z

    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private applyMass()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->mass:F

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->O:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setVolumeMass(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setMass(F)V

    :goto_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->mass:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Z:F

    return-void
.end method

.method private applyMaterialChange()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->m1:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->J:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->m1:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->J:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->z()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setMaterialInstanceAt(ILcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->m1:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->J:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->isDrawInFront()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setPriority(I)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->destroyRenderable()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->buildRenderable()V

    :goto_1
    return-void
.end method

.method private applySoftPreset(Lcom/jme3/bullet/objects/PhysicsSoftBody;ZFFZ)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sb",
            "hasTetra",
            "rigidity",
            "inflation",
            "log"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static/range {p3 .. p3}, LNc/b;->I(F)F

    move-result v2

    invoke-static/range {p4 .. p4}, LNc/b;->I(F)F

    move-result v3

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v7, v2, v6

    add-float/2addr v7, v6

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getSoftMaterial()Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->setLinearStiffness(F)V

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getSoftMaterial()Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->setAngularStiffness(F)V

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getSoftMaterial()Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->setVolumeStiffness(F)V

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getSoftConfig()Lcom/jme3/bullet/objects/infos/SoftBodyConfig;

    move-result-object v8

    const v9, 0x3eb33333    # 0.35f

    mul-float/2addr v9, v2

    const v10, 0x3ee66666    # 0.45f

    add-float/2addr v9, v10

    const v10, 0x3e4ccccd    # 0.2f

    mul-float v11, v5, v10

    add-float/2addr v9, v11

    const v11, 0x3f666666    # 0.9f

    invoke-direct {v0, v9, v4, v11}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->clamp(FFF)F

    move-result v9

    const v12, 0x3ca3d70a    # 0.02f

    mul-float/2addr v12, v5

    sget-object v13, Lcom/jme3/bullet/objects/infos/Sbcp;->Damping:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {v8, v13, v9}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->set(Lcom/jme3/bullet/objects/infos/Sbcp;F)V

    sget-object v13, Lcom/jme3/bullet/objects/infos/Sbcp;->Drag:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {v8, v13, v12}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->set(Lcom/jme3/bullet/objects/infos/Sbcp;F)V

    const v13, 0x3ecccccd    # 0.4f

    mul-float/2addr v13, v2

    add-float v14, v13, v6

    invoke-direct {v0, v14, v4, v11}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->clamp(FFF)F

    move-result v11

    sget-object v14, Lcom/jme3/bullet/objects/infos/Sbcp;->DynamicFriction:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {v8, v14, v11}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->set(Lcom/jme3/bullet/objects/infos/Sbcp;F)V

    const v14, 0x3f19999a    # 0.6f

    add-float/2addr v13, v14

    mul-float/2addr v14, v2

    add-float/2addr v14, v10

    sget-object v15, Lcom/jme3/bullet/objects/infos/Sbcp;->RigidHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {v8, v15, v13}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->set(Lcom/jme3/bullet/objects/infos/Sbcp;F)V

    sget-object v15, Lcom/jme3/bullet/objects/infos/Sbcp;->SoftHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {v8, v15, v13}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->set(Lcom/jme3/bullet/objects/infos/Sbcp;F)V

    sget-object v15, Lcom/jme3/bullet/objects/infos/Sbcp;->KineticHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {v8, v15, v14}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->set(Lcom/jme3/bullet/objects/infos/Sbcp;F)V

    mul-float v15, v5, v5

    const/high16 v16, 0x41200000    # 10.0f

    mul-float v15, v15, v16

    const v16, 0x3f4ccccd    # 0.8f

    mul-float v16, v16, v5

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v17, v2, v10

    add-float v6, v16, v17

    invoke-direct {v0, v6, v4, v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->clamp(FFF)F

    move-result v6

    const v16, 0x3e19999a    # 0.15f

    mul-float v16, v16, v5

    const v17, 0x3f866666    # 1.05f

    add-float v4, v16, v17

    sget-object v10, Lcom/jme3/bullet/objects/infos/Sbcp;->Pressure:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {v8, v10, v15}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->set(Lcom/jme3/bullet/objects/infos/Sbcp;F)V

    sget-object v10, Lcom/jme3/bullet/objects/infos/Sbcp;->VolumeConservation:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {v8, v10, v6}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->set(Lcom/jme3/bullet/objects/infos/Sbcp;F)V

    sget-object v10, Lcom/jme3/bullet/objects/infos/Sbcp;->MaxVolumeRatio:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {v8, v10, v4}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->set(Lcom/jme3/bullet/objects/infos/Sbcp;F)V

    const v10, 0x3f333333    # 0.7f

    mul-float/2addr v10, v2

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v17, v17, v5

    move/from16 p3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v16, v4, v17

    mul-float v10, v10, v16

    const v16, 0x3e4ccccd    # 0.2f

    add-float v10, v10, v16

    const v4, 0x3f733333    # 0.95f

    move/from16 p1, v6

    const/4 v6, 0x0

    invoke-direct {v0, v10, v6, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->clamp(FFF)F

    move-result v4

    sget-object v10, Lcom/jme3/bullet/objects/infos/Sbcp;->PoseMatching:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {v8, v10, v4}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->set(Lcom/jme3/bullet/objects/infos/Sbcp;F)V

    sget-object v10, Lcom/jme3/bullet/objects/infos/Sbcp;->VelocityCorrection:Lcom/jme3/bullet/objects/infos/Sbcp;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v8, v10, v6}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->set(Lcom/jme3/bullet/objects/infos/Sbcp;F)V

    sget-object v10, Lcom/jme3/bullet/objects/infos/Sbcp;->TimeScale:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {v8, v10, v6}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->set(Lcom/jme3/bullet/objects/infos/Sbcp;F)V

    sget-object v6, Lcom/jme3/bullet/objects/infos/Sbcp;->Lift:Lcom/jme3/bullet/objects/infos/Sbcp;

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v10}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->set(Lcom/jme3/bullet/objects/infos/Sbcp;F)V

    const/high16 v6, 0x41a00000    # 20.0f

    mul-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/lit8 v6, v6, 0x28

    invoke-virtual {v8, v6}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setPositionIterations(I)V

    invoke-virtual {v8, v6}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setVelocityIterations(I)V

    const/16 v10, 0x32

    invoke-virtual {v8, v10}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setDriftIterations(I)V

    if-eqz p5, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v10, 0x100

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "[SoftPreset]\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "hasTetra="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v10, "R="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->f(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  I="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->f(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Ieff="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->f(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "Material.k="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->f(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "Damping="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->f(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Drag="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->f(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "DynamicFriction="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->f(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "RigidHardness="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->f(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  KineticHardness="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->f(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "Pressure="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->f(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  VolumeConservation="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->f(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  MaxVolumeRatio="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p3

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->f(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "PoseMatching="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->f(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "Pos/Vel Iterations="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  DriftIterations="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Soft Preset"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private buildRenderable()V
    .locals 11

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->i1:LRb/c;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->getCurrentRenderableVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x1()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->J:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->I()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v1, LRb/c;

    invoke-direct {v1}, LRb/c;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->i1:LRb/c;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->J:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->z()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v4

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v2, Lcom/google/android/filament/RenderableManager$a;

    const/4 v10, 0x1

    invoke-direct {v2, v10}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->castShadow:Z

    invoke-virtual {v2, v3}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/filament/RenderableManager$a;->y(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v3

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->i1:LRb/c;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v6

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l0()LRb/d;

    move-result-object v7

    sget-object v8, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->k0()Lcom/google/android/filament/Box;

    move-result-object v9

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->m1:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->b1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->J:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->isDrawInFront()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    goto :goto_0

    :cond_2
    move v0, v10

    :goto_0
    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setPriority(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->i1:LRb/c;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    iput-boolean v10, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->q1:Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->q1:Z

    :goto_1
    invoke-static {}, LQb/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->i1:LRb/c;

    invoke-virtual {v1}, LRb/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/TransformManager;->b(I)I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->F1:[F

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r0([F)[F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->i1:LRb/c;

    invoke-virtual {v1}, LRb/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->F1:[F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    :cond_4
    :goto_2
    return-void
.end method

.method private clamp(FFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "a",
            "b"
        }
    .end annotation

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private clearPhysicsRenderableVertex()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->R:Lvc/q;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->S:Lvc/q;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->v1:Z

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->V:I

    return-void
.end method

.method private completeRenderableUpload(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "upload"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->v1:Z

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;

    return-void

    :cond_1
    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;->b:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->V:I

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->v1:Z

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;

    return-void
.end method

.method private copyVector3Buffer(Lvc/q;Lvc/q;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "target"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lvc/q;->d()I

    move-result v0

    invoke-virtual {p2}, Lvc/q;->d()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lvc/q;->m(I)F

    move-result v2

    invoke-virtual {p1, v1}, Lvc/q;->n(I)F

    move-result v3

    invoke-virtual {p1, v1}, Lvc/q;->o(I)F

    move-result v4

    invoke-virtual {p2, v1, v2, v3, v4}, Lvc/q;->A(IFFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private destroyRenderable()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->destroyRenderable(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Z)V

    return-void
.end method

.method private destroyRenderable(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scene",
            "destroyIfCan"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->i1:LRb/c;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->m1:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyImmediate()V

    .line 5
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->m1:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->i1:LRb/c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->l(LRb/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->i1:LRb/c;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->m(LRb/c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 8
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->i1:LRb/c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    :cond_3
    if-eqz p2, :cond_4

    .line 9
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->i1:LRb/c;

    invoke-virtual {p1}, LRb/c;->f()V

    goto :goto_1

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->i1:LRb/c;

    invoke-virtual {p1}, LRb/c;->destroyImmediate()V

    .line 11
    :goto_1
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->i1:LRb/c;

    .line 12
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->b1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->q1:Z

    return-void
.end method

.method private ensureRenderBuffers(ILcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertexCount",
            "source"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->T:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->P:Lvc/q;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Q:Lvc/q;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->R:Lvc/q;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->S:Lvc/q;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lvc/q;->d()I

    move-result v2

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Q:Lvc/q;

    invoke-virtual {v2}, Lvc/q;->d()I

    move-result v2

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->R:Lvc/q;

    invoke-virtual {v2}, Lvc/q;->d()I

    move-result v2

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->S:Lvc/q;

    invoke-virtual {v2}, Lvc/q;->d()I

    move-result v2

    if-ne v2, p1, :cond_1

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance v2, Lvc/q;

    invoke-direct {v2, p1}, Lvc/q;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->P:Lvc/q;

    new-instance v2, Lvc/q;

    invoke-direct {v2, p1}, Lvc/q;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Q:Lvc/q;

    new-instance v2, Lvc/q;

    invoke-direct {v2, p1}, Lvc/q;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->R:Lvc/q;

    new-instance v2, Lvc/q;

    invoke-direct {v2, p1}, Lvc/q;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->S:Lvc/q;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->k1()Lvc/q;

    move-result-object p1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->P:Lvc/q;

    invoke-direct {p0, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->copyVector3Buffer(Lvc/q;Lvc/q;)V

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->k1()Lvc/q;

    move-result-object p1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->R:Lvc/q;

    invoke-direct {p0, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->copyVector3Buffer(Lvc/q;Lvc/q;)V

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->z0()Lvc/q;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Q:Lvc/q;

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->copyVector3Buffer(Lvc/q;Lvc/q;)V

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->z0()Lvc/q;

    move-result-object p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->S:Lvc/q;

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->copyVector3Buffer(Lvc/q;Lvc/q;)V

    :cond_2
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private ensureRenderableUVBuffer(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->a1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    if-lt v2, v3, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v3, v0, 0x2

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    mul-int/lit8 v6, v6, 0x2

    if-lt v5, v6, :cond_1

    mul-int/lit8 v5, v4, 0x2

    invoke-virtual {v1, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    invoke-virtual {v2, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v2, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    goto :goto_1

    :cond_1
    mul-int/lit8 v5, v4, 0x3

    invoke-virtual {p1, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    invoke-virtual {v2, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p1, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v2, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    return-object v2
.end method

.method private f(F)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%.3f"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCurrentRenderableVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    return-object v0
.end method

.method private isPhysicsThread()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, LK8/a;->L:LIc/N;

    invoke-virtual {v1}, LIc/N;->b()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onMaterialChanged()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->applyMaterialChange()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$l;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$l;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private removeFromGraphics()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->q1:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->i1:LRb/c;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->i1:LRb/c;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->q1:Z

    return-void
.end method

.method private removeFromPhysics()V
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->isPhysicsThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->removeFromPhysicsInternal()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->F:Z

    return-void
.end method

.method private removeFromPhysicsInternal()V
    .locals 4

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->isPhysicsThread()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->E:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v0, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v2, LK8/a;->o:LCc/c;

    iget-object v2, v2, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Lcom/jme3/bullet/PhysicsSpace;->remove(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->X:Lcom/jme3/bullet/SoftBodyWorldInfo;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Y:Lcom/jme3/scene/Mesh;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->I:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->a()V

    :cond_2
    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->I:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->T:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->P:Lvc/q;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Q:Lvc/q;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->R:Lvc/q;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->S:Lvc/q;

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->U:I

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->V:I

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->v1:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->E:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->F:Z

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Z:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->q0:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->v0:F

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->H:Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :cond_3
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->F:Z

    :goto_2
    return-void
.end method

.method private setModelInternal(Ld9/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "model"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->G:Ld9/a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ld9/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ld9/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->G:Ld9/a;

    invoke-virtual {v0}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    invoke-virtual {p1}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ld9/a;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->G:Ld9/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->meshFile:Ljava/lang/String;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->K:Ljava/lang/String;

    invoke-virtual {p1}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f0()I

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->M:I

    :cond_1
    invoke-virtual {p1}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    invoke-static {v1}, LFb/c;->g(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    invoke-static {v1, p1}, LFb/c;->d(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->meshFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->G:Ld9/a;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->K:Ljava/lang/String;

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->clearPhysicsRenderableVertex()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->b1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->destroyRenderable()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->H:Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->buildRenderable()V

    :cond_4
    return-void
.end method

.method private updateClusters()V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->O:Z

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->rigidity:F

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->inflation:F

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->updateClusters(Lcom/jme3/bullet/objects/PhysicsSoftBody;ZFFZ)V

    return-void
.end method

.method private updateClusters(Lcom/jme3/bullet/objects/PhysicsSoftBody;ZFFZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sb",
            "hasTetra",
            "rigidity",
            "inflation",
            "log"
        }
    .end annotation

    .line 2
    invoke-static {p3}, LNc/b;->I(F)F

    move-result p2

    .line 3
    invoke-static {p4}, LNc/b;->I(F)F

    .line 4
    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getSoftConfig()Lcom/jme3/bullet/objects/infos/SoftBodyConfig;

    move-result-object p3

    const p4, 0x3eb33333    # 0.35f

    cmpl-float p4, p2, p4

    const/4 v0, 0x0

    if-lez p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    if-eqz p4, :cond_1

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, p2

    .line 5
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    :cond_1
    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr p2, v1

    const v1, 0x3f333333    # 0.7f

    add-float/2addr p2, v1

    .line 6
    sget-object v1, Lcom/jme3/bullet/objects/infos/Sbcp;->ClusterRigidHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {p3, v1, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->set(Lcom/jme3/bullet/objects/infos/Sbcp;F)V

    .line 7
    sget-object v1, Lcom/jme3/bullet/objects/infos/Sbcp;->ClusterSoftHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {p3, v1, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->set(Lcom/jme3/bullet/objects/infos/Sbcp;F)V

    .line 8
    sget-object v1, Lcom/jme3/bullet/objects/infos/Sbcp;->ClusterKineticHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {p3, v1, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->set(Lcom/jme3/bullet/objects/infos/Sbcp;F)V

    .line 9
    invoke-virtual {p3, v0}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setClusterIterations(I)V

    if-eqz p5, :cond_2

    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    const/16 p5, 0x100

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 11
    const-string p5, "[SoftPreset Clusters]\n"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "NumClusters="

    .line 12
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countClusters()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p5, "useClusters="

    .line 13
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, "  ClusterHardness="

    .line 14
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->f(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  ClusterIterations="

    .line 15
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    const-string p1, "Soft Preset Clusters"

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private updateConfigs()V
    .locals 6

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->O:Z

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->rigidity:F

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->inflation:F

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->applySoftPreset(Lcom/jme3/bullet/objects/PhysicsSoftBody;ZFFZ)V

    return-void
.end method

.method private updateMaterial(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preventMaterialLoad"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->materialFile:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->materialFile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->materialFile:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->materialFile:Ljava/lang/String;

    const-string v2, "/storage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->materialFile:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->materialFile:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->materialFile:Ljava/lang/String;

    const-string v1, "Files/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->materialFile:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->J:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->materialFile:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->L:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->materialFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->materialFile:Ljava/lang/String;

    invoke-static {v1}, Lda/h;->t(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->J:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v1, :cond_3

    iput-boolean p1, v1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->c:Z

    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->J:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->L1:Lda/d;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->j(Lda/d;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->materialFile:Ljava/lang/String;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->L:Ljava/lang/String;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->J:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eq v0, p1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->W(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->L1:Lda/d;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->X(Lda/d;)V

    :cond_4
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->J:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    :cond_5
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->onMaterialChanged()V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->J:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->W(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->J:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->L1:Lda/d;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->X(Lda/d;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->J:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->onMaterialChanged()V

    :cond_7
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->L:Ljava/lang/String;

    :cond_8
    :goto_2
    return-void
.end method

.method private updateMesh(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$u;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->meshFile:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->K:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->meshFile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->meshFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->K:Ljava/lang/String;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$i;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$u;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->meshFile:Ljava/lang/String;

    const-string v3, "@@ASSET@@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    const-string v4, ".mesh"

    invoke-static {v2, v4}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :try_start_0
    invoke-static {v2, v3, p1, v5, v0}, LFb/c;->n(Ljava/lang/String;ZLandroid/content/Context;ZLFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    new-instance v0, Ld9/a;

    invoke-direct {v0, p1}, Ld9/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->setModelInternal(Ld9/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :cond_3
    if-eqz v3, :cond_4

    const-string p1, ".obj"

    invoke-static {v2, p1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    :try_start_1
    invoke-static {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->B1(Ljava/lang/String;LFb/a;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    new-instance v0, Ld9/a;

    invoke-direct {v0, p1}, Ld9/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->setModelInternal(Ld9/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :cond_4
    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->setModelInternal(Ld9/a;)V

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->K:Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->setModelInternal(Ld9/a;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->K:Ljava/lang/String;

    :cond_6
    :goto_4
    return-void
.end method

.method private updatePhysicsMesh()V
    .locals 14

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, LK8/a;->L:LIc/N;

    invoke-virtual {v1}, LIc/N;->b()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    if-eqz v2, :cond_a

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Y:Lcom/jme3/scene/Mesh;

    if-eqz v4, :cond_a

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->I:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/jme3/bullet/util/NativeSoftBodyUtil;->updateMesh(Lcom/jme3/bullet/objects/PhysicsSoftBody;Ljava/nio/IntBuffer;Lcom/jme3/scene/Mesh;ZZLcom/jme3/math/Transform;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Y:Lcom/jme3/scene/Mesh;

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->updateBound()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Y:Lcom/jme3/scene/Mesh;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Y:Lcom/jme3/scene/Mesh;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    :cond_2
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->T:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->I:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->f()I

    move-result v4

    if-ge v3, v4, :cond_9

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->get()F

    move-result v5

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->get()F

    move-result v6

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Node X NAN"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_3
    :goto_1
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Node Y NAN"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Node Z NAN"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->get()F

    move-result v7

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->get()F

    move-result v8

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->get()F

    move-result v9

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move v9, v7

    :goto_2
    iget-object v10, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->I:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;

    invoke-virtual {v10, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->b(I)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v13, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->P:Lvc/q;

    invoke-virtual {v13, v12, v4, v5, v6}, Lvc/q;->A(IFFF)V

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Q:Lvc/q;

    invoke-virtual {v6, v5, v7, v8, v9}, Lvc/q;->A(IFFF)V

    goto :goto_4

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->U:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->U:I

    monitor-exit v2

    return-void

    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_a
    :goto_6
    return-void
.end method

.method private updateRenderableFromPhysics()V
    .locals 6

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->v1:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->G:Ld9/a;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ld9/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->G:Ld9/a;

    invoke-virtual {v0}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->P:Lvc/q;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->R:Lvc/q;

    if-nez v1, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->ensureRenderBuffers(ILcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->T:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->P:Lvc/q;

    if-eqz v2, :cond_9

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Q:Lvc/q;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->R:Lvc/q;

    if-eqz v3, :cond_9

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->S:Lvc/q;

    if-nez v4, :cond_3

    goto/16 :goto_1

    :cond_3
    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->U:I

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->V:I

    if-ne v4, v5, :cond_4

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_4
    invoke-direct {p0, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->copyVector3Buffer(Lvc/q;Lvc/q;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Q:Lvc/q;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->S:Lvc/q;

    invoke-direct {p0, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->copyVector3Buffer(Lvc/q;Lvc/q;)V

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->U:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v3

    if-eq v1, v3, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->R:Lvc/q;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->r2(Lvc/q;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->S:Lvc/q;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Z1(Lvc/q;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->H1()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x1()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->V:I

    return-void

    :cond_6
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->b1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eq v0, v1, :cond_7

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->updateRenderableGeometry(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    :cond_7
    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->uploadRenderableVertexBuffers(I)V

    return-void

    :cond_8
    :goto_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->R:Lvc/q;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->r2(Lvc/q;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->S:Lvc/q;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Z1(Lvc/q;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->a1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->e2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->V:I

    return-void

    :cond_9
    :goto_1
    :try_start_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    :goto_3
    return-void
.end method

.method private updateRenderableGeometry(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->m1:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->m1:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    sget-object v1, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l0()LRb/d;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setGeometryAt(ILcom/google/android/filament/RenderableManager$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->m1:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->k0()Lcom/google/android/filament/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setBounding(Lcom/google/android/filament/Box;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->b1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->buildRenderable()V

    return-void
.end method

.method private updateSoftBodyPhysicsProperties()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->Z:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->mass:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->applyMass()V

    :cond_1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->q0:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->rigidity:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->v0:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->inflation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->updateConfigs()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->updateClusters()V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->rigidity:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->q0:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->inflation:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->v0:F

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    new-instance v1, Lcom/jme3/math/Vector3f;

    const v2, -0x3ee30a3d    # -9.81f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setGravity(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->W:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setMargin(F)V

    return-void
.end method

.method private uploadRenderableVertexBuffers(I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uploadVersion"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->v1:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x1()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v0

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->ensureRenderableUVBuffer(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->a1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v1

    const/4 v9, 0x1

    if-eq v4, v1, :cond_2

    move v5, v9

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move v5, v1

    :goto_0
    new-instance v1, LJb/g;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v7

    invoke-direct {v1, v3, v4, v6, v7}, LJb/g;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    invoke-virtual {v1}, LJb/g;->b()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object v6

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->O(Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;I)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v7

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->k0()Lcom/google/android/filament/Box;

    move-result-object v8

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;

    move-object v1, v0

    move v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;ZLcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/google/android/filament/Box;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;

    iput-boolean v9, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->v1:Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m;

    invoke-direct {p1, p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;)V

    invoke-static {p1}, LK8/a;->I(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private useModelRenderable()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->m1:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->buildRenderable()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->m1:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->updateRenderableGeometry(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x1()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->updateRenderableGeometry(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    :cond_3
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->H1:Lj9/b;

    invoke-virtual {v0, p1}, Lj9/b;->a(Lj9/a;)V

    return-void
.end method

.method public beforeCollisionEvents()V
    .locals 2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->updatePhysicsMesh()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->H1:Lj9/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lj9/b;->j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->meshFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->meshFile:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->materialFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->materialFile:Ljava/lang/String;

    .line 5
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->castShadow:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->castShadow:Z

    .line 6
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->pressure:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->pressure:F

    .line 7
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->mass:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->mass:F

    .line 8
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->rigidity:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->rigidity:F

    .line 9
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->inflation:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->inflation:F

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->removeFromPhysics()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->destroyRenderable()V

    return-void
.end method

.method public disabledUpdatePhysics()V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->removeFromPhysicsInternal()V

    return-void
.end method

.method public enableCollisionEvents()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->H1:Lj9/b;

    invoke-virtual {v0, p1}, Lj9/b;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lj9/a;

    move-result-object p1

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

.method public getDataEntries(Landroid/content/Context;)Ljava/util/List;
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

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$g;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CAST_SHADOWS:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getGameObjectForPhysics()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f07021f

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

    const p1, 0x7f05009d

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

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$n;

    invoke-direct {v2, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$n;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;Landroid/content/Context;)V

    const v3, 0x7f0c00f9

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/e;ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$t;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->getDataEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->getMaterialEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->getModelEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->getPhysicsEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-object v0
.end method

.method public getLongTapMenu()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$h;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)V

    return-object v0
.end method

.method public getMaterialEntries(Landroid/content/Context;)Ljava/util/List;
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

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$d;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)V

    const v3, 0x7f0c00ff

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/e;ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$e;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)V

    sget-object v3, LC5/b$a;->InputFile:LC5/b$a;

    const-string v5, ".mat"

    invoke-direct {v1, v2, v4, v3, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->J:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$f;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)V

    invoke-virtual {v1, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->A(Landroid/content/Context;Lda/g;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public getModel()Ld9/a;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->G:Ld9/a;

    if-nez v0, :cond_0

    new-instance v0, Ld9/a;

    invoke-direct {v0}, Ld9/a;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->G:Ld9/a;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->G:Ld9/a;

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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->meshFile:Ljava/lang/String;

    const v1, 0x7f0c00ff

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "@@ASSET@@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$a;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)V

    invoke-direct {v0, v3, v1, v2}, LC5/b;-><init>(LD5/e;ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$b;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)V

    invoke-direct {v0, v3, v1, v2}, LC5/b;-><init>(LD5/e;ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)V

    sget-object v3, LC5/b$a;->InputFile:LC5/b$a;

    const-string v4, ".mesh"

    invoke-direct {v0, v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getPhysicsEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 13
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

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$o;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$o;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)V

    sget-object v2, LC5/b$a;->SLFloat:LC5/b$a;

    const-string v3, "Mass"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v4, "mass"

    invoke-virtual {v0, v1, p0, v4, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$p;

    invoke-direct {v5, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$p;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)V

    sget-object v1, LC5/b$a;->SLFloatSlider:LC5/b$a;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const-string v6, "Rigidity"

    const/4 v8, 0x0

    move-object v4, v0

    move-object v7, v1

    invoke-direct/range {v4 .. v10}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;FFF)V

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v5, "rigidity"

    invoke-virtual {v0, v4, p0, v5, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$q;

    invoke-direct {v7, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)V

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const-string v8, "Inflation"

    move-object v6, v0

    move-object v9, v1

    invoke-direct/range {v6 .. v12}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;FFF)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v4, "inflation"

    invoke-virtual {v0, v1, p0, v4, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$r;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$r;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)V

    const-string v4, "Pressure"

    invoke-direct {v0, v1, v4, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v2, "pressure"

    invoke-virtual {v0, v1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "SoftBodyRenderer"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->SoftBodyRenderer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->getModel()Ld9/a;

    move-result-object v0

    invoke-virtual {v0}, Ld9/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->getModel()Ld9/a;

    move-result-object v0

    invoke-virtual {v0}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasModel()Z
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->getModel()Ld9/a;

    move-result-object v0

    invoke-virtual {v0}, Ld9/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

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

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->F:Z

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

.method public makeScheduledChanges()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->updateMesh(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$u;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->updateMaterial(Z)V

    return-void
.end method

.method public onAttach()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->M1:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u(Lib/h;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->updateMesh(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$u;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->updateMaterial(Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->buildRenderable()V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->removeFromPhysics()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->destroyRenderable()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->clearPhysicsRenderableVertex()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->b1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->J:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->W(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->J:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->L1:Lda/d;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->X(Lda/d;)V

    :cond_0
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->J:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->M1:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    :cond_1
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

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->addToGraphics()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->removeFromGraphics()V

    :goto_0
    return-void
.end method

.method public onPhysicsGetTransformations()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->H1:Lj9/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lj9/b;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public onSceneChanged(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldScene"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onSceneChanged(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->i1:LRb/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->destroyRenderable(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->buildRenderable()V

    :cond_1
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->makeScheduledChanges()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->hasModel()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->J:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->N:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->destroyRenderable()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->buildRenderable()V

    :goto_1
    invoke-static {}, Lc8/b;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, LK8/a;->w:I

    if-lt p1, p2, :cond_3

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->G:Ld9/a;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ld9/a;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->E:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->H:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->N:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->updateRenderableFromPhysics()V

    goto :goto_2

    :cond_2
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->N:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->useModelRenderable()V

    :cond_3
    :goto_2
    return-void
.end method

.method public resyncOnFrame()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->H1:Lj9/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lj9/b;->i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public setModel(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    .line 1
    new-instance v0, Ld9/a;

    invoke-direct {v0, p1}, Ld9/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->setModel(Ld9/a;)V

    return-void
.end method

.method public setModel(Ld9/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "model"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->G:Ld9/a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Ld9/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ld9/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->G:Ld9/a;

    invoke-virtual {v0}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    invoke-virtual {p1}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Ld9/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->meshFile:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->K:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->G:Ld9/a;

    .line 9
    invoke-virtual {p1}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    invoke-static {v1}, LFb/c;->g(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    invoke-static {v1, p1}, LFb/c;->d(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    goto :goto_0

    .line 11
    :cond_1
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->meshFile:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->G:Ld9/a;

    .line 13
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->K:Ljava/lang/String;

    .line 14
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->clearPhysicsRenderableVertex()V

    .line 15
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->b1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    .line 16
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->destroyRenderable()V

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->H:Z

    .line 18
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 19
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->buildRenderable()V

    :cond_3
    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updatePhysics()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->F:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->removeFromPhysicsInternal()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/b;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, LK8/a;->w:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->G:Ld9/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld9/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->H:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->removeFromPhysicsInternal()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->H:Z

    :cond_2
    invoke-static {}, Lc8/b;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, LK8/a;->w:I

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->G:Ld9/a;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ld9/a;->c()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->E:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->addToPhysics()V

    :cond_4
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->E:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->prePhysics()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->updateSoftBodyPhysicsProperties()V

    :cond_5
    return-void

    :cond_6
    :goto_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->E:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->removeFromPhysics()V

    :cond_7
    return-void
.end method
