.class public Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LIc/p;
.end annotation


# static fields
.field private static final PRE_ALLOC:I = 0x64


# instance fields
.field private final consumer:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Class;",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final freePool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final preAllocs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final usedPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->preAllocs:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->freePool:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->usedPool:Ljava/util/Map;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->consumer:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->freePool:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;Ljava/lang/Class;Ljava/util/Map;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->getListOfNoLock(Ljava/lang/Class;Ljava/util/Map;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->appendAllNoAlloc(Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)V

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
            "Ljava/lang/Object;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Ljava/lang/Object;",
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

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getCleanerOrDefault(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->getCleaner(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$a;

    move-result-object p1

    return-object p1
.end method

.method private getFactoryOrDefault(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->getFactory(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$b;

    move-result-object p1

    return-object p1
.end method

.method private getListOfNoLock(Ljava/lang/Class;Ljava/util/Map;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cls",
            "pool"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private instantiateNoFactory(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p1

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v3, v0

    new-array v3, v3, [Ljava/lang/Object;

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    aput-object v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static removeSwapLastByIdentity(Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Ljava/lang/Object;)Z
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
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
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
.method public acquire(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->freePool:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->getListOfNoLock(Ljava/lang/Class;Ljava/util/Map;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->getCleanerOrDefault(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$a;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->usedPool:Ljava/util/Map;

    invoke-direct {p0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->getListOfNoLock(Ljava/lang/Class;Ljava/util/Map;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->getFactoryOrDefault(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$b;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->usedPool:Ljava/util/Map;

    invoke-direct {p0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->getListOfNoLock(Ljava/lang/Class;Ljava/util/Map;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/NoFactory;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/NoFactory;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public acquireNoFactory(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->freePool:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->getListOfNoLock(Ljava/lang/Class;Ljava/util/Map;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->getCleanerOrDefault(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$a;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->usedPool:Ljava/util/Map;

    invoke-direct {p0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->getListOfNoLock(Ljava/lang/Class;Ljava/util/Map;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->getFactoryOrDefault(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$b;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->instantiateNoFactory(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->usedPool:Ljava/util/Map;

    invoke-direct {p0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->getListOfNoLock(Ljava/lang/Class;Ljava/util/Map;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->freePool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->usedPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public endFrame()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->usedPool:Ljava/util/Map;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->consumer:Ljava/util/function/BiConsumer;

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->usedPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public freeCount(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->freePool:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->getListOfNoLock(Ljava/lang/Class;Ljava/util/Map;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result p1

    return p1
.end method

.method public hasCleaner(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->getCleanerOrDefault(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$a;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasFactory(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->getFactoryOrDefault(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$b;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public release(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->usedPool:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->getListOfNoLock(Ljava/lang/Class;Ljava/util/Map;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->removeSwapLastByIdentity(Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->freePool:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->getListOfNoLock(Ljava/lang/Class;Ljava/util/Map;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setPreAlloc(Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cls",
            "count"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->preAllocs:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "count can\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cls can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startFrame()V
    .locals 0

    return-void
.end method

.method public usedCount(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->usedPool:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->getListOfNoLock(Ljava/lang/Class;Ljava/util/Map;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result p1

    return p1
.end method
