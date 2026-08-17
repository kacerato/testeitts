.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;
.super Ljava/lang/Object;
.source "InteractionCandidate.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x40

.field private static final POOL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public angle:F

.field public distance:F

.field public hasLineOfSight:Z

.field public final hitNormal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final hitPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public isSticky:Z

.field public priority:I

.field public score:F

.field public target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->POOL:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hitPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 25
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hitNormal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 29
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->reset()V

    .line 30
    return-void
.end method

.method public static declared-synchronized obtain(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;FF)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;
    .locals 2

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->POOL:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    .line 46
    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;-><init>()V

    .line 49
    :cond_0
    iput-object p0, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 50
    iput p1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->distance:F

    .line 51
    iput p2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->angle:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit v0

    return-object v1

    .line 44
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized recycle(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;)V
    .locals 3

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    monitor-enter v0

    .line 56
    if-eqz p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->POOL:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0x40

    if-ge v1, v2, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->reset()V

    .line 58
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->POOL:Ljava/util/Queue;

    invoke-interface {v1, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 60
    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;)I
    .locals 1

    .line 64
    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 66
    :cond_0
    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->score:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->score:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 13
    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->compareTo(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;)I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 4

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 34
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->distance:F

    .line 35
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->angle:F

    .line 36
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->score:F

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hasLineOfSight:Z

    .line 38
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->priority:I

    .line 39
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hitPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 40
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hitNormal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 41
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->isSticky:Z

    .line 42
    return-void
.end method
