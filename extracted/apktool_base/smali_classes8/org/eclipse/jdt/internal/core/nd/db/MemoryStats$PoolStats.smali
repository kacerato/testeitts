.class public final Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PoolStats"
.end annotation


# static fields
.field public static NUM_ALLOCATIONS_OFFSET:I = 0x2

.field public static POOL_ID_OFFSET:I

.field public static final RECORD_SIZE:I

.field public static TOTAL_SIZE_OFFSET:I


# instance fields
.field address:J

.field numAllocations:J

.field poolId:S

.field totalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    add-int/lit8 v0, v0, 0x8

    sput v0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->TOTAL_SIZE_OFFSET:I

    add-int/lit8 v0, v0, 0x8

    sput v0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->RECORD_SIZE:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->address:J

    sget v0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->POOL_ID_OFFSET:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getShort(J)S

    move-result v0

    iput-short v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->poolId:S

    sget v0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->NUM_ALLOCATIONS_OFFSET:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getLong(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->numAllocations:J

    sget v0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->TOTAL_SIZE_OFFSET:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getLong(J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->totalSize:J

    return-void
.end method


# virtual methods
.method public getNumAllocations()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->numAllocations:J

    return-wide v0
.end method

.method public getPoolId()S
    .locals 1

    iget-short v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->poolId:S

    return v0
.end method

.method public getTotalSize()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->totalSize:J

    return-wide v0
.end method

.method public setAllocations(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;J)V
    .locals 4

    iput-wide p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->numAllocations:J

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->address:J

    sget v2, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->NUM_ALLOCATIONS_OFFSET:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putLong(JJ)V

    return-void
.end method

.method public setPoolId(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;S)V
    .locals 4

    iput-short p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->poolId:S

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->address:J

    sget v2, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->POOL_ID_OFFSET:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putShort(JS)V

    return-void
.end method

.method public setTotalSize(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;J)V
    .locals 4

    iput-wide p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->totalSize:J

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->address:J

    sget v2, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->TOTAL_SIZE_OFFSET:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putLong(JJ)V

    return-void
.end method
