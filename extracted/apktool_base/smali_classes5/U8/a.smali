.class public LU8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

.field public volatile b:F

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, LU8/a;->b:F

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LU8/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LU8/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LU8/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public static synthetic a(LU8/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;
    .locals 0

    iget-object p0, p0, LU8/a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    return-object p0
.end method

.method public static synthetic b(LU8/a;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 0

    iget-object p0, p0, LU8/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p0
.end method

.method public static synthetic c(LU8/a;F)F
    .locals 0

    iput p1, p0, LU8/a;->b:F

    return p1
.end method

.method public static synthetic d(LU8/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, LU8/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public e()F
    .locals 1

    iget v0, p0, LU8/a;->b:F

    return v0
.end method

.method public final f(ZZLcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "usePhysicsLaser",
            "useVertexLaser",
            "layerReference"
        }
    .end annotation

    new-instance v0, Laa/c;

    iget-object v1, p0, LU8/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, LU8/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Laa/c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->e()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object p3

    invoke-virtual {v0, p3}, Laa/c;->k(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)V

    new-instance p3, Laa/e;

    invoke-direct {p3}, Laa/e;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Laa/e;->n(Z)V

    invoke-virtual {p3, v1}, Laa/e;->o(Z)V

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p3, v0, v2}, Laa/e;->z(Laa/c;Z)Laa/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Laa/a;->getDistance()F

    move-result p3

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {p3, v3}, LNc/b;->J(FF)F

    move-result p3

    iput p3, p0, LU8/a;->b:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/Thread;

    new-instance p3, LU8/a$a;

    invoke-direct {p3, p0, v0, p1}, LU8/a$a;-><init>(LU8/a;Laa/c;Laa/a;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2, v2}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, LU8/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_1
    return-void
.end method

.method public g(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZZLcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;)V
    .locals 3
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
            "camera",
            "gp",
            "f",
            "usePhysicsLaser",
            "useVertexLaser",
            "layerReference"
        }
    .end annotation

    iget-object v0, p0, LU8/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LU8/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p0, LU8/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object p1, p0, LU8/a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {p0, p4, p5, p6}, LU8/a;->f(ZZLcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;)V

    :cond_0
    return-void
.end method
