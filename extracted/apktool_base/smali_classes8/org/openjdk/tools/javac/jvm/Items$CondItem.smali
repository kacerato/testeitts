.class Lorg/openjdk/tools/javac/jvm/Items$CondItem;
.super Lorg/openjdk/tools/javac/jvm/Items$Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CondItem"
.end annotation


# instance fields
.field falseJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

.field opcode:I

.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/Items;

.field tree:Lorg/openjdk/tools/javac/tree/JCTree;

.field trueJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/Items;ILorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$Chain;)V
    .locals 1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/Items$Item;-><init>(Lorg/openjdk/tools/javac/jvm/Items;I)V

    iput p2, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->opcode:I

    iput-object p3, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->trueJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    iput-object p4, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->falseJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    return-void
.end method


# virtual methods
.method public drop()V
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$Item;->drop()V

    return-void
.end method

.method public duplicate()V
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$Item;->duplicate()V

    return-void
.end method

.method public isFalse()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->trueJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->opcode:I

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTrue()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->falseJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->opcode:I

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jumpFalse()Lorg/openjdk/tools/javac/jvm/Code$Chain;
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->falseJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->opcode:I

    invoke-static {v2}, Lorg/openjdk/tools/javac/jvm/Code;->negate(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/jvm/Code;->branch(I)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->mergeChains(Lorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$Chain;)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->falseJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v2, v2, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v3, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->opcode:I

    invoke-static {v3}, Lorg/openjdk/tools/javac/jvm/Code;->negate(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/jvm/Code;->branch(I)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjdk/tools/javac/jvm/Code;->mergeChains(Lorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$Chain;)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v2, v2, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v3, v2, Lorg/openjdk/tools/javac/jvm/Code;->crt:Lorg/openjdk/tools/javac/jvm/CRTable;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    const/16 v5, 0x100

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v2

    invoke-virtual {v3, v4, v5, v0, v2}, Lorg/openjdk/tools/javac/jvm/CRTable;->put(Ljava/lang/Object;III)V

    return-object v1
.end method

.method public jumpTrue()Lorg/openjdk/tools/javac/jvm/Code$Chain;
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->trueJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->opcode:I

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/jvm/Code;->branch(I)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->mergeChains(Lorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$Chain;)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->trueJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v2, v2, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v3, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->opcode:I

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/jvm/Code;->branch(I)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjdk/tools/javac/jvm/Code;->mergeChains(Lorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$Chain;)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v2, v2, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v3, v2, Lorg/openjdk/tools/javac/jvm/Code;->crt:Lorg/openjdk/tools/javac/jvm/CRTable;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    const/16 v5, 0x80

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v2

    invoke-virtual {v3, v4, v5, v0, v2}, Lorg/openjdk/tools/javac/jvm/CRTable;->put(Ljava/lang/Object;III)V

    return-object v1
.end method

.method public load()Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->jumpFalse()Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->isFalse()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->trueJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v2, 0xa7

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/jvm/Code;->branch(I)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v2, v2, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Items;->access$000(Lorg/openjdk/tools/javac/jvm/Items;)[Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public mkCond()Lorg/openjdk/tools/javac/jvm/Items$CondItem;
    .locals 0

    return-object p0
.end method

.method public negate()Lorg/openjdk/tools/javac/jvm/Items$CondItem;
    .locals 5

    new-instance v0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->opcode:I

    invoke-static {v2}, Lorg/openjdk/tools/javac/jvm/Code;->negate(I)I

    move-result v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->falseJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->trueJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/openjdk/tools/javac/jvm/Items$CondItem;-><init>(Lorg/openjdk/tools/javac/jvm/Items;ILorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    iput-object v1, v0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    return-object v0
.end method

.method public stash(I)V
    .locals 0

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cond("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->opcode:I

    invoke-static {v1}, Lorg/openjdk/tools/javac/jvm/Code;->mnem(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public width()I
    .locals 1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
