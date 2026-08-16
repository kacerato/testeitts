.class public Lcom/itsmagic/engine/Engines/Engine/GC/SGC;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LIc/p;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;
    }
.end annotation


# static fields
.field private static final ARRAY_CHUNKS:I = 0x1388

.field private static ASYNC_TO_DELETE_REFERENCES:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b; = null
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private static final BLOCK:Ljava/lang/Object;

.field private static final DESTROY_MAP:Ljava/util/Map;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "LM9/h;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final REFERENCES:Ljava/util/List;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LM9/g;",
            ">;"
        }
    .end annotation
.end field

.field private static final REFERENCES_BY_GUIDHASH:Lge/X;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lge/X<",
            "LM9/g;",
            ">;"
        }
    .end annotation
.end field

.field private static SYNC_TO_DELETE_REFERENCES:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b; = null
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private static final TOTAL_FRAMES_TO_CLEAR_EVERYTHING:I = 0x78

.field private static volatile concreteCount:I

.field private static volatile deadCount:I

.field private static localAsyncItems:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private static localSyncItems:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private static final snapShot:Ljava/util/List;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LM9/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->BLOCK:Ljava/lang/Object;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES:Ljava/util/List;

    new-instance v0, Lge/X;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Lge/X;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES_BY_GUIDHASH:Lge/X;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/GC/SGC$a;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->SYNC_TO_DELETE_REFERENCES:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/GC/SGC$a;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->ASYNC_TO_DELETE_REFERENCES:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/GC/SGC$a;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localAsyncItems:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/GC/SGC$a;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localSyncItems:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->snapShot:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->DESTROY_MAP:Ljava/util/Map;

    const/4 v0, 0x0

    sput v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->concreteCount:I

    sput v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->deadCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static captureConcreteCountByTypeSimpleName(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->BLOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM9/g;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, LM9/g;->a()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v4, 0x1

    if-nez v2, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "out map can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static copyReferencesNoAlloc(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "destination"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LM9/g;",
            ">;",
            "Ljava/util/List<",
            "LM9/g;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->clear()V

    instance-of v0, p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->ensureCapacity(I)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM9/g;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static countGPUConsumptionBytes()J
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->countGPUConsumptionBytes(LM9/d;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static countGPUConsumptionBytes(LM9/d;)J
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->BLOCK:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    :try_start_0
    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 4
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LM9/g;

    if-nez v4, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    invoke-virtual {v4}, LM9/g;->a()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    instance-of v5, v4, LM9/e;

    if-eqz v5, :cond_3

    if-eqz p0, :cond_2

    .line 7
    move-object v5, v4

    check-cast v5, LM9/e;

    invoke-interface {v5}, LM9/e;->gpuUsageType()LM9/d;

    move-result-object v5

    if-ne v5, p0, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 8
    :cond_2
    :goto_1
    check-cast v4, LM9/e;

    invoke-interface {v4}, LM9/e;->gpuUsedBytes()J

    move-result-wide v4

    add-long/2addr v1, v4

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_4
    monitor-exit v0

    return-wide v1

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static countNativeConsumptionBytes()J
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->countNativeConsumptionBytes(LM9/f;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static countNativeConsumptionBytes(LM9/f;)J
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->BLOCK:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    :try_start_0
    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 4
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LM9/g;

    if-nez v4, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    invoke-virtual {v4}, LM9/g;->a()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    instance-of v5, v4, LM9/e;

    if-eqz v5, :cond_3

    if-eqz p0, :cond_2

    .line 7
    move-object v5, v4

    check-cast v5, LM9/e;

    invoke-interface {v5}, LM9/e;->nativeUsageType()LM9/f;

    move-result-object v5

    if-ne v5, p0, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 8
    :cond_2
    :goto_1
    check-cast v4, LM9/e;

    invoke-interface {v4}, LM9/e;->nativeUsedBytes()J

    move-result-wide v4

    add-long/2addr v1, v4

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_4
    monitor-exit v0

    return-wide v1

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static destroyImmediate(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "referencedObject"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->BLOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    instance-of v1, p0, LIc/m;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    move-object v1, p0

    check-cast v1, LIc/m;

    invoke-virtual {v1}, LIc/m;->getLongId()J

    move-result-wide v4

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES_BY_GUIDHASH:Lge/X;

    invoke-virtual {v1, v4, v5}, Lge/X;->e(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM9/g;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, LM9/g;->a()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_4

    invoke-static {}, LK8/a;->r()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, LM9/g;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Trying to destroy async an object marked with can destroy async = false"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_1
    :goto_0
    invoke-virtual {v1}, LM9/g;->h()J

    move-result-wide v4

    iget-object p0, v1, LM9/g;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->unregisterDestroyListeners(LM9/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, LM9/g;->f()LM9/c;

    move-result-object p0

    invoke-interface {p0, v4, v5}, LM9/c;->a(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v2, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {v1}, LM9/g;->b()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->notifyDestroyListeners(Ljava/lang/Class;J)V

    goto :goto_2

    :cond_2
    throw p0

    :cond_3
    :goto_2
    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->removeReferenceFromReferences(LM9/g;)V

    monitor-exit v0

    return-void

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "HASH COLLISION"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    move v1, v3

    :goto_3
    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_b

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LM9/g;

    invoke-virtual {v4}, LM9/g;->a()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p0, :cond_a

    invoke-static {}, LK8/a;->r()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {v4}, LM9/g;->j()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Trying to destroy async an object marked with can destroy async = false"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_4
    invoke-virtual {v4}, LM9/g;->h()J

    move-result-wide v5

    iget-object p0, v4, LM9/g;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->unregisterDestroyListeners(LM9/g;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4}, LM9/g;->f()LM9/c;

    move-result-object p0

    invoke-interface {p0, v5, v6}, LM9/c;->a(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_1
    move-exception p0

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v1, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_5
    invoke-virtual {v4}, LM9/g;->b()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->notifyDestroyListeners(Ljava/lang/Class;J)V

    goto :goto_6

    :cond_8
    throw p0

    :cond_9
    :goto_6
    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->removeReferenceFromReferences(LM9/g;)V

    iget-boolean p0, v4, LM9/g;->k:Z

    if-eqz p0, :cond_b

    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES_BY_GUIDHASH:Lge/X;

    invoke-virtual {v4}, LM9/g;->g()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lge/X;->e(J)Ljava/lang/Object;

    goto :goto_7

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    :goto_7
    monitor-exit v0

    return-void

    :goto_8
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static getConcreteCount()I
    .locals 1

    sget v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->concreteCount:I

    return v0
.end method

.method public static getConcreteCountByTypeSimpleName()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->captureConcreteCountByTypeSimpleName(Ljava/util/Map;)V

    return-object v0
.end method

.method public static getDeadCount()I
    .locals 1

    sget v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->deadCount:I

    return v0
.end method

.method public static lpUpdate()V
    .locals 6

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->BLOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->ASYNC_TO_DELETE_REFERENCES:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localAsyncItems:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    sput-object v2, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->ASYNC_TO_DELETE_REFERENCES:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    sput-object v1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localAsyncItems:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_0
    :goto_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localAsyncItems:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;->c()LM9/g;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LM9/g;->h()J

    move-result-wide v2

    iget-object v4, v0, LM9/g;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->unregisterDestroyListeners(LM9/g;)V

    :try_start_1
    invoke-virtual {v0}, LM9/g;->f()LM9/c;

    move-result-object v1

    invoke-interface {v1, v2, v3}, LM9/c;->a(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v4, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v0}, LM9/g;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->notifyDestroyListeners(Ljava/lang/Class;J)V

    goto :goto_0

    :cond_1
    throw v1

    :cond_2
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->BLOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES:Ljava/util/List;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->snapShot:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->copyReferencesNoAlloc(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->concreteCount:I

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->ASYNC_TO_DELETE_REFERENCES:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;->d()I

    move-result v0

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->SYNC_TO_DELETE_REFERENCES:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;->d()I

    move-result v3

    add-int/2addr v0, v3

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localAsyncItems:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;->d()I

    move-result v3

    add-int/2addr v0, v3

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localSyncItems:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;->d()I

    move-result v3

    add-int/2addr v0, v3

    sput v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->deadCount:I

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->snapShot:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM9/g;

    invoke-virtual {v0}, LM9/g;->l()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->BLOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->removeReferenceFromReferences(LM9/g;)V

    iget-boolean v3, v0, LM9/g;->k:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES_BY_GUIDHASH:Lge/X;

    invoke-virtual {v0}, LM9/g;->g()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lge/X;->e(J)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_3
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->unregisterDestroyListeners(LM9/g;)V

    invoke-virtual {v0}, LM9/g;->j()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->ASYNC_TO_DELETE_REFERENCES:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;->a(LM9/g;)V

    goto :goto_4

    :cond_4
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->SYNC_TO_DELETE_REFERENCES:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;->a(LM9/g;)V

    :goto_4
    monitor-exit v2

    goto :goto_6

    :goto_5
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_5
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method private static notifyDestroyListeners(Ljava/lang/Class;J)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "destroyedClass",
            "pointer"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->DESTROY_MAP:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LM9/h;

    iget-object v4, v3, LM9/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LM9/b;

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->removeRegisteredDestroyListener(LM9/h;)V

    goto :goto_1

    :cond_1
    iget-object v5, v3, LM9/h;->a:LM9/g;

    iget-object v5, v5, LM9/g;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v3, LM9/h;->a:LM9/g;

    invoke-virtual {v3}, LM9/g;->l()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4, p1, p2}, LM9/b;->b(J)V

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->DESTROY_MAP:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static put(Ljava/lang/Object;JLM9/c;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "referencedObject",
            "pointer",
            "destroyer",
            "canDestroyAsync"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object v0, LM9/a;->CPU:LM9/a;

    .line 3
    instance-of v1, p0, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;

    if-eqz v1, :cond_0

    .line 4
    move-object v0, p0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;

    .line 5
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;->getDestroyListeners()[LM9/b;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;->destroyPriority()I

    move-result v2

    .line 7
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;->destroyChannel()LM9/a;

    move-result-object v0

    :goto_0
    move-object v8, v0

    move-object v10, v1

    move v9, v2

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    .line 8
    invoke-static/range {v3 .. v10}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;ZLM9/a;I[LM9/b;)V

    return-void
.end method

.method public static put(Ljava/lang/Object;JLM9/c;ZLM9/a;I)V
    .locals 9
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
            "referencedObject",
            "pointer",
            "destroyer",
            "canDestroyAsync",
            "destroyChannel",
            "destroyPriority"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;

    if-eqz v0, :cond_0

    .line 11
    move-object v0, p0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;->getDestroyListeners()[LM9/b;

    move-result-object v0

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    .line 12
    invoke-static/range {v1 .. v8}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;ZLM9/a;I[LM9/b;)V

    return-void
.end method

.method private static put(Ljava/lang/Object;JLM9/c;ZLM9/a;I[LM9/b;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "referencedObject",
            "pointer",
            "destroyer",
            "canDestroyAsync",
            "destroyChannel",
            "destroyPriority",
            "listeners"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v10, p7

    if-eqz v10, :cond_1

    .line 13
    array-length v1, v10

    if-lez v1, :cond_1

    .line 14
    array-length v1, v10

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 15
    :goto_0
    array-length v3, v10

    if-ge v2, v3, :cond_0

    .line 16
    aget-object v3, v10, v2

    invoke-virtual {v3}, LM9/b;->a()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    move-object v9, v1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 17
    :goto_2
    sget-object v11, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->BLOCK:Ljava/lang/Object;

    monitor-enter v11

    .line 18
    :try_start_0
    new-instance v12, LM9/g;

    move-object v1, v12

    move-object v2, p0

    move-wide v3, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p6

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v9}, LM9/g;-><init>(Ljava/lang/Object;JLM9/c;ZILM9/a;[Ljava/lang/Class;)V

    .line 19
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v12, LM9/g;->l:I

    .line 20
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    instance-of v1, v0, LIc/m;

    if-eqz v1, :cond_2

    .line 22
    check-cast v0, LIc/m;

    invoke-virtual {v0}, LIc/m;->getLongId()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 23
    iput-boolean v2, v12, LM9/g;->k:Z

    .line 24
    iput-wide v0, v12, LM9/g;->j:J

    .line 25
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES_BY_GUIDHASH:Lge/X;

    invoke-virtual {v2, v0, v1, v12}, Lge/X;->td(JLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 26
    :cond_2
    :goto_3
    invoke-static {v12, v10}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->registerDestroyListeners(LM9/g;[LM9/b;)V

    .line 27
    monitor-exit v11

    return-void

    :goto_4
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static registerDestroyListeners(LM9/g;[LM9/b;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ref",
            "listeners"
        }
    .end annotation

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    array-length v0, p1

    new-array v0, v0, [LM9/h;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->DESTROY_MAP:Ljava/util/Map;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v6, p1, v2

    invoke-virtual {v6}, LM9/b;->a()Ljava/lang/Class;

    move-result-object v7

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->DESTROY_MAP:Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_1

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v5, 0x1388

    invoke-direct {v4, v5}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v3, v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :goto_1
    new-instance v10, LM9/h;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    move-object v4, v10

    move-object v5, p0

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, LM9/h;-><init>(LM9/g;LM9/b;Ljava/lang/Class;Ljava/util/List;I)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aput-object v10, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, LM9/g;->k([LM9/h;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_3
    return-void
.end method

.method private static removeReferenceFromReferences(LM9/g;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LM9/g;->l:I

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    if-ltz v0, :cond_1

    if-gt v0, v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p0, :cond_4

    :cond_1
    move v0, v2

    :goto_0
    if-ltz v0, :cond_3

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_1
    if-gez v0, :cond_4

    iput v3, p0, LM9/g;->l:I

    return-void

    :cond_4
    if-eq v0, v2, :cond_5

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LM9/g;

    invoke-interface {v1, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput v0, v4, LM9/g;->l:I

    :cond_5
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iput v3, p0, LM9/g;->l:I

    return-void
.end method

.method private static removeRegisteredDestroyListener(LM9/h;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registered"
        }
    .end annotation

    if-eqz p0, :cond_6

    iget-object v0, p0, LM9/h;->d:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget v1, p0, LM9/h;->e:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ltz v1, :cond_1

    if-gt v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, p0, :cond_4

    :cond_1
    move v1, v2

    :goto_0
    if-ltz v1, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    move v1, v4

    :goto_1
    if-gez v1, :cond_4

    iput-object v3, p0, LM9/h;->d:Ljava/util/List;

    iput v4, p0, LM9/h;->e:I

    return-void

    :cond_4
    if-eq v1, v2, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LM9/h;

    invoke-interface {v0, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput v1, v5, LM9/h;->e:I

    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iput-object v3, p0, LM9/h;->d:Ljava/util/List;

    iput v4, p0, LM9/h;->e:I

    :cond_6
    :goto_2
    return-void
.end method

.method private static unregisterDestroyListeners(LM9/g;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    invoke-virtual {p0}, LM9/g;->i()[LM9/h;

    move-result-object p0

    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->DESTROY_MAP:Ljava/util/Map;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    aget-object v2, p0, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v2, LM9/h;->c:Ljava/lang/Class;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->DESTROY_MAP:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x0

    if-nez v5, :cond_2

    aput-object v6, p0, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->removeRegisteredDestroyListener(LM9/h;)V

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    aput-object v6, p0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_3
    return-void
.end method

.method public static update()V
    .locals 9

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SGC update"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->BLOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->SYNC_TO_DELETE_REFERENCES:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localSyncItems:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    sput-object v3, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->SYNC_TO_DELETE_REFERENCES:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    sput-object v2, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localSyncItems:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;->d()I

    move-result v1

    div-int/lit8 v1, v1, 0x78

    const/4 v2, 0x2

    invoke-static {v2, v1}, LNc/b;->N(II)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localSyncItems:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;->b()Z

    move-result v4

    if-nez v4, :cond_3

    if-ge v3, v1, :cond_3

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localSyncItems:Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC$b;->c()LM9/g;

    move-result-object v4

    invoke-virtual {v4}, LM9/g;->h()J

    move-result-wide v5

    iget-object v7, v4, LM9/g;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v7, v2, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->unregisterDestroyListeners(LM9/g;)V

    :try_start_1
    invoke-virtual {v4}, LM9/g;->f()LM9/c;

    move-result-object v7

    invoke-interface {v7, v5, v6}, LM9/c;->a(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v8, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    :goto_2
    invoke-virtual {v4}, LM9/g;->b()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->notifyDestroyListeners(Ljava/lang/Class;J)V

    goto :goto_3

    :cond_1
    throw v7

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
