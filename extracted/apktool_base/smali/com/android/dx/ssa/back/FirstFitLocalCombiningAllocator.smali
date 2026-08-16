.class public Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;
.super Lcom/android/dx/ssa/back/RegisterAllocator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;,
        Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private final invokeRangeInsns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/ssa/NormalSsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final localVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/dx/rop/code/LocalItem;",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

.field private final minimizeRegisters:Z

.field private final moveResultPseudoInsns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/ssa/NormalSsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final paramRangeEnd:I

.field private final phiInsns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/ssa/PhiInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final reservedRopRegs:Ljava/util/BitSet;

.field private final ssaRegsMapped:Ljava/util/BitSet;

.field private final usedRopRegs:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/back/InterferenceGraph;Z)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/back/RegisterAllocator;-><init>(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/back/InterferenceGraph;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    new-instance v0, Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lcom/android/dx/ssa/InterferenceRegisterMapper;-><init>(Lcom/android/dx/ssa/back/InterferenceGraph;I)V

    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    iput-boolean p3, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->minimizeRegisters:Z

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getParamWidth()I

    move-result p1

    iput p1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    new-instance p2, Ljava/util/BitSet;

    mul-int/lit8 p3, p1, 0x2

    invoke-direct {p2, p3}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Ljava/util/BitSet;->set(II)V

    new-instance p2, Ljava/util/BitSet;

    mul-int/lit8 p1, p1, 0x2

    invoke-direct {p2, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->moveResultPseudoInsns:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->invokeRangeInsns:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->phiInsns:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic access$100(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->isEven(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->moveResultPseudoInsns:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->invokeRangeInsns:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->phiInsns:Ljava/util/ArrayList;

    return-object p0
.end method

.method private addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v1

    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p1

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->addMapping(III)V

    iget-object p1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    iget-object p1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    add-int/2addr v1, p2

    invoke-virtual {p1, p2, v1}, Ljava/util/BitSet;->set(II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "attempt to add invalid register mapping"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private adjustAndMapSourceRangeRange(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findRangeAndAdjust(Lcom/android/dx/ssa/NormalSsaInsn;)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dx/util/FixedSizeList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p1, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v6

    add-int v7, v0, v6

    iget-object v8, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v8, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_3

    :cond_0
    invoke-direct {p0, v5}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getLocalItemForReg(I)Lcom/android/dx/rop/code/LocalItem;

    move-result-object v5

    invoke-direct {p0, v4, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    if-eqz v5, :cond_2

    invoke-direct {p0, v0, v6}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->markReserved(II)V

    iget-object v4, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v8, v2

    :goto_1
    if-ge v8, v5, :cond_2

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v10

    const/4 v11, -0x1

    invoke-virtual {p1, v10}, Lcom/android/dx/rop/code/RegisterSpecList;->indexOfRegister(I)I

    move-result v10

    if-eq v11, v10, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {p0, v9, v0, v6}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/android/dx/rop/code/RegisterSpec;II)Z

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v0, v7

    goto :goto_0

    :cond_3
    return-void
.end method

.method private analyzeInstructions()V
    .locals 2

    iget-object v0, p0, Lcom/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    new-instance v1, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;

    invoke-direct {v1, p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;-><init>(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)V

    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/android/dx/ssa/SsaInsn$Visitor;)V

    return-void
.end method

.method private canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->spansParamRange(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->interferes(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private canMapRegs(Ljava/util/ArrayList;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;I)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private findAnyFittingRange(Lcom/android/dx/ssa/NormalSsaInsn;I[ILjava/util/BitSet;)I
    .locals 8

    sget-object v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->UNSPECIFIED:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v2, v1, :cond_2

    aget v6, p3, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    invoke-static {v5}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->isEven(I)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-le v3, v4, :cond_4

    iget v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-static {v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->isEven(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->ODD:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->EVEN:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    goto :goto_3

    :cond_4
    if-lez v4, :cond_6

    iget v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-static {v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->isEven(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->EVEN:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->ODD:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    :cond_6
    :goto_3
    iget v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    :goto_4
    invoke-direct {p0, v1, p2, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(IILcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;)I

    move-result v1

    invoke-direct {p0, v1, p1, p3, p4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->fitPlanForRange(ILcom/android/dx/ssa/NormalSsaInsn;[ILjava/util/BitSet;)I

    move-result v2

    if-ltz v2, :cond_7

    return v1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p4}, Ljava/util/BitSet;->clear()V

    goto :goto_4
.end method

.method private findNextUnreservedRopReg(II)I
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getAlignment(I)Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(IILcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;)I

    move-result p1

    return p1
.end method

.method private findNextUnreservedRopReg(IILcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;)I
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    invoke-virtual {p3, v0, p1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->nextClearBit(Ljava/util/BitSet;I)I

    move-result p1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-ge v0, p2, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    add-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    if-ne v0, p2, :cond_1

    return p1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    add-int/2addr p1, v0

    invoke-virtual {p3, v1, p1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->nextClearBit(Ljava/util/BitSet;I)I

    move-result p1

    goto :goto_0
.end method

.method private findRangeAndAdjust(Lcom/android/dx/ssa/NormalSsaInsn;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/util/FixedSizeList;->size()I

    move-result v3

    new-array v4, v3, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v3, :cond_0

    invoke-virtual {v2, v6}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v8

    aput v8, v4, v6

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, -0x1

    const/high16 v8, -0x80000000

    const/4 v9, 0x0

    move v12, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v3, :cond_7

    invoke-virtual {v2, v10}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v13

    if-eqz v10, :cond_1

    add-int/lit8 v14, v10, -0x1

    aget v14, v4, v14

    sub-int/2addr v11, v14

    :cond_1
    iget-object v14, v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v14, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_2

    :cond_2
    iget-object v14, v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v14, v13}, Lcom/android/dx/ssa/BasicRegisterMapper;->oldToNew(I)I

    move-result v13

    add-int/2addr v13, v11

    if-ltz v13, :cond_6

    invoke-direct {v0, v13, v7}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->spansParamRange(II)Z

    move-result v14

    if-eqz v14, :cond_3

    goto :goto_2

    :cond_3
    new-instance v14, Ljava/util/BitSet;

    invoke-direct {v14, v3}, Ljava/util/BitSet;-><init>(I)V

    invoke-direct {v0, v13, v1, v4, v14}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->fitPlanForRange(ILcom/android/dx/ssa/NormalSsaInsn;[ILjava/util/BitSet;)I

    move-result v15

    if-gez v15, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v14}, Ljava/util/BitSet;->cardinality()I

    move-result v16

    sub-int v5, v15, v16

    if-le v5, v8, :cond_5

    move v8, v5

    move v12, v13

    move-object v9, v14

    :cond_5
    if-ne v15, v7, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    if-ne v12, v6, :cond_8

    new-instance v9, Ljava/util/BitSet;

    invoke-direct {v9, v3}, Ljava/util/BitSet;-><init>(I)V

    invoke-direct {v0, v1, v7, v4, v9}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findAnyFittingRange(Lcom/android/dx/ssa/NormalSsaInsn;I[ILjava/util/BitSet;)I

    move-result v12

    :cond_8
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    :goto_4
    if-ltz v3, :cond_9

    invoke-virtual {v2, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/dx/ssa/back/RegisterAllocator;->insertMoveBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/dx/ssa/NormalSsaInsn;->changeOneSource(ILcom/android/dx/rop/code/RegisterSpec;)V

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v9, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    goto :goto_4

    :cond_9
    return v12
.end method

.method private findRopRegForLocal(II)I
    .locals 4

    invoke-direct {p0, p2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getAlignment(I)Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    invoke-virtual {v0, v1, p1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->nextClearBit(Ljava/util/BitSet;I)I

    move-result p1

    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    if-ne v1, p2, :cond_1

    return p1

    :cond_1
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    add-int/2addr p1, v1

    invoke-virtual {v0, v2, p1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->nextClearBit(Ljava/util/BitSet;I)I

    move-result p1

    goto :goto_0
.end method

.method private fitPlanForRange(ILcom/android/dx/ssa/NormalSsaInsn;[ILjava/util/BitSet;)I
    .locals 10

    invoke-virtual {p2}, Lcom/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/util/FixedSizeList;->size()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaBasicBlock;->getLiveOutRegs()Lcom/android/dx/util/IntSet;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaSetToSpecs(Lcom/android/dx/util/IntSet;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object p2

    new-instance v2, Ljava/util/BitSet;

    iget-object v3, p0, Lcom/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_5

    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    aget v7, p3, v3

    if-eqz v3, :cond_0

    add-int/lit8 v8, v3, -0x1

    aget v8, p3, v8

    add-int/2addr p1, v8

    :cond_0
    iget-object v8, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v8, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v8, v6}, Lcom/android/dx/ssa/BasicRegisterMapper;->oldToNew(I)I

    move-result v8

    if-ne v8, p1, :cond_1

    :goto_1
    add-int/2addr v4, v7

    goto :goto_2

    :cond_1
    invoke-direct {p0, p1, v7}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->rangeContainsReserved(II)Z

    move-result v8

    const/4 v9, -0x1

    if-eqz v8, :cond_3

    :cond_2
    move v4, v9

    goto :goto_3

    :cond_3
    iget-object v8, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v8, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-direct {p0, v5, p1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v5, p2, p1, v7}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->areAnyPinned(Lcom/android/dx/rop/code/RegisterSpecList;II)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v5, v0, p1, v7}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->areAnyPinned(Lcom/android/dx/rop/code/RegisterSpecList;II)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p4, v3}, Ljava/util/BitSet;->set(I)V

    :goto_2
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return v4
.end method

.method private getAlignment(I)Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;
    .locals 2

    sget-object v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->UNSPECIFIED:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget p1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-static {p1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->isEven(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->EVEN:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->ODD:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getLocalItemForReg(I)Lcom/android/dx/rop/code/LocalItem;
    .locals 4

    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dx/rop/code/LocalItem;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getParameterIndexForReg(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, p1}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object p1

    check-cast p1, Lcom/android/dx/rop/code/CstInsn;

    invoke-virtual {p1}, Lcom/android/dx/rop/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object p1

    check-cast p1, Lcom/android/dx/rop/cst/CstInteger;

    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method private handleCheckCastResults()V
    .locals 12

    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->moveResultPseudoInsns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/NormalSsaInsn;

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v4

    const/16 v7, 0x2b

    if-eq v4, v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v8

    iget-object v9, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v9, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    iget-object v10, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v10, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    xor-int/lit8 v11, v10, 0x1

    and-int/2addr v11, v9

    if-eqz v11, :cond_3

    iget-object v10, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v10, v3}, Lcom/android/dx/ssa/BasicRegisterMapper;->oldToNew(I)I

    move-result v10

    invoke-direct {p0, v4, v10, v8}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/android/dx/rop/code/RegisterSpec;II)Z

    move-result v10

    :cond_3
    xor-int/lit8 v11, v9, 0x1

    and-int/2addr v11, v10

    if-eqz v11, :cond_4

    iget-object v9, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v9, v7}, Lcom/android/dx/ssa/BasicRegisterMapper;->oldToNew(I)I

    move-result v9

    invoke-direct {p0, v2, v9, v8}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/android/dx/rop/code/RegisterSpec;II)Z

    move-result v9

    :cond_4
    if-eqz v9, :cond_5

    if-nez v10, :cond_6

    :cond_5
    iget v9, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-direct {p0, v9, v8}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v9

    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-direct {p0, v10, v9, v8, v6}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    move-result v2

    if-nez v2, :cond_6

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v9, v8}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v9

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    move v5, v6

    :goto_2
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v2, v3}, Lcom/android/dx/ssa/BasicRegisterMapper;->oldToNew(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v3, v7}, Lcom/android/dx/ssa/BasicRegisterMapper;->oldToNew(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    if-nez v5, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/android/dx/ssa/NormalSsaInsn;

    invoke-virtual {p0, v1, v4}, Lcom/android/dx/ssa/back/RegisterAllocator;->insertMoveBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/android/dx/ssa/NormalSsaInsn;->changeOneSource(ILcom/android/dx/rop/code/RegisterSpec;)V

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private handleInvokeRangeInsns()V
    .locals 2

    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->invokeRangeInsns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/NormalSsaInsn;

    invoke-direct {p0, v1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->adjustAndMapSourceRangeRange(Lcom/android/dx/ssa/NormalSsaInsn;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleLocalAssociatedOther()V
    .locals 12

    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    move v7, v3

    move v8, v6

    :goto_1
    if-ge v7, v5, :cond_2

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v10

    iget-object v11, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v9

    invoke-virtual {v11, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_1

    if-le v10, v8, :cond_1

    move v8, v10

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2, v8}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findRopRegForLocal(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapRegs(Ljava/util/ArrayList;I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v1, v2, v8, v6}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    move-result v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_4
    return-void
.end method

.method private handleLocalAssociatedParams()V
    .locals 7

    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v3

    :goto_1
    if-ge v5, v2, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getParameterIndexForReg(I)I

    move-result v6

    if-ltz v6, :cond_0

    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v3

    invoke-direct {p0, v4, v6}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    move v4, v6

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_1

    :cond_1
    :goto_2
    if-gez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private handleNormalUnassociated()V
    .locals 6

    iget-object v0, p0, Lcom/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/dx/ssa/back/RegisterAllocator;->getDefinitionSpecForSsaReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v3

    iget v4, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-direct {p0, v4, v3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v4

    :goto_1
    invoke-direct {p0, v2, v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4, v3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2, v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private handlePhiInsns()V
    .locals 2

    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->phiInsns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/PhiInsn;

    invoke-direct {p0, v1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->processPhiInsn(Lcom/android/dx/ssa/PhiInsn;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleUnassociatedParameters()V
    .locals 4

    iget-object v0, p0, Lcom/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getParameterIndexForReg(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/android/dx/ssa/back/RegisterAllocator;->getDefinitionSpecForSsaReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    if-ltz v2, :cond_1

    invoke-direct {p0, v3, v2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static isEven(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isThisPointerReg(I)Z
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->isStatic()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private markReserved(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    add-int/2addr p2, p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/BitSet;->set(IIZ)V

    return-void
.end method

.method private printLocalVars()V
    .locals 7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Printing local vars"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dx/rop/code/RegisterSpec;

    const/16 v6, 0x76

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Local: %s Registers: %s\n"

    invoke-virtual {v3, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private processPhiInsn(Lcom/android/dx/ssa/PhiInsn;)V
    .locals 9

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/dx/ssa/PhiInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dx/util/FixedSizeList;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;

    add-int/lit8 v6, v3, 0x1

    invoke-direct {v5, v6}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;-><init>(I)V

    iget-object v6, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v6, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/BasicRegisterMapper;->oldToNew(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->add(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    iget-object v7, p0, Lcom/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    iget-object v8, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v6, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v6, v7}, Lcom/android/dx/ssa/BasicRegisterMapper;->oldToNew(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->add(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_3
    invoke-virtual {v5}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->getSize()I

    move-result v1

    if-ge p1, v1, :cond_3

    invoke-virtual {v5}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->getAndRemoveHighestCount()I

    move-result v1

    invoke-direct {p0, v4, v1, v2, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget p1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-direct {p0, p1, v2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result p1

    :goto_4
    invoke-direct {p0, v4, p1, v2, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    move-result v1

    if-nez v1, :cond_4

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result p1

    goto :goto_4

    :cond_4
    return-void
.end method

.method private rangeContainsReserved(II)Z
    .locals 2

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private spansParamRange(II)Z
    .locals 1

    iget v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    if-ge p1, v0, :cond_0

    add-int/2addr p1, p2

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private tryMapReg(Lcom/android/dx/rop/code/RegisterSpec;II)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v0

    if-gt v0, p3, :cond_0

    iget-object p3, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private tryMapRegs(Ljava/util/ArrayList;IIZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;IIZ)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/rop/code/RegisterSpec;

    iget-object v4, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2, p2, p3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/android/dx/rop/code/RegisterSpec;II)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v3

    :goto_2
    if-eqz v4, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->markReserved(II)V

    goto :goto_0

    :cond_4
    xor-int/lit8 p1, v1, 0x1

    return p1
.end method


# virtual methods
.method public allocateRegisters()Lcom/android/dx/ssa/RegisterMapper;
    .locals 1

    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->analyzeInstructions()V

    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleLocalAssociatedParams()V

    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleUnassociatedParameters()V

    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleInvokeRangeInsns()V

    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleLocalAssociatedOther()V

    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleCheckCastResults()V

    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handlePhiInsns()V

    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleNormalUnassociated()V

    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    return-object v0
.end method

.method public ssaSetToSpecs(Lcom/android/dx/util/IntSet;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 4

    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-interface {p1}, Lcom/android/dx/util/IntSet;->elements()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    invoke-interface {p1}, Lcom/android/dx/util/IntSet;->iterator()Lcom/android/dx/util/IntIterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Lcom/android/dx/util/IntIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1}, Lcom/android/dx/util/IntIterator;->next()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/dx/ssa/back/RegisterAllocator;->getDefinitionSpecForSsaReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public wantsParamsMovedHigh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
