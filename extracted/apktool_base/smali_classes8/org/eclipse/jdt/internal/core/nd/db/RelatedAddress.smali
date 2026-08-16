.class public Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final address:J

.field private final description:Ljava/lang/String;

.field private final modificationReport:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryAccessLog;

.field private final size:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JILorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryAccessLog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;->description:Ljava/lang/String;

    iput-wide p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;->address:J

    iput p4, p0, Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;->size:I

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;->modificationReport:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryAccessLog;

    return-void
.end method


# virtual methods
.method public isSameAddressAs(Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;)Z
    .locals 4

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;->address:J

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;->address:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget p1, p1, Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;->size:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;->size:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;->address:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;->modificationReport:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryAccessLog;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryAccessLog;->reduce(I)Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryAccessLog;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryAccessLog;->getOperations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "No modification report"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;->printTo(Ljava/lang/StringBuilder;I)V

    goto :goto_0
.end method
