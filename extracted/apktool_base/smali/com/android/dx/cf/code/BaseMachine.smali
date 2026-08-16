.class public abstract Lcom/android/dx/cf/code/BaseMachine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/dx/cf/code/Machine;


# instance fields
.field private argCount:I

.field private args:[Lcom/android/dx/rop/type/TypeBearer;

.field private auxCases:Lcom/android/dx/cf/code/SwitchList;

.field private auxCst:Lcom/android/dx/rop/cst/Constant;

.field private auxInitValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/rop/cst/Constant;",
            ">;"
        }
    .end annotation
.end field

.field private auxInt:I

.field private auxTarget:I

.field private auxType:Lcom/android/dx/rop/type/Type;

.field private localIndex:I

.field private localInfo:Z

.field private localTarget:Lcom/android/dx/rop/code/RegisterSpec;

.field private final prototype:Lcom/android/dx/rop/type/Prototype;

.field private resultCount:I

.field private results:[Lcom/android/dx/rop/type/TypeBearer;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/type/Prototype;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/dx/cf/code/BaseMachine;->prototype:Lcom/android/dx/rop/type/Prototype;

    const/16 p1, 0xa

    new-array p1, p1, [Lcom/android/dx/rop/type/TypeBearer;

    iput-object p1, p0, Lcom/android/dx/cf/code/BaseMachine;->args:[Lcom/android/dx/rop/type/TypeBearer;

    const/4 p1, 0x6

    new-array p1, p1, [Lcom/android/dx/rop/type/TypeBearer;

    iput-object p1, p0, Lcom/android/dx/cf/code/BaseMachine;->results:[Lcom/android/dx/rop/type/TypeBearer;

    invoke-virtual {p0}, Lcom/android/dx/cf/code/BaseMachine;->clearArgs()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "prototype == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static throwLocalMismatch(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)V
    .locals 3

    new-instance v0, Lcom/android/dx/cf/code/SimException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local variable type mismatch: attempt to set or access a value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/dx/util/ToHuman;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " using a local variable of type "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/dx/util/ToHuman;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". This is symptomatic of .class transformation tools "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "that ignore local variable information."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addResult(Lcom/android/dx/rop/type/TypeBearer;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/dx/cf/code/BaseMachine;->results:[Lcom/android/dx/rop/type/TypeBearer;

    iget v1, p0, Lcom/android/dx/cf/code/BaseMachine;->resultCount:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/dx/cf/code/BaseMachine;->resultCount:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "result == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final arg(I)Lcom/android/dx/rop/type/TypeBearer;
    .locals 1

    iget v0, p0, Lcom/android/dx/cf/code/BaseMachine;->argCount:I

    if-ge p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/dx/cf/code/BaseMachine;->args:[Lcom/android/dx/rop/type/TypeBearer;

    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n >= argCount"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final argCount()I
    .locals 1

    iget v0, p0, Lcom/android/dx/cf/code/BaseMachine;->argCount:I

    return v0
.end method

.method public final argWidth()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/dx/cf/code/BaseMachine;->argCount:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/dx/cf/code/BaseMachine;->args:[Lcom/android/dx/rop/type/TypeBearer;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/type/Type;->getCategory()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final auxCstArg(Lcom/android/dx/rop/cst/Constant;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/dx/cf/code/BaseMachine;->auxCst:Lcom/android/dx/rop/cst/Constant;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final auxInitValues(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/rop/cst/Constant;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/dx/cf/code/BaseMachine;->auxInitValues:Ljava/util/ArrayList;

    return-void
.end method

.method public final auxIntArg(I)V
    .locals 0

    iput p1, p0, Lcom/android/dx/cf/code/BaseMachine;->auxInt:I

    return-void
.end method

.method public final auxSwitchArg(Lcom/android/dx/cf/code/SwitchList;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/dx/cf/code/BaseMachine;->auxCases:Lcom/android/dx/cf/code/SwitchList;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cases == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final auxTargetArg(I)V
    .locals 0

    iput p1, p0, Lcom/android/dx/cf/code/BaseMachine;->auxTarget:I

    return-void
.end method

.method public final auxType(Lcom/android/dx/rop/type/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dx/cf/code/BaseMachine;->auxType:Lcom/android/dx/rop/type/Type;

    return-void
.end method

.method public final clearArgs()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dx/cf/code/BaseMachine;->argCount:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/dx/cf/code/BaseMachine;->auxType:Lcom/android/dx/rop/type/Type;

    iput v0, p0, Lcom/android/dx/cf/code/BaseMachine;->auxInt:I

    iput-object v1, p0, Lcom/android/dx/cf/code/BaseMachine;->auxCst:Lcom/android/dx/rop/cst/Constant;

    iput v0, p0, Lcom/android/dx/cf/code/BaseMachine;->auxTarget:I

    iput-object v1, p0, Lcom/android/dx/cf/code/BaseMachine;->auxCases:Lcom/android/dx/cf/code/SwitchList;

    iput-object v1, p0, Lcom/android/dx/cf/code/BaseMachine;->auxInitValues:Ljava/util/ArrayList;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/dx/cf/code/BaseMachine;->localIndex:I

    iput-boolean v0, p0, Lcom/android/dx/cf/code/BaseMachine;->localInfo:Z

    iput-object v1, p0, Lcom/android/dx/cf/code/BaseMachine;->localTarget:Lcom/android/dx/rop/code/RegisterSpec;

    iput v2, p0, Lcom/android/dx/cf/code/BaseMachine;->resultCount:I

    return-void
.end method

.method public final clearResult()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dx/cf/code/BaseMachine;->resultCount:I

    return-void
.end method

.method public final getAuxCases()Lcom/android/dx/cf/code/SwitchList;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/cf/code/BaseMachine;->auxCases:Lcom/android/dx/cf/code/SwitchList;

    return-object v0
.end method

.method public final getAuxCst()Lcom/android/dx/rop/cst/Constant;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/cf/code/BaseMachine;->auxCst:Lcom/android/dx/rop/cst/Constant;

    return-object v0
.end method

.method public final getAuxInt()I
    .locals 1

    iget v0, p0, Lcom/android/dx/cf/code/BaseMachine;->auxInt:I

    return v0
.end method

.method public final getAuxTarget()I
    .locals 1

    iget v0, p0, Lcom/android/dx/cf/code/BaseMachine;->auxTarget:I

    return v0
.end method

.method public final getAuxType()Lcom/android/dx/rop/type/Type;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/cf/code/BaseMachine;->auxType:Lcom/android/dx/rop/type/Type;

    return-object v0
.end method

.method public final getInitValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/rop/cst/Constant;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dx/cf/code/BaseMachine;->auxInitValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getLocalIndex()I
    .locals 1

    iget v0, p0, Lcom/android/dx/cf/code/BaseMachine;->localIndex:I

    return v0
.end method

.method public final getLocalInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dx/cf/code/BaseMachine;->localInfo:Z

    return v0
.end method

.method public final getLocalTarget(Z)Lcom/android/dx/rop/code/RegisterSpec;
    .locals 4

    iget-object v0, p0, Lcom/android/dx/cf/code/BaseMachine;->localTarget:Lcom/android/dx/rop/code/RegisterSpec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lcom/android/dx/cf/code/BaseMachine;->resultCount:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    new-instance p1, Lcom/android/dx/cf/code/SimException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local target with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/dx/cf/code/BaseMachine;->resultCount:I

    if-nez v1, :cond_1

    const-string v1, "no"

    goto :goto_0

    :cond_1
    const-string v1, "multiple"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " results"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/android/dx/cf/code/BaseMachine;->results:[Lcom/android/dx/rop/type/TypeBearer;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dx/cf/code/BaseMachine;->localTarget:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v3

    if-ne v2, v3, :cond_4

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/dx/cf/code/BaseMachine;->localTarget:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p1, v0}, Lcom/android/dx/rop/code/RegisterSpec;->withType(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/android/dx/cf/code/BaseMachine;->localTarget:Lcom/android/dx/rop/code/RegisterSpec;

    return-object p1

    :cond_4
    invoke-static {v3, v2}, Lcom/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {v2, v3}, Lcom/android/dx/cf/code/BaseMachine;->throwLocalMismatch(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)V

    return-object v1

    :cond_5
    sget-object p1, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    if-ne v3, p1, :cond_6

    iget-object p1, p0, Lcom/android/dx/cf/code/BaseMachine;->localTarget:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p1, v0}, Lcom/android/dx/rop/code/RegisterSpec;->withType(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/cf/code/BaseMachine;->localTarget:Lcom/android/dx/rop/code/RegisterSpec;

    :cond_6
    iget-object p1, p0, Lcom/android/dx/cf/code/BaseMachine;->localTarget:Lcom/android/dx/rop/code/RegisterSpec;

    return-object p1
.end method

.method public getPrototype()Lcom/android/dx/rop/type/Prototype;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/cf/code/BaseMachine;->prototype:Lcom/android/dx/rop/type/Prototype;

    return-object v0
.end method

.method public final localArg(Lcom/android/dx/cf/code/Frame;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/dx/cf/code/BaseMachine;->clearArgs()V

    iget-object v0, p0, Lcom/android/dx/cf/code/BaseMachine;->args:[Lcom/android/dx/rop/type/TypeBearer;

    invoke-virtual {p1}, Lcom/android/dx/cf/code/Frame;->getLocals()Lcom/android/dx/cf/code/LocalsArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/dx/cf/code/LocalsArray;->get(I)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/dx/cf/code/BaseMachine;->argCount:I

    iput p2, p0, Lcom/android/dx/cf/code/BaseMachine;->localIndex:I

    return-void
.end method

.method public final localInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/dx/cf/code/BaseMachine;->localInfo:Z

    return-void
.end method

.method public final localTarget(ILcom/android/dx/rop/type/Type;Lcom/android/dx/rop/code/LocalItem;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/cf/code/BaseMachine;->localTarget:Lcom/android/dx/rop/code/RegisterSpec;

    return-void
.end method

.method public final popArgs(Lcom/android/dx/cf/code/Frame;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/dx/cf/code/Frame;->getStack()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/android/dx/cf/code/BaseMachine;->clearArgs()V

    .line 3
    iget-object v0, p0, Lcom/android/dx/cf/code/BaseMachine;->args:[Lcom/android/dx/rop/type/TypeBearer;

    array-length v0, v0

    if-le p2, v0, :cond_0

    add-int/lit8 v0, p2, 0xa

    .line 4
    new-array v0, v0, [Lcom/android/dx/rop/type/TypeBearer;

    iput-object v0, p0, Lcom/android/dx/cf/code/BaseMachine;->args:[Lcom/android/dx/rop/type/TypeBearer;

    :cond_0
    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/dx/cf/code/BaseMachine;->args:[Lcom/android/dx/rop/type/TypeBearer;

    invoke-virtual {p1}, Lcom/android/dx/cf/code/ExecutionStack;->pop()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6
    :cond_1
    iput p2, p0, Lcom/android/dx/cf/code/BaseMachine;->argCount:I

    return-void
.end method

.method public popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Prototype;)V
    .locals 4

    .line 7
    invoke-virtual {p2}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/android/dx/util/FixedSizeList;->size()I

    move-result v0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/dx/cf/code/BaseMachine;->popArgs(Lcom/android/dx/cf/code/Frame;I)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 10
    invoke-virtual {p2, p1}, Lcom/android/dx/rop/type/StdTypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/cf/code/BaseMachine;->args:[Lcom/android/dx/rop/type/TypeBearer;

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Lcom/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    new-instance v1, Lcom/android/dx/cf/code/SimException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "at stack depth "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", expected type "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p2, p1}, Lcom/android/dx/rop/type/StdTypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " but found "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/dx/cf/code/BaseMachine;->args:[Lcom/android/dx/rop/type/TypeBearer;

    aget-object p1, p2, p1

    .line 13
    invoke-interface {p1}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method public final popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;)V
    .locals 3

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/android/dx/cf/code/BaseMachine;->popArgs(Lcom/android/dx/cf/code/Frame;I)V

    .line 15
    iget-object p1, p0, Lcom/android/dx/cf/code/BaseMachine;->args:[Lcom/android/dx/rop/type/TypeBearer;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p2, p1}, Lcom/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 16
    :cond_0
    new-instance p1, Lcom/android/dx/cf/code/SimException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " but found "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/dx/cf/code/BaseMachine;->args:[Lcom/android/dx/rop/type/TypeBearer;

    aget-object p2, p2, v0

    .line 17
    invoke-interface {p2}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)V
    .locals 3

    const/4 v0, 0x2

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/android/dx/cf/code/BaseMachine;->popArgs(Lcom/android/dx/cf/code/Frame;I)V

    .line 19
    iget-object p1, p0, Lcom/android/dx/cf/code/BaseMachine;->args:[Lcom/android/dx/rop/type/TypeBearer;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p2, p1}, Lcom/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)Z

    move-result p1

    const-string v1, " but found "

    const-string v2, "expected type "

    if-eqz p1, :cond_1

    .line 20
    iget-object p1, p0, Lcom/android/dx/cf/code/BaseMachine;->args:[Lcom/android/dx/rop/type/TypeBearer;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-static {p3, p1}, Lcom/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 21
    :cond_0
    new-instance p1, Lcom/android/dx/cf/code/SimException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/dx/cf/code/BaseMachine;->args:[Lcom/android/dx/rop/type/TypeBearer;

    aget-object p2, p3, p2

    .line 22
    invoke-interface {p2}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    new-instance p1, Lcom/android/dx/cf/code/SimException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/dx/cf/code/BaseMachine;->args:[Lcom/android/dx/rop/type/TypeBearer;

    aget-object p2, p2, v0

    .line 24
    invoke-interface {p2}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)V
    .locals 3

    const/4 v0, 0x3

    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/android/dx/cf/code/BaseMachine;->popArgs(Lcom/android/dx/cf/code/Frame;I)V

    .line 26
    iget-object p1, p0, Lcom/android/dx/cf/code/BaseMachine;->args:[Lcom/android/dx/rop/type/TypeBearer;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p2, p1}, Lcom/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)Z

    move-result p1

    const-string v1, " but found "

    const-string v2, "expected type "

    if-eqz p1, :cond_2

    .line 27
    iget-object p1, p0, Lcom/android/dx/cf/code/BaseMachine;->args:[Lcom/android/dx/rop/type/TypeBearer;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-static {p3, p1}, Lcom/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 28
    iget-object p1, p0, Lcom/android/dx/cf/code/BaseMachine;->args:[Lcom/android/dx/rop/type/TypeBearer;

    const/4 p2, 0x2

    aget-object p1, p1, p2

    invoke-static {p4, p1}, Lcom/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 29
    :cond_0
    new-instance p1, Lcom/android/dx/cf/code/SimException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/dx/cf/code/BaseMachine;->args:[Lcom/android/dx/rop/type/TypeBearer;

    aget-object p2, p4, p2

    .line 30
    invoke-interface {p2}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_1
    new-instance p1, Lcom/android/dx/cf/code/SimException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/dx/cf/code/BaseMachine;->args:[Lcom/android/dx/rop/type/TypeBearer;

    aget-object p2, p3, p2

    .line 32
    invoke-interface {p2}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_2
    new-instance p1, Lcom/android/dx/cf/code/SimException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/dx/cf/code/BaseMachine;->args:[Lcom/android/dx/rop/type/TypeBearer;

    aget-object p2, p2, v0

    .line 34
    invoke-interface {p2}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final result(I)Lcom/android/dx/rop/type/TypeBearer;
    .locals 1

    iget v0, p0, Lcom/android/dx/cf/code/BaseMachine;->resultCount:I

    if-ge p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/dx/cf/code/BaseMachine;->results:[Lcom/android/dx/rop/type/TypeBearer;

    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n >= resultCount"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final resultCount()I
    .locals 2

    iget v0, p0, Lcom/android/dx/cf/code/BaseMachine;->resultCount:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Lcom/android/dx/cf/code/SimException;

    const-string v1, "results never set"

    invoke-direct {v0, v1}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final resultWidth()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/dx/cf/code/BaseMachine;->resultCount:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/dx/cf/code/BaseMachine;->results:[Lcom/android/dx/rop/type/TypeBearer;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/type/Type;->getCategory()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final setResult(Lcom/android/dx/rop/type/TypeBearer;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/dx/cf/code/BaseMachine;->results:[Lcom/android/dx/rop/type/TypeBearer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/dx/cf/code/BaseMachine;->resultCount:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "result == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final storeResults(Lcom/android/dx/cf/code/Frame;)V
    .locals 2

    iget v0, p0, Lcom/android/dx/cf/code/BaseMachine;->resultCount:I

    if-ltz v0, :cond_4

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/dx/cf/code/BaseMachine;->localTarget:Lcom/android/dx/rop/code/RegisterSpec;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/dx/cf/code/Frame;->getLocals()Lcom/android/dx/cf/code/LocalsArray;

    move-result-object p1

    invoke-virtual {p0, v1}, Lcom/android/dx/cf/code/BaseMachine;->getLocalTarget(Z)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dx/cf/code/LocalsArray;->set(Lcom/android/dx/rop/code/RegisterSpec;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/dx/cf/code/Frame;->getStack()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object p1

    :goto_0
    iget v0, p0, Lcom/android/dx/cf/code/BaseMachine;->resultCount:I

    if-ge v1, v0, :cond_3

    iget-boolean v0, p0, Lcom/android/dx/cf/code/BaseMachine;->localInfo:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/dx/cf/code/ExecutionStack;->setLocal()V

    :cond_2
    iget-object v0, p0, Lcom/android/dx/cf/code/BaseMachine;->results:[Lcom/android/dx/rop/type/TypeBearer;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/dx/cf/code/ExecutionStack;->push(Lcom/android/dx/rop/type/TypeBearer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p1, Lcom/android/dx/cf/code/SimException;

    const-string v0, "results never set"

    invoke-direct {p1, v0}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
