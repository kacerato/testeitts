.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Lf9/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;
    }
.end annotation


# static fields
.field public static final F1:Ljava/lang/Class;

.field public static final y1:Ljava/lang/String; = "CurvePath"


# instance fields
.field public final D0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LJAVARuntime/GizmoObject;",
            ">;"
        }
    .end annotation
.end field

.field public E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

.field public F:Z

.field public G:Z

.field public H:Z

.field public final I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public K:I

.field public final L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;

.field public final M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly9/b;",
            ">;"
        }
    .end annotation
.end field

.field public final N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly9/b;",
            ">;"
        }
    .end annotation
.end field

.field public O:F

.field public P:F

.field public Q:F

.field public final R:Ljava/lang/Object;

.field public final S:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;",
            ">;"
        }
    .end annotation
.end field

.field public final T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;",
            ">;"
        }
    .end annotation
.end field

.field public U:Z

.field public V:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public W:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public X:I

.field public volatile Y:Z

.field public volatile Z:Z

.field public b1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field private curveType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public i1:Lub/p;

.field public final m1:LJAVARuntime/GizmoPath;

.field public volatile q0:Z

.field public final q1:Lf9/b;

.field private stickToTerrain:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final v0:Lib/h;

.field public v1:LJAVARuntime/Component;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->F1:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "CurvePath"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->CatmullRom:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->curveType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->stickToTerrain:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->F:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->G:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->K:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->M:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->N:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->O:F

    const/4 v3, 0x0

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->P:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->Q:F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->R:Ljava/lang/Object;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->T:Ljava/util/List;

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->X:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->v0:Lib/h;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->D0:Ljava/util/List;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->b1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->i1:Lub/p;

    new-instance v0, LJAVARuntime/GizmoPath;

    invoke-direct {v0}, LJAVARuntime/GizmoPath;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->m1:LJAVARuntime/GizmoPath;

    new-instance v1, LJAVARuntime/Color;

    const-string v2, "#ff7300"

    invoke-direct {v1, v2}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoPath;->setColor(LJAVARuntime/Color;)V

    new-instance v0, Lf9/b;

    invoke-direct {v0, p0}, Lf9/b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->q1:Lf9/b;

    return-void
.end method

.method public static synthetic access$002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->G:Z

    return p1
.end method

.method public static synthetic access$102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->Y:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->updateUsageRootTransformListener()V

    return-void
.end method

.method public static synthetic access$302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->Z:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->updatePathPointUsageComponents()V

    return-void
.end method

.method public static synthetic access$502(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->q0:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->rebuildPointReferencesFromChildren()V

    return-void
.end method

.method public static synthetic access$702(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->curveType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    return-object p1
.end method

.method public static synthetic access$800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->stickToTerrain:Z

    return p0
.end method

.method public static synthetic access$802(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->stickToTerrain:Z

    return p1
.end method

.method private addCatmullPoint(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "direction"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p2

    const v1, 0x322bcc77    # 1.0E-8f

    cmpg-float p2, p2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-gtz p2, :cond_0

    invoke-virtual {v0, v2, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p2, v2, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3f7fbe77    # 0.999f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    invoke-virtual {p2, v1, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_1
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->cross(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->crossLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v2, Ldb/b;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    invoke-direct {v2, p1, v0, v1, p2}, Ldb/b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->N:Ljava/util/List;

    new-instance p2, Ly9/b;

    invoke-direct {p2, v2}, Ly9/b;-><init>(Ldb/b;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPointsToCurve()V
    .locals 15

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->U:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->U:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->curveType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->Bezier:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;->l()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;->M()V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->Knee:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->M:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->N:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->R:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->curveType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->Knee:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->X:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->X:I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->curveType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->CatmullRom:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->X:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->X:I

    :cond_4
    :goto_1
    monitor-exit v1

    return-void

    :cond_5
    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->Q:F

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->curveType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->Knee:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    const/4 v7, 0x0

    if-eq v5, v6, :cond_7

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->CatmullRom:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    if-ne v5, v6, :cond_6

    goto :goto_2

    :cond_6
    move-object v5, v7

    goto :goto_3

    :cond_7
    :goto_2
    new-instance v5, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :goto_3
    move v6, v0

    :goto_4
    if-ge v6, v2, :cond_13

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;

    invoke-direct {p0, v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->cachePointSnapshot(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;)V

    iget-object v9, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-boolean v0, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->a:Z

    iget-object v10, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    invoke-interface {v10}, Lf9/a;->isConnected()Z

    move-result v10

    const v11, 0x3ecccccd    # 0.4f

    if-eqz v10, :cond_a

    add-int/lit8 v10, v2, -0x1

    if-ne v6, v10, :cond_a

    iput-boolean v3, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->a:Z

    iget-object v10, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v10, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v10

    iget-object v12, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float v13, v4, v11

    invoke-virtual {v12, v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v12

    iget-object v13, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->curveType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    sget-object v14, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->Knee:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    if-eq v13, v14, :cond_9

    sget-object v14, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->CatmullRom:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    if-ne v13, v14, :cond_8

    goto :goto_5

    :cond_8
    iget-object v13, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;

    invoke-virtual {v13, v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;->a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)I

    iget-object v10, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;

    invoke-virtual {v10, v12}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;->a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)I

    goto :goto_6

    :cond_9
    :goto_5
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_6
    iget-object v10, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->curveType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    sget-object v12, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->Knee:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    if-eq v10, v12, :cond_c

    sget-object v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->CatmullRom:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    if-ne v10, v13, :cond_b

    goto :goto_7

    :cond_b
    iget-object v10, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;

    invoke-virtual {v10, v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;->a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)I

    move-result v10

    iput v10, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->b:I

    goto :goto_8

    :cond_c
    :goto_7
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, -0x1

    iput v10, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->b:I

    :goto_8
    iget-object v10, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    invoke-interface {v10}, Lf9/a;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_f

    if-nez v6, :cond_f

    iput-boolean v3, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->a:Z

    iget-object v10, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float/2addr v11, v4

    invoke-virtual {v10, v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v10

    iget-object v11, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v9

    iget-object v11, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->curveType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    if-eq v11, v12, :cond_e

    sget-object v12, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->CatmullRom:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    if-ne v11, v12, :cond_d

    goto :goto_9

    :cond_d
    iget-object v11, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;

    invoke-virtual {v11, v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;->a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)I

    iget-object v10, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;

    invoke-virtual {v10, v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;->a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)I

    goto :goto_a

    :cond_e
    :goto_9
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_a
    if-ne v2, v3, :cond_10

    iget-object v9, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    invoke-interface {v9, v7, v7}, Lf9/a;->setSequencials(Lf9/a;Lf9/a;)V

    iget-object v9, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    invoke-interface {v9, v3}, Lf9/a;->setFirst(Z)V

    iget-object v8, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    invoke-interface {v8, v3}, Lf9/a;->setLast(Z)V

    goto :goto_b

    :cond_10
    if-nez v6, :cond_11

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

    add-int/lit8 v10, v6, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;

    iget-object v10, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    iget-object v9, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    invoke-interface {v10, v7, v9}, Lf9/a;->setSequencials(Lf9/a;Lf9/a;)V

    iget-object v9, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    invoke-interface {v9, v3}, Lf9/a;->setFirst(Z)V

    iget-object v8, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    invoke-interface {v8, v0}, Lf9/a;->setLast(Z)V

    goto :goto_b

    :cond_11
    add-int/lit8 v9, v2, -0x1

    if-ne v6, v9, :cond_12

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

    add-int/lit8 v10, v6, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;

    iget-object v10, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    iget-object v9, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    invoke-interface {v10, v9, v7}, Lf9/a;->setSequencials(Lf9/a;Lf9/a;)V

    iget-object v9, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    invoke-interface {v9, v0}, Lf9/a;->setFirst(Z)V

    iget-object v8, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    invoke-interface {v8, v3}, Lf9/a;->setLast(Z)V

    goto :goto_b

    :cond_12
    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

    add-int/lit8 v10, v6, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;

    iget-object v10, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

    add-int/lit8 v11, v6, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;

    iget-object v11, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    iget-object v9, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    iget-object v10, v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    invoke-interface {v11, v9, v10}, Lf9/a;->setSequencials(Lf9/a;Lf9/a;)V

    iget-object v9, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    invoke-interface {v9, v0}, Lf9/a;->setFirst(Z)V

    iget-object v8, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    invoke-interface {v8, v0}, Lf9/a;->setLast(Z)V

    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    :cond_13
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->curveType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->Knee:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    if-ne v0, v2, :cond_14

    if-eqz v5, :cond_14

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->rebuildKneePath(Ljava/util/List;)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->X:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->X:I

    goto :goto_c

    :cond_14
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->curveType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->CatmullRom:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    if-ne v0, v2, :cond_15

    if-eqz v5, :cond_15

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->rebuildCatmullPath(Ljava/util/List;)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->X:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->X:I

    :cond_15
    :goto_c
    monitor-exit v1

    return-void

    :goto_d
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private applyStickToTerrainToPath()Z
    .locals 16

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->getPath()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_4

    :cond_1
    const-class v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v4}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_4

    :cond_2
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    invoke-static {v0, v5}, Lib/g;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v6, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->E()Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move v7, v2

    move v8, v7

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_d

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly9/b;

    if-eqz v0, :cond_c

    iget-object v0, v0, Ly9/b;->g:Ldb/b;

    if-nez v0, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v0}, Ldb/b;->c()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v9

    if-nez v9, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5, v9, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget-object v10, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v10

    const v11, -0x800001

    move v12, v2

    move v13, v12

    :goto_1
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-ge v12, v15, :cond_b

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    instance-of v14, v15, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    if-nez v14, :cond_5

    goto :goto_2

    :cond_5
    check-cast v15, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v14

    if-nez v14, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->isDataLoaded()Z

    move-result v14

    if-nez v14, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v15, v0, v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->isInsideTerrain(FF)Z

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v14, :cond_8

    goto :goto_2

    :cond_8
    :try_start_1
    invoke-virtual {v15, v0, v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getWorldY(FF)F

    move-result v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v13, :cond_9

    cmpl-float v15, v14, v11

    if-lez v15, :cond_a

    :cond_9
    move v11, v14

    const/4 v13, 0x1

    :catch_0
    :cond_a
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    if-eqz v13, :cond_c

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    sub-float/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v10, 0x38d1b717    # 1.0E-4f

    cmpl-float v0, v0, v10

    if-lez v0, :cond_c

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6, v0, v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9, v0, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equalsApprox(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v8, 0x1

    :cond_c
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_d
    return v8

    :cond_e
    :goto_4
    return v2
.end method

.method private cachePointSnapshot(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reference"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->gameObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lf9/a;->calculateRoadPointPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    invoke-interface {v1}, Lf9/a;->calculateRoadPointForward()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private catmullRomPoint(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p0",
            "p1",
            "p2",
            "p3",
            "t",
            "out"
        }
    .end annotation

    mul-float v0, p5, p5

    mul-float v1, v0, p5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    add-float/2addr v4, v5

    mul-float v4, v4, p5

    add-float/2addr v2, v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    mul-float/2addr v4, v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    invoke-virtual/range {p4 .. p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    mul-float/2addr v5, v8

    sub-float/2addr v4, v5

    invoke-virtual/range {p4 .. p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    add-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    mul-float/2addr v5, v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v9

    neg-float v9, v9

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v10

    add-float/2addr v9, v10

    mul-float v9, v9, p5

    add-float/2addr v5, v9

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v9

    mul-float/2addr v9, v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v10

    mul-float/2addr v10, v6

    sub-float/2addr v9, v10

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v10

    mul-float/2addr v10, v7

    add-float/2addr v9, v10

    invoke-virtual/range {p4 .. p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    mul-float/2addr v9, v0

    add-float/2addr v5, v9

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v9

    neg-float v9, v9

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v10

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v10

    mul-float/2addr v10, v8

    sub-float/2addr v9, v10

    invoke-virtual/range {p4 .. p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v10

    add-float/2addr v9, v10

    mul-float/2addr v9, v1

    add-float/2addr v5, v9

    mul-float/2addr v5, v4

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    mul-float/2addr v9, v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v10

    neg-float v10, v10

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v11

    add-float/2addr v10, v11

    mul-float v10, v10, p5

    add-float/2addr v9, v10

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v10

    mul-float/2addr v10, v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float/2addr v3, v6

    sub-float/2addr v10, v3

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float/2addr v3, v7

    add-float/2addr v10, v3

    invoke-virtual/range {p4 .. p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    sub-float/2addr v10, v3

    mul-float/2addr v10, v0

    add-float/2addr v9, v10

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float/2addr v3, v8

    add-float/2addr v0, v3

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float/2addr v3, v8

    sub-float/2addr v0, v3

    invoke-virtual/range {p4 .. p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    add-float/2addr v0, v3

    mul-float/2addr v0, v1

    add-float/2addr v9, v0

    mul-float/2addr v9, v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v5, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method private catmullRomTangent(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p0",
            "p1",
            "p2",
            "p3",
            "t",
            "out"
        }
    .end annotation

    mul-float v0, p5, p5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v4, v6

    add-float/2addr v2, v4

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    sub-float/2addr v2, v4

    mul-float/2addr v2, v3

    mul-float v2, v2, p5

    add-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v4, v7

    add-float/2addr v2, v4

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    mul-float/2addr v4, v7

    sub-float/2addr v2, v4

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    add-float/2addr v2, v4

    mul-float/2addr v2, v7

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v8

    add-float/2addr v4, v8

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v8

    mul-float/2addr v8, v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v9

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v9

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, v3

    mul-float v8, v8, p5

    add-float/2addr v4, v8

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v8

    neg-float v8, v8

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v9

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v9

    mul-float/2addr v9, v7

    sub-float/2addr v8, v9

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v9

    add-float/2addr v8, v9

    mul-float/2addr v8, v7

    mul-float/2addr v8, v0

    add-float/2addr v4, v8

    mul-float/2addr v4, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v8

    neg-float v8, v8

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    mul-float/2addr v9, v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v10

    mul-float/2addr v10, v5

    sub-float/2addr v9, v10

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v9, v5

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    sub-float/2addr v9, v5

    mul-float/2addr v9, v3

    mul-float v9, v9, p5

    add-float/2addr v8, v9

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    mul-float/2addr v5, v7

    add-float/2addr v3, v5

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    mul-float/2addr v5, v7

    sub-float/2addr v3, v5

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    add-float/2addr v3, v5

    mul-float/2addr v3, v7

    mul-float/2addr v3, v0

    add-float/2addr v8, v3

    mul-float/2addr v8, v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v4, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method private drawGizmo()V
    .locals 9

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->m1:LJAVARuntime/GizmoPath;

    invoke-virtual {v0}, LJAVARuntime/GizmoPath;->clear()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->b1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-nez v1, :cond_1

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SPHERE_LOWPOLY:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->C1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->b1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->getPointReferencesSnapshot()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->D0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v2, :cond_2

    new-instance v3, LJAVARuntime/GizmoObject;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->b1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v4

    invoke-direct {v3, v4}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, LJAVARuntime/GizmoObject;->setScaleBasedCamera(Z)V

    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v3, v4}, LJAVARuntime/GizmoTransform;->setScale(F)V

    new-instance v4, LJAVARuntime/Color;

    const/16 v5, 0x71

    const/16 v6, 0x34

    const/16 v7, 0xeb

    invoke-direct {v4, v7, v5, v6}, LJAVARuntime/Color;-><init>(III)V

    invoke-virtual {v3, v4}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->D0:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->D0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-le v3, v2, :cond_3

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->D0:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-class v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move v6, v4

    :goto_2
    if-ge v6, v2, :cond_5

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->D0:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LJAVARuntime/GizmoObject;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;

    if-eqz v8, :cond_4

    iget-object v8, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->gameObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v8, :cond_4

    iget-object v8, v8, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v8, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v8

    invoke-virtual {v7, v8}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    :cond_4
    invoke-static {v7}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    invoke-static {v5}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->getPathSnapshotForGizmo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->m1:LJAVARuntime/GizmoPath;

    invoke-virtual {v5}, LJAVARuntime/GizmoPath;->clear()V

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v5, 0x0

    :goto_3
    if-ge v4, v2, :cond_8

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly9/b;

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    iget-object v7, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v6}, Ly9/b;->c()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v6

    invoke-virtual {v7, v6, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez v5, :cond_7

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {v5, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_4

    :cond_7
    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->m1:LJAVARuntime/GizmoPath;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v7

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    invoke-virtual {v5, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->m1:LJAVARuntime/GizmoPath;

    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method private emitPathChanged()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->V:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->q1:Lf9/b;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->X:I

    invoke-virtual {v1, v2}, Lf9/b;->d(I)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->q1:Lf9/b;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Y(LLb/c;)V

    :cond_1
    return-void
.end method

.method private getPathSnapshotForGizmo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly9/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->getPath()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly9/b;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-object v0
.end method

.method private rebuildCatmullPath(Ljava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz v8, :cond_5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v0, v11, :cond_1

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v9, v9, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-direct {v7, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->addCatmullPoint(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void

    :cond_1
    const v0, 0x3c23d70a    # 0.01f

    iget v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->O:F

    invoke-static {v0, v1}, LNc/b;->M(FF)F

    move-result v12

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    new-instance v14, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v15, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    move v2, v10

    :goto_0
    add-int/lit8 v0, v13, -0x1

    if-ge v2, v0, :cond_5

    add-int/lit8 v1, v2, -0x1

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v14, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v15, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    add-int/lit8 v9, v2, 0x2

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v15, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v0

    div-float/2addr v0, v12

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v0, v10

    const/4 v10, 0x1

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v0, 0x0

    :goto_1
    if-gt v0, v11, :cond_4

    if-lez v2, :cond_2

    if-nez v0, :cond_2

    move v10, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move-object v1, v3

    move-object v0, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    goto :goto_3

    :cond_2
    if-nez v11, :cond_3

    move v10, v0

    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    int-to-float v9, v0

    int-to-float v10, v11

    div-float/2addr v9, v10

    move v10, v0

    :goto_2
    move-object/from16 v0, p0

    move/from16 v17, v1

    move-object v1, v14

    move/from16 v18, v2

    move-object v2, v15

    move-object/from16 v19, v3

    move-object v3, v6

    move-object/from16 v20, v4

    move-object v4, v5

    move-object/from16 v21, v5

    move v5, v9

    move-object/from16 v22, v6

    move-object/from16 v6, v20

    invoke-direct/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->catmullRomPoint(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    move-object/from16 v3, v22

    move-object/from16 v4, v21

    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->catmullRomTangent(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    move-object/from16 v1, v19

    move-object/from16 v0, v20

    invoke-direct {v7, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->addCatmullPoint(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :goto_3
    add-int/lit8 v2, v10, 0x1

    move-object v4, v0

    move-object v3, v1

    move v0, v2

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    move/from16 v17, v1

    move v11, v10

    move/from16 v2, v17

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_5
    :goto_4
    return-void
.end method

.method private rebuildKneePath(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v5, :cond_1

    invoke-virtual {v2, v6, v6, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->subLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    if-ne v0, v3, :cond_3

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    add-int/lit8 v5, v0, -0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->subLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v0, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->subLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_1
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v3

    const v5, 0x322bcc77    # 1.0E-8f

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_4

    invoke-virtual {v2, v6, v6, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_2
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3, v6, v4, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v7, 0x3f7fbe77    # 0.999f

    cmpl-float v5, v5, v7

    if-lez v5, :cond_5

    invoke-virtual {v3, v4, v6, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_5
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {v3, v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->cross(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->crossLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v5, Ldb/b;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-direct {v5, v1, v2, v4, v3}, Ldb/b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->M:Ljava/util/List;

    new-instance v2, Ly9/b;

    invoke-direct {v2, v5}, Ly9/b;-><init>(Ldb/b;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method private rebuildPointReferencesFromChildren()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->R:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->T:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->T:Ljava/util/List;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->searchPointsOnChild(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->scheduleReloadPoints()V

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resolveUsageRoot()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->V:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->MeshCurve:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->h0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->V:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :cond_0
    return-void
.end method

.method private schedulePathPointUsageComponentsUpdate()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->Z:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->Z:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$d;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method private schedulePointReferenceRebuild()V
    .locals 1

    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->rebuildPointReferencesFromChildren()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->q0:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->q0:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$e;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method private scheduleUsageRootTransformListenerUpdate()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->Y:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->Y:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method private searchPointsOnChild(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lf9/a;

    const/4 v1, 0x0

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lf9/a;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->T:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->T:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;

    iget-object v5, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->gameObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne v5, p1, :cond_1

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->T:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v0, p0}, Lf9/a;->setUsageComponent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;

    invoke-direct {v4, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lf9/a;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p0}, Lf9/a;->setUsageComponent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :goto_1
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->stickToTerrain:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;-><init>()V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_3
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->stickToTerrain:Z

    if-nez v0, :cond_4

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->destroyComponent()V

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->searchPointsOnChild(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method private unregisterUsageRootTransformListener()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->W:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->v0:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->W:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-void
.end method

.method private updatePathPointUsageComponents()V
    .locals 3

    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->schedulePathPointUsageComponentsUpdate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isGarbage()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->R:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    if-eqz v2, :cond_2

    invoke-interface {v2, p0}, Lf9/a;->setUsageComponent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    :goto_3
    return-void
.end method

.method private updateUsageRootTransformListener()V
    .locals 2

    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->scheduleUsageRootTransformListenerUpdate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isGarbage()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->W:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne v1, v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->unregisterUsageRootTransformListener()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->W:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->v0:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u(Lib/h;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->G:Z

    :cond_3
    return-void

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->unregisterUsageRootTransformListener()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->curveType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->curveType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    .line 4
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->stickToTerrain:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->stickToTerrain:Z

    .line 5
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->O:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->O:F

    .line 6
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->P:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->P:F

    .line 7
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->Q:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->Q:F

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "CurvePath"

    return-object v0
.end method

.method public getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->V:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :goto_0
    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f0701f7

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

    const p1, 0x7f0500a2

    return p1
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
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->curveType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$f;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;)V

    const-string v2, "Curve Type"

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    invoke-static {v2, v3, p1, v1}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$g;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;)V

    const-string v2, "Stick To Terrain"

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {p1, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getPath()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly9/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->curveType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->Knee:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->M:Ljava/util/List;

    return-object v0

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->CatmullRom:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->N:Ljava/util/List;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;->s()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPathVersion()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->X:I

    return v0
.end method

.method public getPointReferencesSnapshot()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->R:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

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

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "CurvePath"

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isStickToTerrain()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->stickToTerrain:Z

    return v0
.end method

.method public lowTaskUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 4
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

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->updateUsageRootTransformListener()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->curveType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    if-eq p1, p2, :cond_1

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->scheduleReloadPoints()V

    :cond_1
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->F:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->stickToTerrain:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->scheduleReloadPoints()V

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->G:Z

    :cond_2
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->stickToTerrain:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->F:Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->R:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->U:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->addPointsToCurve()V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_4

    :cond_3
    move v0, p2

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->curveType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->Bezier:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;->Z(F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->O:F

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;->P(F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->P:F

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;->U(F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a;->I(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->X:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->X:I

    move v0, v1

    :cond_4
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->X:I

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->K:I

    if-eq p1, v2, :cond_5

    move v2, v1

    goto :goto_1

    :cond_5
    move v2, p2

    :goto_1
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->K:I

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->stickToTerrain:Z

    if-eqz p1, :cond_7

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->G:Z

    if-nez v3, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->H:Z

    goto :goto_2

    :cond_7
    if-nez p1, :cond_8

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->H:Z

    :cond_8
    :goto_2
    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->H:Z

    if-eqz v2, :cond_a

    if-eqz p1, :cond_a

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->H:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->applyStickToTerrainToPath()Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->X:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->X:I

    goto :goto_3

    :cond_9
    move v1, v0

    :goto_3
    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->G:Z

    move v0, v1

    :cond_a
    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->emitPathChanged()V

    :cond_b
    return-void

    :goto_4
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onAttach()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->resolveUsageRoot()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->updateUsageRootTransformListener()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->rebuildPointReferencesFromChildren()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->curveType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->stickToTerrain:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->F:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->scheduleReloadPoints()V

    return-void
.end method

.method public onDetach()V
    .locals 4

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->unregisterUsageRootTransformListener()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->R:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lf9/a;->setUsageComponent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onParentChanged()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onParentChanged()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->resolveUsageRoot()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->updateUsageRootTransformListener()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->rebuildPointReferencesFromChildren()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->scheduleReloadPoints()V

    return-void
.end method

.method public registerPathPoint(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lf9/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointObject",
            "component"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->R:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->gameObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne v3, p1, :cond_1

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    if-ne v2, p2, :cond_1

    invoke-interface {p2, p0}, Lf9/a;->setUsageComponent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;

    invoke-direct {v2, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lf9/a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, p0}, Lf9/a;->setUsageComponent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->scheduleReloadPoints()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method public scheduleReloadPoints()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->U:Z

    return-void
.end method

.method public setEndCapDistance(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endCapDistance"
        }
    .end annotation

    const v0, 0x3c23d70a    # 0.01f

    invoke-static {v0, p1}, LNc/b;->M(FF)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->Q:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->Q:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->scheduleReloadPoints()V

    :cond_0
    return-void
.end method

.method public setResolution(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0, p1}, LNc/b;->M(FF)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->O:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->O:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->scheduleReloadPoints()V

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->v1:LJAVARuntime/Component;

    return-void
.end method

.method public setSimplifyAngle(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "simplifyAngle"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, LNc/b;->M(FF)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->P:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->P:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->scheduleReloadPoints()V

    :cond_0
    return-void
.end method

.method public setStickToTerrain(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stickToTerrain"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->stickToTerrain:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->stickToTerrain:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->G:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->schedulePointReferenceRebuild()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->scheduleReloadPoints()V

    :cond_1
    return-void
.end method

.method public setUsageRoot(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usageRoot"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->V:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->V:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->updateUsageRootTransformListener()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->updatePathPointUsageComponents()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->scheduleReloadPoints()V

    :cond_0
    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->v1:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/CurvePath;

    invoke-direct {v0, p0}, LJAVARuntime/CurvePath;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->v1:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public unregisterPathPoint(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lf9/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointObject",
            "component"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->R:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;

    if-eqz p1, :cond_0

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->gameObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne v3, p1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    if-ne v2, p2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->S:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->scheduleReloadPoints()V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateOnSelectedHierarchy()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->updateOnSelectedHierarchy()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->drawGizmo()V

    return-void
.end method
