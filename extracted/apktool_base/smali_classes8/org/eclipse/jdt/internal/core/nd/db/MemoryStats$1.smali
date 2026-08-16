.class Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->getSortedPools()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$1;->this$0:Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;

    check-cast p2, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$1;->compare(Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;)I
    .locals 2

    .line 2
    iget-wide v0, p2, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->totalSize:J

    iget-wide p1, p1, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats$PoolStats;->totalSize:J

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result p1

    return p1
.end method
