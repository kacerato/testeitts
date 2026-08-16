.class public Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LIc/p;
.end annotation


# static fields
.field private static final PRE_ALLOC:I = 0x64


# instance fields
.field private final consumer:Lhe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhe/Q<",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;",
            ">;>;"
        }
    .end annotation
.end field

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

.field private final preAllocs:Lge/O;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lge/O<",
            "Ljava/lang/Integer;",
            ">;"
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

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->preAllocs:Lge/O;

    new-instance v0, Lge/O;

    invoke-direct {v0, v1}, Lge/O;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->freePool:Lge/O;

    new-instance v0, Lge/O;

    invoke-direct {v0, v1}, Lge/O;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->usedPool:Lge/O;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->usedSizes:Ljava/util/IdentityHashMap;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->consumer:Lhe/Q;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;)Lge/O;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->freePool:Lge/O;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;ILge/O;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->getListOfNoLock(ILge/O;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->appendAllNoAlloc(Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)V

    return-void
.end method

.method private static appendAllNoAlloc(Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "destination",
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->ensureCapacity(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getListOfNoLock(ILge/O;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "size",
            "pool"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lge/O<",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;",
            ">;>;)",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2, p1}, Lge/O;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->preAllocs:Lge/O;

    invoke-virtual {v0, p1}, Lge/O;->F(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->preAllocs:Lge/O;

    invoke-virtual {v0, p1}, Lge/O;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    invoke-virtual {p2, p1, v1}, Lge/O;->Gd(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method private static removeSwapLastByIdentity(Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {p0, v0, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->remove(I)Ljava/lang/Object;

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public acquire(I)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->freePool:Lge/O;

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->getListOfNoLock(ILge/O;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

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

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->usedPool:Lge/O;

    invoke-direct {p0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->getListOfNoLock(ILge/O;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->usedSizes:Ljava/util/IdentityHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->freePool:Lge/O;

    invoke-virtual {v0}, Lge/O;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->usedPool:Lge/O;

    invoke-virtual {v0}, Lge/O;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->usedSizes:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    return-void
.end method

.method public endFrame()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->usedPool:Lge/O;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->consumer:Lhe/Q;

    invoke-virtual {v0, v1}, Lge/O;->Mb(Lhe/Q;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->usedPool:Lge/O;

    invoke-virtual {v0}, Lge/O;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->usedSizes:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    return-void
.end method

.method public freeCount(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->freePool:Lge/O;

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->getListOfNoLock(ILge/O;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result p1

    return p1
.end method

.method public release(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    instance-of v0, p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->usedSizes:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->usedPool:Lge/O;

    invoke-direct {p0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->getListOfNoLock(ILge/O;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->removeSwapLastByIdentity(Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->clear()V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->freePool:Lge/O;

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->getListOfNoLock(ILge/O;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public setPreAlloc(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "size",
            "count"
        }
    .end annotation

    if-ltz p1, :cond_1

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->preAllocs:Lge/O;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lge/O;->Gd(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "count can\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size can\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startFrame()V
    .locals 0

    return-void
.end method

.method public usedCount(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->usedPool:Lge/O;

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->getListOfNoLock(ILge/O;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result p1

    return p1
.end method
