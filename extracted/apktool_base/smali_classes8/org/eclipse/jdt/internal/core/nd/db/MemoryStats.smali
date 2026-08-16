.class public Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;
    }
.end annotation


# static fields
.field public static final SIZE:I

.field public static final TOTAL_MALLOC_POOLS:I = 0x40


# instance fields
.field public final address:J

.field private db:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

.field private stats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->RECORD_SIZE:I

    mul-int/lit8 v0, v0, 0x40

    sput v0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->SIZE:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->stats:Ljava/util/Map;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->db:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iput-wide p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->address:J

    return-void
.end method

.method private getPoolName(Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry<",
            "*>;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    packed-switch p2, :pswitch_data_0

    const/16 v0, 0x100

    if-lt p2, v0, :cond_0

    add-int/lit16 v0, p2, -0x100

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->getClassForType(S)Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->getElementClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown memory pool "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "Growable Arrays"

    return-object p1

    :pswitch_1
    const-string p1, "String Sets"

    return-object p1

    :pswitch_2
    const-string p1, "Linked Lists"

    return-object p1

    :pswitch_3
    const-string p1, "Short Strings"

    return-object p1

    :pswitch_4
    const-string p1, "Long Strings"

    return-object p1

    :pswitch_5
    const-string p1, "DB Properties"

    return-object p1

    :pswitch_6
    const-string p1, "B-Trees"

    return-object p1

    :pswitch_7
    const-string p1, "Miscellaneous"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPoolStats(S)Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->stats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->refresh()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->stats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->stats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_6

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->readPool(I)Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;

    move-result-object v1

    if-lez v0, :cond_1

    iget-short v2, v1, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->poolId:S

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-short v1, v1, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->poolId:S

    if-eq v1, p1, :cond_5

    if-le v1, p1, :cond_4

    :goto_1
    move v1, v0

    :goto_2
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->readPool(I)Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;

    move-result-object v2

    if-lez v1, :cond_3

    iget-short v2, v2, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->poolId:S

    if-nez v2, :cond_3

    :goto_3
    if-gt v1, v0, :cond_2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->readPool(I)Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->db:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->setAllocations(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;J)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->db:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->setTotalSize(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;J)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->db:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->setPoolId(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;S)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->refresh()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->stats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;

    goto :goto_4

    :cond_2
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->readPool(I)Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->readPool(I)Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->db:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v5, v3, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->numAllocations:J

    invoke-virtual {v2, v4, v5, v6}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->setAllocations(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;J)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->db:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v5, v3, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->totalSize:J

    invoke-virtual {v2, v4, v5, v6}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->setTotalSize(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;J)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->db:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-short v3, v3, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->poolId:S

    invoke-virtual {v2, v4, v3}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->setPoolId(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;S)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The stats were out of sync with the database."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    const-string v0, "Too many malloc pools. Please increase the size of TOTAL_MALLOC_POOLS."

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_4
    return-object v0
.end method

.method private loadStats()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x40

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->readPool(I)Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;

    move-result-object v2

    if-lez v1, :cond_1

    iget-short v3, v2, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->poolId:S

    if-nez v3, :cond_1

    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getPools()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->stats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSortedPools()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->getPools()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$1;

    invoke-direct {v1, p0}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$1;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public printMemoryStats(Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->getSortedPools()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;

    iget-short v3, v2, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->poolId:S

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->getPoolName(Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->numAllocations:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " allocations, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v2, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->totalSize:J

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->formatByteString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public readPool(I)Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;
    .locals 6

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->db:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->address:J

    sget v4, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->RECORD_SIZE:I

    mul-int/2addr p1, v4

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;J)V

    return-object v0
.end method

.method public recordFree(SJ)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->getPoolStats(S)Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;

    move-result-object v0

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->numAllocations:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->totalSize:J

    cmp-long v3, v3, p2

    if-ltz v3, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->db:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->setAllocations(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;J)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->db:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->totalSize:J

    sub-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->setTotalSize(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;J)V

    return-void

    :cond_0
    new-instance p2, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Attempted to free more memory from pool "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " than was ever allocated"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public recordMalloc(SJ)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->getPoolStats(S)Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->db:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v1, p1, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->numAllocations:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->setAllocations(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;J)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->db:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v1, p1, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->totalSize:J

    add-long/2addr v1, p2

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->setTotalSize(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;J)V

    return-void
.end method

.method public refresh()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->stats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->loadStats()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->stats:Ljava/util/Map;

    iget-short v3, v1, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->poolId:S

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
