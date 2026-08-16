.class public Lcom/android/dx/ssa/LocalVariableExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final method:Lcom/android/dx/ssa/SsaMethod;

.field private final resultInfo:Lcom/android/dx/ssa/LocalVariableInfo;

.field private final workSet:Ljava/util/BitSet;


# direct methods
.method private constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    iput-object p1, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->method:Lcom/android/dx/ssa/SsaMethod;

    iput-object v0, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->blocks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/dx/ssa/LocalVariableInfo;

    invoke-direct {v1, p1}, Lcom/android/dx/ssa/LocalVariableInfo;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    iput-object v1, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/android/dx/ssa/LocalVariableInfo;

    new-instance p1, Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->workSet:Ljava/util/BitSet;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private doit()Lcom/android/dx/ssa/LocalVariableInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->method:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->method:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getEntryBlockIndex()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->workSet:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    invoke-direct {p0, v0}, Lcom/android/dx/ssa/LocalVariableExtractor;->processBlock(I)V

    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->workSet:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/android/dx/ssa/LocalVariableInfo;

    invoke-virtual {v0}, Lcom/android/dx/util/MutabilityControl;->setImmutable()V

    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/android/dx/ssa/LocalVariableInfo;

    return-object v0
.end method

.method public static extract(Lcom/android/dx/ssa/SsaMethod;)Lcom/android/dx/ssa/LocalVariableInfo;
    .locals 1

    new-instance v0, Lcom/android/dx/ssa/LocalVariableExtractor;

    invoke-direct {v0, p0}, Lcom/android/dx/ssa/LocalVariableExtractor;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    invoke-direct {v0}, Lcom/android/dx/ssa/LocalVariableExtractor;->doit()Lcom/android/dx/ssa/LocalVariableInfo;

    move-result-object p0

    return-object p0
.end method

.method private processBlock(I)V
    .locals 13

    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/android/dx/ssa/LocalVariableInfo;

    invoke-virtual {v0, p1}, Lcom/android/dx/ssa/LocalVariableInfo;->mutableCopyOfStarts(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->method:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaMethod;->getExitBlockIndex()I

    move-result v4

    if-ne p1, v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, v3, -0x1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/ssa/SsaInsn;

    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    move-object v7, v0

    move v5, v6

    :goto_1
    if-ge v5, v3, :cond_6

    if-eqz v4, :cond_2

    if-ne v5, p1, :cond_2

    invoke-virtual {v7}, Lcom/android/dx/util/MutabilityControl;->setImmutable()V

    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v7

    :cond_2
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/dx/ssa/SsaInsn;

    invoke-virtual {v8}, Lcom/android/dx/ssa/SsaInsn;->getLocalAssignment()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    if-nez v9, :cond_3

    invoke-virtual {v8}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/android/dx/rop/code/RegisterSpec;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->withSimpleType()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/dx/rop/code/RegisterSpec;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/dx/rop/code/RegisterSpecSet;->localItemToSpec(Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v11

    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v12

    if-eq v11, v12, :cond_4

    invoke-virtual {v7, v10}, Lcom/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/android/dx/rop/code/RegisterSpec;)V

    :cond_4
    iget-object v10, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/android/dx/ssa/LocalVariableInfo;

    invoke-virtual {v10, v8, v9}, Lcom/android/dx/ssa/LocalVariableInfo;->addAssignment(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;)V

    invoke-virtual {v7, v9}, Lcom/android/dx/rop/code/RegisterSpecSet;->put(Lcom/android/dx/rop/code/RegisterSpec;)V

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v7}, Lcom/android/dx/util/MutabilityControl;->setImmutable()V

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/android/dx/util/IntList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dx/util/IntList;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessorIndex()I

    move-result v1

    :goto_3
    if-ge v6, v2, :cond_9

    invoke-virtual {p1, v6}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v3

    if-ne v3, v1, :cond_7

    move-object v4, v7

    goto :goto_4

    :cond_7
    move-object v4, v0

    :goto_4
    iget-object v5, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/android/dx/ssa/LocalVariableInfo;

    invoke-virtual {v5, v3, v4}, Lcom/android/dx/ssa/LocalVariableInfo;->mergeStarts(ILcom/android/dx/rop/code/RegisterSpecSet;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->workSet:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->set(I)V

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    return-void
.end method
