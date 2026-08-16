.class Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/db/BTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BTNode"
.end annotation


# instance fields
.field chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

.field final keyCount:I

.field final node:J

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/nd/db/BTree;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/db/BTree;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->this$0:Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxRecords:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    invoke-virtual {p1, v1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->keyCount:I

    return-void
.end method


# virtual methods
.method public getChild(I)Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->this$0:Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    iget v1, v0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxChildren:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->node:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->this$0:Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    invoke-direct {p1, v2, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/BTree;J)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public makeWritable()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getWritableChunk()Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTNode;->chunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    return-void
.end method
