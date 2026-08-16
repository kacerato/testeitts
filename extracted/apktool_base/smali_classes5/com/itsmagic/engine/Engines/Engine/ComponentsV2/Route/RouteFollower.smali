.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# static fields
.field public static final Q:Ljava/lang/String; = "RouteFollower"

.field public static final R:Ljava/lang/Class;


# instance fields
.field public E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public F:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;

.field public H:I

.field public I:I

.field public J:Z

.field public K:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/StandUp;

.field public L:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:LJAVARuntime/Component;

.field public ignoreY:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public lookToLerp:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public minimalPointDistance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private targetGUID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->R:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "RouteFollower"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->minimalPointDistance:F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->lookToLerp:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->ignoreY:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->L:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->M:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->O:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object p0
.end method

.method private findNearestIndex(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;)I
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentRoute"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_c

    .line 2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 3
    :cond_0
    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 4
    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 5
    :try_start_0
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 6
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;->pointCount()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v4, :cond_1

    .line 7
    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    .line 8
    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return v0

    .line 9
    :cond_1
    :try_start_1
    iget-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->J:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 10
    invoke-virtual {p1, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;->pointAt(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 11
    invoke-virtual {v2, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtDistanceIgnoreY(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v5

    .line 12
    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->minimalPointDistance:F

    mul-float/2addr v7, v7

    cmpg-float v5, v5, v7

    if-gtz v5, :cond_2

    .line 13
    iput-boolean v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->J:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    .line 14
    :cond_2
    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    .line 15
    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return v6

    :cond_3
    :goto_0
    const/4 v5, 0x0

    const/4 v7, 0x0

    move v8, v0

    move v9, v5

    :goto_1
    if-ge v6, v4, :cond_7

    .line 16
    :try_start_2
    invoke-virtual {p1, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;->pointAt(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v10

    if-nez v10, :cond_4

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {v2, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtDistanceIgnoreY(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v11

    cmpg-float v12, v11, v9

    if-lez v12, :cond_5

    if-gez v8, :cond_6

    .line 18
    :cond_5
    invoke-virtual {v3, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-object v7, v3

    move v8, v6

    move v9, v11

    :cond_6
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    if-eqz v7, :cond_8

    if-ltz v8, :cond_8

    add-int/lit8 v6, v8, 0x1

    if-le v4, v6, :cond_a

    .line 19
    invoke-virtual {p1, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;->pointAt(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_9

    .line 20
    :cond_8
    :goto_3
    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    .line 21
    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return v8

    .line 22
    :cond_9
    :try_start_3
    invoke-virtual {p1, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalize()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    .line 23
    invoke-virtual {v2, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalize()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_8

    move v8, v6

    goto :goto_3

    .line 25
    :cond_a
    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 26
    :try_start_4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->F:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 27
    invoke-virtual {p1, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalize()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    .line 28
    invoke-virtual {v2, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalize()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    .line 29
    invoke-virtual {v4, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_b

    goto :goto_4

    :cond_b
    move v0, v8

    .line 30
    :goto_4
    :try_start_5
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    move v8, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    .line 31
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 32
    :goto_5
    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    .line 33
    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    .line 34
    throw p1

    :cond_c
    :goto_6
    return v0
.end method

.method private lookTo(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->K:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/StandUp;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->StandUp:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/StandUp;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->K:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/StandUp;

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->lookToLerp:F

    invoke-static {}, LK8/d;->b()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, LNc/b;->E(FFF)F

    move-result v0

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->ignoreY:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->L:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v2, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->f0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->L:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v2, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Z(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->K:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/StandUp;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->L:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f2(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->L:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/StandUp;->setRotationY(F)V

    :goto_1
    return-void

    :goto_2
    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method private search()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->I:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->targetGUID:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->targetGUID:Ljava/lang/String;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-static {v0, v1}, LLb/k;->h(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/World/World;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->Route:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;

    :goto_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->I:I

    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;-><init>()V

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public findNearestIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->findNearestIndex(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;)I

    move-result v0

    return v0
.end method

.method public findNearestPoint()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->findNearestIndex(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;)I

    move-result v1

    if-ltz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;->pointAt(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ROUTE_FOLLOWER:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070210

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

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower$b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ROUTE:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, LC5/b;-><init>(LD5/d;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower$c;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->MINIMAL_POINT_DISTANCE:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {p1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_1

    const-string v2, "minimalPointDistance"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower$d;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LOOK_LERP:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_2

    const-string v2, "lookToLerp"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower$e;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LOOK_IGNORE_Y:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {p1, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getLookToLerp()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->lookToLerp:F

    return v0
.end method

.method public getMinimalPointDistance()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->minimalPointDistance:F

    return v0
.end method

.method public getRoute()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;

    return-object v0
.end method

.method public getTargetGUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->targetGUID:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "RouteFollower"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->RouteFollower:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isIgnoreY()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->ignoreY:Z

    return v0
.end method

.method public isPathFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->O:Z

    return v0
.end method

.method public isShouldWalk()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->M:Z

    return v0
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 5
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

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->search()V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;

    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->F:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->J:Z

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->O:Z

    :cond_1
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->F:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {}, Lc8/b;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->M:Z

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->findNearestIndex(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;)I

    move-result p1

    const/4 v1, 0x0

    if-ltz p1, :cond_2

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;->pointAt(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_0
    if-ltz p1, :cond_3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;->pointCount()I

    move-result p2

    sub-int/2addr p2, v3

    if-ne p1, p2, :cond_3

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->N:Z

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtDistanceIgnoreY(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->minimalPointDistance:F

    mul-float/2addr p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_4

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->N:Z

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->O:Z

    goto :goto_1

    :cond_4
    move-object v1, v4

    :goto_1
    if-eqz v1, :cond_5

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->lookTo(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->M:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    goto :goto_3

    :goto_2
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method public setIgnoreY(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignoreY"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->ignoreY:Z

    return-void
.end method

.method public setLookToLerp(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lookToLerp"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->lookToLerp:F

    return-void
.end method

.method public setMinimalPointDistance(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minimalPointDistance"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->minimalPointDistance:F

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->P:LJAVARuntime/Component;

    return-void
.end method

.method public setTarget(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "route"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 9
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->setTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 11
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;

    return-void
.end method

.method public setTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eq v0, p1, :cond_2

    .line 2
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->targetGUID:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->targetGUID:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->I:I

    if-eqz p1, :cond_1

    .line 6
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->Route:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;

    goto :goto_1

    .line 7
    :cond_1
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;

    .line 8
    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    :cond_2
    return-void
.end method

.method public setTargetGUID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetGUID"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->targetGUID:Ljava/lang/String;

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->P:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/RouteFollower;

    invoke-direct {v0, p0}, LJAVARuntime/RouteFollower;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->P:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
