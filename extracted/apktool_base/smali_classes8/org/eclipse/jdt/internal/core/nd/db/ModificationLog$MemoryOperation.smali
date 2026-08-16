.class public Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryOperation"
.end annotation


# instance fields
.field private final addressSize:I

.field private final operationType:B

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;",
            ">;"
        }
    .end annotation
.end field

.field private final startAddress:J

.field private final time:J


# direct methods
.method public constructor <init>(BJJILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BJJI",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;->operationType:B

    iput-wide p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;->time:J

    iput-wide p4, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;->startAddress:J

    iput p6, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;->addressSize:I

    iput-object p7, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;->stack:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getOperationType()B
    .locals 1

    iget-byte v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;->operationType:B

    return v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;->addressSize:I

    return v0
.end method

.method public getStack()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;->stack:Ljava/util/List;

    return-object v0
.end method

.method public getStartAddress()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;->startAddress:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;->time:J

    return-wide v0
.end method

.method public printTo(Ljava/lang/StringBuilder;I)V
    .locals 4

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->indent(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;->getOperationType()B

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "freed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, "malloc\'d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v0, "wrote"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, " [address "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;->startAddress:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;->addressSize:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] at time "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;->time:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;->getStack()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    add-int/lit8 v3, p2, 0x1

    invoke-static {p1, v3}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->indent(Ljava/lang/StringBuilder;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
