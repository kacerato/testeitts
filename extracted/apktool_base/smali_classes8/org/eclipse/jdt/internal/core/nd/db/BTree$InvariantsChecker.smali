.class Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/db/BTree$IBTreeVisitor2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/db/BTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InvariantsChecker"
.end annotation


# instance fields
.field depth:I

.field leafDepth:Ljava/lang/Integer;

.field msg:Ljava/lang/String;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/nd/db/BTree;

.field valid:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/db/BTree;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->this$0:Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->valid:Z

    const-string p1, ""

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compare(J)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->valid:Z

    return v0
.end method

.method public postNode(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->depth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->depth:I

    return-void
.end method

.method public preNode(J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->depth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->depth:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->this$0:Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxRecords:I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->this$0:Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    iget v7, v6, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxRecords:I

    const-wide/16 v8, 0x0

    if-lt v3, v7, :cond_b

    move v3, v2

    move v6, v3

    :goto_1
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->this$0:Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    iget v10, v7, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxChildren:I

    if-lt v3, v10, :cond_9

    add-int/lit8 v3, v5, 0x1

    if-eq v0, v3, :cond_2

    iget v3, v7, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxRecords:I

    if-ne v0, v3, :cond_0

    sub-int/2addr v3, v1

    if-ne v5, v3, :cond_0

    move v3, v1

    goto :goto_2

    :cond_0
    move v3, v2

    :goto_2
    if-nez v0, :cond_1

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    move v1, v2

    :goto_3
    if-nez v3, :cond_2

    if-nez v1, :cond_2

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->valid:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->msg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v1, v7, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[{0} blanks inconsistent b={1} nb={2}]"

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->msg:Ljava/lang/String;

    :cond_2
    if-eqz v6, :cond_3

    add-int/lit8 v0, v4, 0x1

    if-eq v6, v0, :cond_3

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->valid:Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->msg:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "[{0} wrong number of children with respect to key count]"

    invoke-static {v3, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->msg:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->this$0:Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v7, v0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->rootPointer:J

    invoke-virtual {v1, v7, v8}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->this$0:Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    iget v1, v0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->minRecords:I

    if-lt v4, v1, :cond_5

    iget v0, v0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxRecords:I

    if-le v4, v0, :cond_6

    :cond_5
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->valid:Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->msg:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[{0} key count out of range]"

    invoke-static {p2, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->msg:Ljava/lang/String;

    :cond_6
    if-nez v6, :cond_8

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->leafDepth:Ljava/lang/Integer;

    if-nez p1, :cond_7

    new-instance p1, Ljava/lang/Integer;

    iget p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->depth:I

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->leafDepth:Ljava/lang/Integer;

    :cond_7
    iget p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->depth:I

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->leafDepth:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p1, p2, :cond_8

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->valid:Z

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->msg:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "Leaf nodes at differing depths"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->msg:Ljava/lang/String;

    :cond_8
    return-void

    :cond_9
    iget-object v10, v7, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v10, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v10

    invoke-virtual {v7, v10, p1, p2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getChild(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v10

    cmp-long v7, v10, v8

    if-eqz v7, :cond_a

    add-int/lit8 v6, v6, 0x1

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_b
    iget-object v7, v6, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v7, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v7

    invoke-virtual {v6, v7, p1, p2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getRecord(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;JI)J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-eqz v6, :cond_c

    add-int/lit8 v4, v4, 0x1

    move v5, v3

    goto :goto_4

    :cond_c
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$InvariantsChecker;->this$0:Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    iget v6, v6, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->maxRecords:I

    if-ne v0, v6, :cond_d

    move v0, v3

    :cond_d
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method public visit(J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
