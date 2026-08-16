.class public Lorg/eclipse/jdt/internal/core/nd/db/BTree;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;,
        Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTreeKeyNotFoundException;,
        Lorg/eclipse/jdt/internal/core/nd/db/BTree$IBTreeVisitor2;,
        Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;
    }
.end annotation


# static fields
.field private static final DEFAULT_DEGREE:I = 0x8

.field private static final DELMODE_DELETE_MAXIMUM:I = 0x2

.field private static final DELMODE_DELETE_MINIMUM:I = 0x1

.field private static final DELMODE_NORMAL:I = 0x0

.field public static final RECORD_SIZE:I = 0x4


# instance fields
.field protected final cmp:Lorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;

.field protected final db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

.field protected final degree:I

.field protected final maxChildren:I

.field protected final maxRecords:I

.field protected final medianRecord:I

.field protected final minRecords:I

.field private final nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

.field protected final offsetChildren:I

.field protected final rootPointer:J


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;JILorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    const/4 v0, 0x2

    if-lt p4, v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    .line 5
    iput-wide p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->rootPointer:J

    .line 6
    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->cmp:Lorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;

    .line 7
    iput p4, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->degree:I

    add-int/lit8 p1, p4, -0x1

    .line 8
    iput p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->minRecords:I

    mul-int/lit8 p1, p4, 0x2

    add-int/lit8 p1, p1, -0x1

    .line 9
    iput p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxRecords:I

    mul-int/lit8 p2, p4, 0x2

    .line 10
    iput p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxChildren:I

    mul-int/lit8 p1, p1, 0x4

    .line 11
    iput p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->offsetChildren:I

    add-int/lit8 p4, p4, -0x1

    .line 12
    iput p4, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->medianRecord:I

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Illegal degree "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " in tree"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;)V
    .locals 6

    const/16 v4, 0x8

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;JILorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;)V

    return-void
.end method

.method private accept(JLorg/eclipse/jdt/internal/core/nd/db/IBTreeVisitor;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    .line 2
    :cond_0
    instance-of v2, p3, Lorg/eclipse/jdt/internal/core/nd/db/BTree$IBTreeVisitor2;

    if-eqz v2, :cond_1

    .line 3
    move-object v4, p3

    check-cast v4, Lorg/eclipse/jdt/internal/core/nd/db/BTree$IBTreeVisitor2;

    invoke-interface {v4, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$IBTreeVisitor2;->preNode(J)V

    .line 4
    :cond_1
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v4, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v4

    .line 5
    iget v5, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxRecords:I

    sub-int/2addr v5, v3

    :goto_0
    if-lez v5, :cond_3

    add-int/lit8 v3, v5, -0x1

    .line 6
    invoke-virtual {p0, v4, p1, p2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v6

    cmp-long v3, v6, v0

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_3
    :goto_1
    const/4 v3, 0x0

    move v6, v3

    :goto_2
    if-lt v6, v5, :cond_d

    .line 7
    :goto_3
    iget v5, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxRecords:I

    if-lt v6, v5, :cond_4

    goto :goto_4

    .line 8
    :cond_4
    invoke-virtual {p0, v4, p1, p2, v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v7

    cmp-long v5, v7, v0

    if-nez v5, :cond_6

    .line 9
    :goto_4
    invoke-virtual {p0, v4, p1, p2, v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->accept(JLorg/eclipse/jdt/internal/core/nd/db/IBTreeVisitor;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    .line 10
    check-cast p3, Lorg/eclipse/jdt/internal/core/nd/db/BTree$IBTreeVisitor2;

    invoke-interface {p3, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$IBTreeVisitor2;->postNode(J)V

    :cond_5
    return v0

    .line 11
    :cond_6
    :try_start_1
    invoke-interface {p3, v7, v8}, Lorg/eclipse/jdt/internal/core/nd/db/IBTreeVisitor;->compare(J)I

    move-result v5

    if-lez v5, :cond_8

    .line 12
    invoke-virtual {p0, v4, p1, p2, v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->accept(JLorg/eclipse/jdt/internal/core/nd/db/IBTreeVisitor;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    instance-of v1, p3, Lorg/eclipse/jdt/internal/core/nd/db/BTree$IBTreeVisitor2;

    if-eqz v1, :cond_7

    .line 14
    check-cast p3, Lorg/eclipse/jdt/internal/core/nd/db/BTree$IBTreeVisitor2;

    invoke-interface {p3, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$IBTreeVisitor2;->postNode(J)V

    :cond_7
    return v0

    :cond_8
    if-nez v5, :cond_c

    .line 15
    :try_start_2
    invoke-virtual {p0, v4, p1, p2, v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v9

    invoke-direct {p0, v9, v10, p3}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->accept(JLorg/eclipse/jdt/internal/core/nd/db/IBTreeVisitor;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_a

    .line 16
    instance-of v0, p3, Lorg/eclipse/jdt/internal/core/nd/db/BTree$IBTreeVisitor2;

    if-eqz v0, :cond_9

    .line 17
    check-cast p3, Lorg/eclipse/jdt/internal/core/nd/db/BTree$IBTreeVisitor2;

    invoke-interface {p3, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$IBTreeVisitor2;->postNode(J)V

    :cond_9
    return v3

    .line 18
    :cond_a
    :try_start_3
    invoke-interface {p3, v7, v8}, Lorg/eclipse/jdt/internal/core/nd/db/IBTreeVisitor;->visit(J)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_c

    .line 19
    instance-of v0, p3, Lorg/eclipse/jdt/internal/core/nd/db/BTree$IBTreeVisitor2;

    if-eqz v0, :cond_b

    .line 20
    check-cast p3, Lorg/eclipse/jdt/internal/core/nd/db/BTree$IBTreeVisitor2;

    invoke-interface {p3, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$IBTreeVisitor2;->postNode(J)V

    :cond_b
    return v3

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_d
    add-int v7, v6, v5

    .line 21
    :try_start_4
    div-int/lit8 v7, v7, 0x2

    .line 22
    invoke-virtual {p0, v4, p1, p2, v7}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v8

    cmp-long v10, v8, v0

    if-nez v10, :cond_e

    goto :goto_5

    .line 23
    :cond_e
    invoke-interface {p3, v8, v9}, Lorg/eclipse/jdt/internal/core/nd/db/IBTreeVisitor;->compare(J)I

    move-result v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ltz v8, :cond_f

    :goto_5
    move v5, v7

    goto :goto_2

    :cond_f
    add-int/lit8 v6, v7, 0x1

    goto :goto_2

    :goto_6
    if-eqz v2, :cond_10

    .line 24
    check-cast p3, Lorg/eclipse/jdt/internal/core/nd/db/BTree$IBTreeVisitor2;

    invoke-interface {p3, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$IBTreeVisitor2;->postNode(J)V

    .line 25
    :cond_10
    throw v0
.end method

.method private allocateNode()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxRecords:I

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->malloc(JS)J

    move-result-wide v0

    return-wide v0
.end method

.method private append(Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;JJ)V
    .locals 13

    move-object v0, p1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    iget v5, v0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    move-object v1, p0

    move-wide v6, p2

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v8, v0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    iget v0, v0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    add-int/lit8 v10, v0, 0x1

    move-object v6, p0

    move-wide/from16 v11, p4

    invoke-virtual/range {v6 .. v12}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    return-void
.end method

.method private deallocateChildren(J)V
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxRecords:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [J

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v0, p1, p2, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->free(JS)V

    :goto_1
    if-lt v4, v1, :cond_0

    return-void

    :cond_0
    aget-wide p1, v3, v4

    const-wide/16 v5, 0x0

    cmp-long v0, p1, v5

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->deallocateChildren(J)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0, p1, p2, v5}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v6

    aput-wide v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private deleteImp(JJI)J
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;,
            Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTreeKeyNotFoundException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move/from16 v10, p5

    new-instance v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;

    move-wide/from16 v0, p3

    invoke-direct {v11, v7, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/BTree;J)V

    const/4 v6, 0x0

    const/4 v0, -0x1

    if-nez v10, :cond_2

    move v1, v6

    :goto_0
    iget v2, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v3, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    invoke-virtual {v7, v2, v3, v4, v1}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-nez v2, :cond_1

    move v12, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v12, v0

    :goto_2
    iget-object v1, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v2, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    invoke-virtual {v7, v1, v2, v3, v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x2

    const/4 v13, 0x1

    if-nez v1, :cond_6

    if-eq v12, v0, :cond_3

    invoke-direct {v7, v11, v12, v13}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->nodeContentDelete(Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;II)V

    return-wide v8

    :cond_3
    if-ne v10, v13, :cond_4

    iget-object v0, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v1, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    invoke-virtual {v7, v0, v1, v2, v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v0

    invoke-direct {v7, v11, v6, v13}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->nodeContentDelete(Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;II)V

    return-wide v0

    :cond_4
    if-ne v10, v2, :cond_5

    iget-object v0, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v1, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    iget v3, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    sub-int/2addr v3, v13

    invoke-virtual {v7, v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v0

    iget v2, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    sub-int/2addr v2, v13

    invoke-direct {v7, v11, v2, v13}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->nodeContentDelete(Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;II)V

    return-wide v0

    :cond_5
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTreeKeyNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Deletion on absent key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTreeKeyNotFoundException;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/BTree;Ljava/lang/String;)V

    throw v0

    :cond_6
    if-eq v12, v0, :cond_a

    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v11, v0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->getChild(I)Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;

    move-result-object v0

    if-eqz v0, :cond_7

    iget v1, v0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    iget v2, v7, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->minRecords:I

    if-le v1, v2, :cond_7

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->makeWritable()V

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    const/4 v5, 0x1

    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->deleteImp(JJI)J

    move-result-wide v5

    iget-object v1, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v2, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    move v4, v12

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    return-wide v8

    :cond_7
    invoke-virtual {v11, v12}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->getChild(I)Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;

    move-result-object v1

    if-eqz v1, :cond_8

    iget v2, v1, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    iget v3, v7, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->minRecords:I

    if-le v2, v3, :cond_8

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->makeWritable()V

    iget-wide v3, v1, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    const/4 v5, 0x2

    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->deleteImp(JJI)J

    move-result-wide v5

    iget-object v1, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v2, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    move v4, v12

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    return-wide v8

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->makeWritable()V

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->makeWritable()V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->makeWritable()V

    invoke-virtual {v7, v0, v11, v12, v1}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->mergeNodes(Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;ILorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;)V

    iget-wide v3, v1, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->deleteImp(JJI)J

    move-result-wide v0

    return-wide v0

    :cond_9
    return-wide v8

    :cond_a
    if-eqz v10, :cond_d

    if-eq v10, v13, :cond_c

    if-ne v10, v2, :cond_b

    iget v0, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    move v12, v0

    goto :goto_4

    :cond_b
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    new-instance v8, Lorg/eclipse/core/runtime/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown delete mode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v2, 0x4

    const-string v3, "org.eclipse.jdt.core"

    const/4 v4, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v8}, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw v0

    :cond_c
    move v12, v6

    goto :goto_4

    :cond_d
    iget v12, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    move v14, v6

    :goto_3
    iget v0, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    if-lt v14, v0, :cond_e

    goto :goto_4

    :cond_e
    iget-object v0, v7, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->cmp:Lorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;

    iget-object v1, v7, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    iget-object v2, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v3, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    invoke-virtual {v7, v2, v3, v4, v14}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v2

    move-wide/from16 v4, p1

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;->compare(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)I

    move-result v0

    if-lez v0, :cond_15

    move v12, v14

    :goto_4
    invoke-virtual {v11, v12}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->getChild(I)Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;

    move-result-object v14

    if-eqz v14, :cond_14

    iget v0, v14, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    iget v1, v7, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->minRecords:I

    if-le v0, v1, :cond_f

    iget-wide v3, v14, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->deleteImp(JJI)J

    move-result-wide v0

    return-wide v0

    :cond_f
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->makeWritable()V

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->makeWritable()V

    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v11, v0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->getChild(I)Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;

    move-result-object v15

    if-eqz v15, :cond_10

    iget v0, v15, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    iget v1, v7, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->minRecords:I

    if-le v0, v1, :cond_10

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->makeWritable()V

    iget-object v0, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v1, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    invoke-virtual {v7, v0, v1, v2, v12}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v2

    iget-object v0, v15, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v4, v15, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    invoke-virtual {v7, v0, v4, v5, v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v16

    iget-object v0, v15, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v4, v15, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    invoke-virtual {v7, v0, v4, v5, v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->append(Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;JJ)V

    invoke-direct {v7, v15, v6, v13}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->nodeContentDelete(Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;II)V

    iget-object v1, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v2, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    move v4, v12

    move-wide/from16 v5, v16

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    iget-wide v3, v14, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    move-wide/from16 v1, p1

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->deleteImp(JJI)J

    move-result-wide v0

    return-wide v0

    :cond_10
    add-int/lit8 v6, v12, -0x1

    invoke-virtual {v11, v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->getChild(I)Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;

    move-result-object v4

    if-eqz v4, :cond_11

    iget v0, v4, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    iget v1, v7, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->minRecords:I

    if-le v0, v1, :cond_11

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->makeWritable()V

    iget-object v0, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v1, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    invoke-virtual {v7, v0, v1, v2, v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v2

    iget-object v0, v4, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-object/from16 p4, v14

    iget-wide v13, v4, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    iget v1, v4, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    invoke-virtual {v7, v0, v13, v14, v1}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v12

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v14, v4

    move-wide v4, v12

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->prepend(Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;JJ)V

    iget-object v0, v14, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v1, v14, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    iget v3, v14, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v7, v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v12

    iget-object v1, v14, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v2, v14, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    iget v0, v14, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    add-int/lit8 v4, v0, -0x1

    const-wide/16 v15, 0x0

    move-object/from16 v0, p0

    move/from16 p3, v6

    move-wide v5, v15

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    iget-object v1, v14, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v2, v14, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    iget v4, v14, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    const-wide/16 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    iget-object v1, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v2, v11, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    move/from16 v4, p3

    move-wide v5, v12

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    move-object/from16 v0, p4

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->deleteImp(JJI)J

    move-result-wide v0

    return-wide v0

    :cond_11
    move/from16 p3, v6

    move-object v0, v14

    move-object v14, v4

    if-eqz v14, :cond_12

    move/from16 v1, p3

    invoke-virtual {v7, v0, v11, v1, v14}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->mergeNodes(Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;ILorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;)V

    iget-wide v3, v14, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->deleteImp(JJI)J

    move-result-wide v0

    return-wide v0

    :cond_12
    if-eqz v15, :cond_13

    invoke-virtual {v7, v15, v11, v12, v0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->mergeNodes(Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;ILorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;)V

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->deleteImp(JJI)J

    move-result-wide v0

    return-wide v0

    :cond_13
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTreeKeyNotFoundException;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v8, v9}, Ljava/lang/Long;-><init>(J)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v10}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Deletion of key not in btree: {0} mode={1}"

    invoke-static {v2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTreeKeyNotFoundException;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/BTree;Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    new-instance v8, Lorg/eclipse/core/runtime/Status;

    const-string v5, "BTree integrity error (null child found)"

    const/4 v6, 0x0

    const/4 v2, 0x4

    const-string v3, "org.eclipse.jdt.core"

    const/4 v4, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v8}, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw v0

    :cond_15
    move v4, v13

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3
.end method

.method private firstInsert(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->allocateNode()J

    move-result-wide v2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->rootPointer:J

    invoke-virtual {v0, v4, v5, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v1

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v5, p1

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    return-void
.end method

.method public static getFactory(ILorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;)Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;",
            ")",
            "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
            "Lorg/eclipse/jdt/internal/core/nd/db/BTree;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$1;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$1;-><init>(ILorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;)V

    return-object v0
.end method

.method public static getFactory(Lorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;)Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;",
            ")",
            "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
            "Lorg/eclipse/jdt/internal/core/nd/db/BTree;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-static {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getFactory(ILorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;)Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object p0

    return-object p0
.end method

.method private insert(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJJ)J
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-wide/from16 v7, p2

    move/from16 v10, p4

    move-wide/from16 v11, p5

    .line 4
    iget-object v0, v9, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v0, v11, v12}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v13

    .line 5
    iget v0, v9, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxRecords:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v9, v13, v11, v12, v0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v0

    const-wide/16 v14, 0x0

    cmp-long v0, v0, v14

    const/16 v16, 0x0

    if-eqz v0, :cond_5

    .line 6
    iget v0, v9, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->medianRecord:I

    invoke-virtual {v9, v13, v11, v12, v0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v17

    cmp-long v0, v17, p7

    if-nez v0, :cond_0

    return-wide v17

    .line 7
    :cond_0
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->makeDirty()V

    .line 8
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->allocateNode()J

    move-result-wide v5

    .line 9
    iget-object v0, v9, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v0, v5, v6}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v19

    move/from16 v4, v16

    .line 10
    :goto_0
    iget v2, v9, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->medianRecord:I

    if-lt v4, v2, :cond_4

    .line 11
    iget v0, v9, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxRecords:I

    invoke-virtual {v9, v13, v11, v12, v0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v22, v2

    move-wide v2, v5

    move/from16 v4, v22

    move-wide/from16 v23, v5

    move-wide/from16 v5, v20

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    .line 12
    iget v4, v9, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxRecords:I

    const-wide/16 v5, 0x0

    move-object v1, v13

    move-wide/from16 v2, p5

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    cmp-long v0, v7, v14

    if-nez v0, :cond_1

    .line 13
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->allocateNode()J

    move-result-wide v7

    .line 14
    iget-object v0, v9, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v0, v7, v8}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v20

    .line 15
    iget-object v0, v9, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v1, v9, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->rootPointer:J

    invoke-virtual {v0, v1, v2, v7, v8}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide v2, v7

    move-wide/from16 v5, p5

    .line 16
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    goto :goto_2

    .line 17
    :cond_1
    iget v0, v9, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxRecords:I

    add-int/lit8 v0, v0, -0x2

    move v5, v0

    move-object/from16 v0, p1

    :goto_1
    if-ge v5, v10, :cond_2

    move-object/from16 v20, v0

    .line 18
    :goto_2
    invoke-virtual/range {v20 .. v20}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getWritableChunk()Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide v2, v7

    move/from16 v4, p4

    move-wide/from16 v5, v17

    .line 19
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    add-int/lit8 v4, v10, 0x1

    move-wide/from16 v5, v23

    .line 20
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    .line 21
    iget v4, v9, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->medianRecord:I

    const-wide/16 v5, 0x0

    move-object v1, v13

    move-wide/from16 v2, p5

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    .line 22
    iget-object v0, v9, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->cmp:Lorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;

    iget-object v1, v9, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-wide/from16 v2, p7

    move-wide/from16 v4, v17

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;->compare(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)I

    move-result v0

    if-lez v0, :cond_5

    move-object/from16 v13, v19

    move-wide/from16 v11, v23

    goto/16 :goto_4

    .line 23
    :cond_2
    invoke-virtual {v9, v0, v7, v8, v5}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v20

    cmp-long v1, v20, v14

    if-eqz v1, :cond_3

    .line 24
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getWritableChunk()Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v6

    add-int/lit8 v4, v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v2, p2

    move/from16 p1, v4

    move/from16 v22, v5

    move-object v14, v6

    move-wide/from16 v5, v20

    .line 25
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    add-int/lit8 v4, v22, 0x2

    move/from16 v5, p1

    .line 26
    invoke-virtual {v9, v14, v7, v8, v5}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v5

    move-object v1, v14

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    move-object v0, v14

    goto :goto_3

    :cond_3
    move/from16 v22, v5

    :goto_3
    add-int/lit8 v5, v22, -0x1

    const-wide/16 v14, 0x0

    goto :goto_1

    :cond_4
    move/from16 v22, v2

    move-wide/from16 v23, v5

    add-int/lit8 v2, v22, 0x1

    add-int/2addr v2, v4

    .line 27
    invoke-virtual {v9, v13, v11, v12, v2}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v23

    move v14, v4

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    .line 28
    iget v0, v9, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->medianRecord:I

    add-int/lit8 v0, v0, 0x1

    add-int v4, v0, v14

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-wide/from16 v2, p5

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    .line 29
    iget v0, v9, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->medianRecord:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v14

    invoke-virtual {v9, v13, v11, v12, v0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v23

    move v4, v14

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    .line 30
    iget v0, v9, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->medianRecord:I

    add-int/lit8 v0, v0, 0x1

    add-int v4, v0, v14

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-wide/from16 v2, p5

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    add-int/lit8 v4, v14, 0x1

    move-wide/from16 v5, v23

    const-wide/16 v14, 0x0

    goto/16 :goto_0

    .line 31
    :cond_5
    :goto_4
    iget v0, v9, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxRecords:I

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-lez v0, :cond_7

    add-int/lit8 v1, v0, -0x1

    .line 32
    invoke-virtual {v9, v13, v11, v12, v1}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_7
    :goto_6
    move/from16 v7, v16

    :goto_7
    if-lt v7, v0, :cond_b

    .line 33
    iget-object v0, v9, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v0, v11, v12}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v8

    .line 34
    invoke-virtual {v9, v8, v11, v12, v7}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v5

    const-wide/16 v0, 0x0

    cmp-long v2, v5, v0

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    move-object v1, v8

    move-wide v2, v11

    move v4, v7

    move-wide/from16 v7, p7

    .line 35
    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->insert(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJJ)J

    move-result-wide v0

    return-wide v0

    .line 36
    :cond_8
    iget v0, v9, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxRecords:I

    add-int/lit8 v0, v0, -0x2

    move v10, v0

    :goto_8
    if-ge v10, v7, :cond_9

    move-object/from16 v0, p0

    move-object v1, v8

    move-wide v2, v11

    move v4, v7

    move-wide/from16 v5, p7

    .line 37
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    return-wide p7

    .line 38
    :cond_9
    invoke-virtual {v9, v8, v11, v12, v10}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v5

    const-wide/16 v0, 0x0

    cmp-long v2, v5, v0

    if-eqz v2, :cond_a

    add-int/lit8 v4, v10, 0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move-wide v2, v11

    .line 39
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    :cond_a
    add-int/lit8 v10, v10, -0x1

    goto :goto_8

    :cond_b
    add-int v1, v7, v0

    .line 40
    div-int/lit8 v1, v1, 0x2

    .line 41
    invoke-virtual {v9, v13, v11, v12, v1}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_c

    goto :goto_9

    .line 42
    :cond_c
    iget-object v6, v9, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->cmp:Lorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;

    iget-object v8, v9, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-object/from16 p1, v6

    move-object/from16 p2, v8

    move-wide/from16 p3, v2

    move-wide/from16 p5, p7

    invoke-interface/range {p1 .. p6}, Lorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;->compare(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)I

    move-result v6

    if-lez v6, :cond_d

    :goto_9
    move v0, v1

    goto :goto_7

    :cond_d
    if-gez v6, :cond_e

    add-int/lit8 v7, v1, 0x1

    goto :goto_7

    :cond_e
    return-wide v2
.end method

.method private nodeContentCopy(Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;ILorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;II)V
    .locals 9

    add-int/lit8 p5, p5, -0x1

    :goto_0
    if-gez p5, :cond_0

    return-void

    :cond_0
    add-int v0, p2, p5

    add-int v8, p4, p5

    iget v1, p1, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v2, p1, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    invoke-virtual {p0, v1, v2, v3, v0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v6

    iget-object v2, p3, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v3, p3, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    move-object v1, p0

    move v5, v8

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    iget v1, p1, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v2, p1, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    invoke-virtual {p0, v1, v2, v3, v0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v6

    iget-object v2, p3, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v3, p3, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    move-object v1, p0

    move v5, v8

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    :cond_1
    add-int/lit8 p5, p5, -0x1

    goto :goto_0
.end method

.method private nodeContentDelete(Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;II)V
    .locals 9

    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxRecords:I

    if-le p2, v0, :cond_0

    return-void

    :cond_0
    add-int v0, p2, p3

    iget v1, p1, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_1

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v4, p1, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    invoke-virtual {p0, v1, v4, v5, v0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v4

    move-wide v5, v4

    goto :goto_1

    :cond_1
    move-wide v5, v2

    :goto_1
    iget v1, p1, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_2

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v2, p1, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    invoke-virtual {p0, v1, v2, v3, v0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_2

    :cond_2
    move-wide v7, v2

    :goto_2
    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxRecords:I

    if-ge p2, v0, :cond_3

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v2, p1, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    :cond_3
    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxChildren:I

    if-ge p2, v0, :cond_4

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v2, p1, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    move-object v0, p0

    move v4, p2

    move-wide v5, v7

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private prepend(Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;JJ)V
    .locals 14

    move-object v6, p1

    iget v0, v6, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    add-int/lit8 v5, v0, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->nodeContentCopy(Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;ILorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;II)V

    iget-object v8, v6, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v9, v6, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    const/4 v11, 0x0

    move-object v7, p0

    move-wide/from16 v12, p2

    invoke-virtual/range {v7 .. v13}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    iget-object v1, v6, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v2, v6, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    const/4 v4, 0x0

    move-wide/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/eclipse/jdt/internal/core/nd/db/IBTreeVisitor;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->rootPointer:J

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->accept(JLorg/eclipse/jdt/internal/core/nd/db/IBTreeVisitor;)Z

    move-result p1

    return p1
.end method

.method public delete(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRoot()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->deleteImp(JJI)J
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTreeKeyNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public destruct()V
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRoot()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->deallocateChildren(J)V

    return-void
.end method

.method public final getChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->offsetChildren:I

    int-to-long v0, v0

    add-long/2addr p2, v0

    mul-int/lit8 p4, p4, 0x4

    int-to-long v0, p4

    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getRecPtr(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getInvariantsErrorReport()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/BTree;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->accept(Lorg/eclipse/jdt/internal/core/nd/db/IBTreeVisitor;)Z

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->getMsg()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J
    .locals 2

    mul-int/lit8 p4, p4, 0x4

    int-to-long v0, p4

    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getRecPtr(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getRoot()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->rootPointer:J

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRoot()J

    move-result-wide v5

    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->firstInsert(J)V

    return-wide p1

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v7, p1

    .line 3
    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->insert(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public mergeNodes(Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;ILorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    iget v0, v10, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    const/4 v11, 0x1

    add-int/lit8 v4, v0, 0x1

    move-object/from16 v1, p1

    iget v0, v1, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    add-int/lit8 v5, v0, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->nodeContentCopy(Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;ILorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;II)V

    iget-object v0, v8, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v1, v8, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    invoke-virtual {v7, v0, v1, v2, v9}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v5

    iget-object v1, v10, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v2, v10, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    iget v4, v10, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    add-int/lit8 v0, v9, 0x1

    iget v1, v7, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxRecords:I

    const-wide/16 v12, 0x0

    if-ne v0, v1, :cond_0

    move-wide v14, v12

    goto :goto_0

    :cond_0
    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v2, v8, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    invoke-virtual {v7, v1, v2, v3, v0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v1

    move-wide v14, v1

    :goto_0
    iget-object v1, v7, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-object v2, v8, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v3, v8, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    invoke-virtual {v7, v2, v3, v4, v0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v11}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->free(JS)V

    invoke-direct {v7, v8, v0, v11}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->nodeContentDelete(Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;II)V

    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v2, v8, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    move-object/from16 v0, p0

    move/from16 v4, p3

    move-wide v5, v14

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->putRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V

    if-nez v9, :cond_1

    cmp-long v0, v14, v12

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRoot()J

    move-result-wide v0

    iget-wide v2, v8, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-object v2, v7, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v3, v7, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->rootPointer:J

    iget-wide v5, v10, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V

    iget-object v2, v7, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v2, v0, v1, v11}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->free(JS)V

    :cond_1
    return-void
.end method

.method public final putChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->offsetChildren:I

    int-to-long v0, v0

    add-long/2addr p2, v0

    mul-int/lit8 p4, p4, 0x4

    int-to-long v0, p4

    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3, p5, p6}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putRecPtr(JJ)V

    return-void
.end method

.method public final putRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JIJ)V
    .locals 2

    mul-int/lit8 p4, p4, 0x4

    int-to-long v0, p4

    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3, p5, p6}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putRecPtr(JJ)V

    return-void
.end method
