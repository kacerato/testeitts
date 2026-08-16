.class public Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LIc/p;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;,
        Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$a;
    }
.end annotation


# static fields
.field private static final PRE_ALLOC:I = 0x3e8

.field private static final THREAD_LOCK:LZ9/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZ9/B<",
            "Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LZ9/B;

    new-instance v1, LZ9/A;

    invoke-direct {v1}, LZ9/A;-><init>()V

    invoke-direct {v0, v1}, LZ9/B;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP;->THREAD_LOCK:LZ9/B;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200(ILge/O;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP;->getListOfNoLock(ILge/O;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP;->appendAllNoAlloc(Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP;->removeSwapLastByIdentity(Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)Z

    move-result p0

    return p0
.end method

.method public static acquire(I)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .locals 1
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

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP;->getJPForThread()Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;->acquire(I)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object p0

    return-object p0
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

.method public static endFrame()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP;->THREAD_LOCK:LZ9/B;

    invoke-virtual {v1}, LZ9/B;->d()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, LZ9/B;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;->endFrame()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getJPForThread()Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP;->THREAD_LOCK:LZ9/B;

    invoke-virtual {v0}, LZ9/B;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;

    return-object v0
.end method

.method private static getListOfNoLock(ILge/O;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
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

    invoke-virtual {p1, p0}, Lge/O;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    invoke-virtual {p1, p0, v0}, Lge/O;->Gd(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static release(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP;->THREAD_LOCK:LZ9/B;

    invoke-virtual {v0}, LZ9/B;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;

    if-eqz v0, :cond_1

    invoke-static {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;->access$000(Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP;->THREAD_LOCK:LZ9/B;

    invoke-virtual {v2}, LZ9/B;->d()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, LZ9/B;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;

    if-eq v2, v0, :cond_2

    invoke-static {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;->access$000(Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;Ljava/util/List;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
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

.method public static startFrame()V
    .locals 0

    return-void
.end method
