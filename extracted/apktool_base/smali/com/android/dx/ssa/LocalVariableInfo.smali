.class public Lcom/android/dx/ssa/LocalVariableInfo;
.super Lcom/android/dx/util/MutabilityControl;
.source "SourceFile"


# instance fields
.field private final blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

.field private final emptySet:Lcom/android/dx/rop/code/RegisterSpecSet;

.field private final insnAssignments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/dx/ssa/SsaInsn;",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final regCount:I


# direct methods
.method public constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/dx/util/MutabilityControl;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result p1

    iput p1, p0, Lcom/android/dx/ssa/LocalVariableInfo;->regCount:I

    new-instance v1, Lcom/android/dx/rop/code/RegisterSpecSet;

    invoke-direct {v1, p1}, Lcom/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    iput-object v1, p0, Lcom/android/dx/ssa/LocalVariableInfo;->emptySet:Lcom/android/dx/rop/code/RegisterSpecSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/dx/rop/code/RegisterSpecSet;

    iput-object p1, p0, Lcom/android/dx/ssa/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/dx/ssa/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/dx/util/MutabilityControl;->setImmutable()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getStarts0(I)Lcom/android/dx/rop/code/RegisterSpecSet;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus index"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addAssignment(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/dx/util/MutabilityControl;->throwIfImmutable()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spec == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "insn == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public debugDump()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/dx/ssa/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/dx/ssa/LocalVariableInfo;->emptySet:Lcom/android/dx/rop/code/RegisterSpecSet;

    if-ne v1, v2, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%04x: empty set\n"

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_1

    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dx/ssa/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    aget-object v3, v3, v0

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%04x: %s\n"

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getAssignment(Lcom/android/dx/ssa/SsaInsn;)Lcom/android/dx/rop/code/RegisterSpec;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dx/rop/code/RegisterSpec;

    return-object p1
.end method

.method public getAssignmentCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getStarts(I)Lcom/android/dx/rop/code/RegisterSpecSet;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/LocalVariableInfo;->getStarts0(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/dx/ssa/LocalVariableInfo;->emptySet:Lcom/android/dx/rop/code/RegisterSpecSet;

    :goto_0
    return-object p1
.end method

.method public getStarts(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/rop/code/RegisterSpecSet;
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/dx/ssa/LocalVariableInfo;->getStarts(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object p1

    return-object p1
.end method

.method public mergeStarts(ILcom/android/dx/rop/code/RegisterSpecSet;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/dx/ssa/LocalVariableInfo;->getStarts0(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/dx/ssa/LocalVariableInfo;->setStarts(ILcom/android/dx/rop/code/RegisterSpecSet;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Lcom/android/dx/rop/code/RegisterSpecSet;->intersect(Lcom/android/dx/rop/code/RegisterSpecSet;Z)V

    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecSet;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {v2}, Lcom/android/dx/util/MutabilityControl;->setImmutable()V

    invoke-virtual {p0, p1, v2}, Lcom/android/dx/ssa/LocalVariableInfo;->setStarts(ILcom/android/dx/rop/code/RegisterSpecSet;)V

    return v1
.end method

.method public mutableCopyOfStarts(I)Lcom/android/dx/rop/code/RegisterSpecSet;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/dx/ssa/LocalVariableInfo;->getStarts0(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/dx/rop/code/RegisterSpecSet;

    iget v0, p0, Lcom/android/dx/ssa/LocalVariableInfo;->regCount:I

    invoke-direct {p1, v0}, Lcom/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    :goto_0
    return-object p1
.end method

.method public setStarts(ILcom/android/dx/rop/code/RegisterSpecSet;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/dx/util/MutabilityControl;->throwIfImmutable()V

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableInfo;->blockStarts:[Lcom/android/dx/rop/code/RegisterSpecSet;

    aput-object p2, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus index"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "specs == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
