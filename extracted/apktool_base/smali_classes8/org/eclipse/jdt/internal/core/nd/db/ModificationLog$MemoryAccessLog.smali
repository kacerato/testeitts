.class public Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryAccessLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryAccessLog"
.end annotation


# instance fields
.field private final operations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryAccessLog;->operations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getOperations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryAccessLog;->operations:Ljava/util/List;

    return-object v0
.end method

.method public hasInconsistentMemoryAllocation()Z
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryAccessLog;->operations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;->getOperationType()B

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;->getOperationType()B

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    move v4, v7

    :goto_1
    if-nez v2, :cond_3

    move v2, v7

    goto :goto_2

    :cond_3
    if-ne v3, v4, :cond_4

    return v7

    :cond_4
    :goto_2
    move v3, v4

    goto :goto_0
.end method

.method public reduce(I)Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryAccessLog;
    .locals 8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryAccessLog;->hasInconsistentMemoryAllocation()Z

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryAccessLog;->operations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;->getOperationType()B

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v5, v6, :cond_4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v0

    goto :goto_0

    :cond_4
    if-ge v3, p1, :cond_5

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    :goto_0
    if-nez v7, :cond_0

    :goto_1
    new-instance p1, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryAccessLog;

    invoke-direct {p1, v1}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryAccessLog;-><init>(Ljava/util/List;)V

    return-object p1
.end method
