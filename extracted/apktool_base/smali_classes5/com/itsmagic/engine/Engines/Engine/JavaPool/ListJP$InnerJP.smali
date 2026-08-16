.class public final Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LIc/p;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InnerJP"
.end annotation


# instance fields
.field private final freePool:Lge/O;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lge/O<",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;",
            ">;>;"
        }
    .end annotation
.end field

.field private final procedure:Lhe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhe/Q<",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;",
            ">;>;"
        }
    .end annotation
.end field

.field private final usedPool:Lge/O;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lge/O<",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;",
            ">;>;"
        }
    .end annotation
.end field

.field private final usedSizes:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lge/O;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lge/O;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;->freePool:Lge/O;

    new-instance v0, Lge/O;

    invoke-direct {v0, v1}, Lge/O;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;->usedPool:Lge/O;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;->usedSizes:Ljava/util/IdentityHashMap;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;->procedure:Lhe/Q;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;Ljava/util/List;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;->releaseLocal(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;)Lge/O;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;->freePool:Lge/O;

    return-object p0
.end method

.method private declared-synchronized releaseLocal(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    check-cast p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;->usedSizes:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;->usedPool:Lge/O;

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP;->access$200(ILge/O;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP;->access$400(Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    :try_start_3
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->clear()V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;->freePool:Lge/O;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP;->access$200(ILge/O;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method


# virtual methods
.method public declared-synchronized acquire(I)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;",
            ">(I)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;->freePool:Lge/O;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP;->access$200(ILge/O;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;->usedPool:Lge/O;

    invoke-static {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP;->access$200(ILge/O;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;->usedSizes:Ljava/util/IdentityHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized endFrame()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;->usedPool:Lge/O;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;->procedure:Lhe/Q;

    invoke-virtual {v0, v1}, Lge/O;->Mb(Lhe/Q;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;->usedPool:Lge/O;

    invoke-virtual {v0}, Lge/O;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;->usedSizes:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized release(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;->releaseLocal(Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized startFrame()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method
