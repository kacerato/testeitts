.class public Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryAccessLog;,
        Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;,
        Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;
    }
.end annotation


# static fields
.field public static final FREE_OPERATION:B = 0x4t

.field public static final MALLOC_OPERATION:B = 0x3t

.field public static final POP_OPERATION:B = 0x1t

.field public static final PUSH_OPERATION:B = 0x0t

.field public static final WRITE_OPERATION:B = 0x2t

.field private static activeTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buffer0:[J

.field private buffer1:[I

.field private currentEntries:I

.field private insertionPosition:I

.field private operation:[B

.field private final operationStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;",
            ">;"
        }
    .end annotation
.end field

.field private timer:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->activeTags:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->operationStack:Ljava/util/ArrayDeque;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->allocateBuffers(I)V

    return-void
.end method

.method private addToQueue(BJI)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer0:[J

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->insertionPosition:I

    aput-wide p2, v0, v1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer1:[I

    aput p4, p2, v1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->operation:[B

    aput-byte p1, p2, v1

    add-int/lit8 v1, v1, 0x1

    array-length p1, v0

    rem-int/2addr v1, p1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->insertionPosition:I

    iget p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->currentEntries:I

    array-length p2, v0

    if-ge p1, p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->currentEntries:I

    :cond_0
    return-void
.end method

.method private allocateBuffers(I)V
    .locals 1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->getBufferEntriesFor(I)I

    move-result p1

    if-eqz p1, :cond_0

    new-array v0, p1, [J

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer0:[J

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer1:[I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->operation:[B

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer0:[J

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer1:[I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->operation:[B

    :goto_0
    return-void
.end method

.method public static createTag(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->activeTags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;-><init>(Ljava/lang/String;I)V

    sget-object p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->activeTags:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getBufferEntriesFor(I)I
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xd

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method private getTagForId(I)Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->activeTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    return-object p1
.end method

.method public static indent(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    const-string v1, "    "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->currentEntries:I

    return-void
.end method

.method public enabled()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer0:[J

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->operationStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->operationStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iget p1, p1, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;->opNum:I

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1, p1}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->addToQueue(BJI)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getBufferEntries()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer0:[J

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public getReportFor(JI)Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryAccessLog;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->operationStack:Ljava/util/ArrayDeque;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer0:[J

    if-eqz v3, :cond_5

    iget v4, v0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->insertionPosition:I

    array-length v5, v3

    add-int/2addr v5, v4

    iget v6, v0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->currentEntries:I

    sub-int/2addr v5, v6

    array-length v6, v3

    rem-int/2addr v5, v6

    array-length v6, v3

    add-int/2addr v4, v6

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    array-length v3, v3

    rem-int/2addr v4, v3

    iget-wide v7, v0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->timer:J

    move-wide v15, v7

    :goto_0
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer0:[J

    aget-wide v11, v3, v4

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer1:[I

    aget v13, v3, v4

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->operation:[B

    aget-byte v8, v3, v4

    if-eqz v8, :cond_3

    if-eq v8, v6, :cond_2

    cmp-long v3, p1, v11

    if-gez v3, :cond_0

    sub-long v9, v11, p1

    move/from16 v3, p3

    int-to-long v6, v3

    cmp-long v6, v9, v6

    if-gez v6, :cond_1

    goto :goto_1

    :cond_0
    move/from16 v3, p3

    sub-long v6, p1, v11

    int-to-long v9, v13

    cmp-long v6, v6, v9

    if-gez v6, :cond_1

    :goto_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v14, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v6, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;

    move-object v7, v6

    move-wide v9, v15

    invoke-direct/range {v7 .. v14}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryOperation;-><init>(BJJILjava/util/List;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 v6, 0x1

    sub-long/2addr v15, v6

    :goto_2
    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    move/from16 v3, p3

    invoke-direct {v0, v13}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->getTagForId(I)Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move/from16 v3, p3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_3
    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer0:[J

    array-length v8, v6

    add-int/2addr v4, v8

    sub-int/2addr v4, v7

    array-length v6, v6

    rem-int/2addr v4, v6

    if-ne v4, v5, :cond_4

    goto :goto_4

    :cond_4
    move v6, v7

    goto :goto_0

    :cond_5
    :goto_4
    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryAccessLog;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryAccessLog;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public getWriteCount()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->timer:J

    return-wide v0
.end method

.method public printLog(I)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->insertionPosition:I

    sub-int/2addr v1, p1

    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer0:[J

    array-length v3, v2

    rem-int/2addr v1, v3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->operation:[B

    aget-byte v3, v3, v1

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer0:[J

    aget-wide v5, v4, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer1:[I

    aget v1, v5, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "UNKNOWN(opcode=%d, arg0=%d, arg1=%d)\n"

    invoke-virtual {v2, v3, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto/16 :goto_1

    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-wide v4, v2, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer1:[I

    aget v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "FREE_OPERATION(address=%x, size=%d)\n"

    invoke-virtual {v3, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_1

    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-wide v4, v2, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer1:[I

    aget v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "MALLOC_OPERATION(address=%x, size=%d)\n"

    invoke-virtual {v3, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_1

    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-wide v4, v2, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer1:[I

    aget v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "WRITE_OPERATION(address=%x, size=%d)\n"

    invoke-virtual {v3, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_1

    :cond_4
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v3, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->activeTags:Ljava/util/Map;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer1:[I

    aget v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "POP_OPERATION(tag=%s)\n"

    invoke-virtual {v2, v3, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_1

    :cond_5
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v3, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->activeTags:Ljava/util/Map;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer1:[I

    aget v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "PUSH_OPERATION(tag=%s)\n"

    invoke-virtual {v2, v3, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public recordFree(JI)V
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->timer:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->timer:J

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->addToQueue(BJI)V

    return-void
.end method

.method public recordMalloc(JI)V
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->timer:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->timer:J

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->addToQueue(BJI)V

    return-void
.end method

.method public recordWrite(JI)V
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->timer:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->timer:J

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->addToQueue(BJI)V

    return-void
.end method

.method public setBufferSize(I)V
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->getBufferEntries()I

    move-result v0

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->getBufferEntriesFor(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer0:[J

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer1:[I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->operation:[B

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->allocateBuffers(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer0:[J

    const/4 v4, 0x0

    if-nez p1, :cond_1

    iput v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->currentEntries:I

    iput v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->insertionPosition:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->operationStack:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    return-void

    :cond_1
    array-length p1, p1

    iget v5, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->currentEntries:I

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lez v0, :cond_3

    iget v5, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->insertionPosition:I

    add-int v6, v5, v0

    sub-int/2addr v6, p1

    rem-int/2addr v6, v0

    if-lt v6, v5, :cond_2

    sub-int/2addr v0, v6

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer0:[J

    invoke-static {v1, v6, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer1:[I

    invoke-static {v2, v6, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->operation:[B

    invoke-static {v3, v6, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer0:[J

    iget v6, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->insertionPosition:I

    invoke-static {v1, v4, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer1:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->insertionPosition:I

    invoke-static {v2, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->operation:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->insertionPosition:I

    invoke-static {v3, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    sub-int/2addr v5, v6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer0:[J

    invoke-static {v1, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer1:[I

    invoke-static {v2, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->operation:[B

    invoke-static {v3, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_0
    iput p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->currentEntries:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->buffer0:[J

    array-length v0, v0

    rem-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->insertionPosition:I

    return-void
.end method

.method public start(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->operationStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x0

    iget p1, p1, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;->opNum:I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, p1}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->addToQueue(BJI)V

    return-void
.end method
