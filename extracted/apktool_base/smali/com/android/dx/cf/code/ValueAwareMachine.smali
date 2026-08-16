.class public Lcom/android/dx/cf/code/ValueAwareMachine;
.super Lcom/android/dx/cf/code/BaseMachine;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/type/Prototype;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dx/cf/code/BaseMachine;-><init>(Lcom/android/dx/rop/type/Prototype;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/dx/cf/code/Frame;II)V
    .locals 2

    if-eqz p3, :cond_5

    const/16 v0, 0x14

    if-eq p3, v0, :cond_4

    const/16 v0, 0x15

    const/4 v1, 0x0

    if-eq p3, v0, :cond_3

    const/16 v0, 0xab

    if-eq p3, v0, :cond_5

    const/16 v0, 0xac

    if-eq p3, v0, :cond_5

    sparse-switch p3, :sswitch_data_0

    packed-switch p3, :pswitch_data_0

    packed-switch p3, :pswitch_data_1

    packed-switch p3, :pswitch_data_2

    packed-switch p3, :pswitch_data_3

    packed-switch p3, :pswitch_data_4

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "shouldn\'t happen: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p2, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    invoke-virtual {p0, p2}, Lcom/android/dx/cf/code/BaseMachine;->setResult(Lcom/android/dx/rop/type/TypeBearer;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/dx/cf/code/BaseMachine;->getAuxCst()Lcom/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {p2}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dx/rop/type/Type;->getArrayType()Lcom/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/dx/cf/code/BaseMachine;->setResult(Lcom/android/dx/rop/type/TypeBearer;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/dx/cf/code/BaseMachine;->getAuxCst()Lcom/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {p2}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/dx/cf/code/BaseMachine;->setResult(Lcom/android/dx/rop/type/TypeBearer;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/dx/cf/code/BaseMachine;->getAuxCst()Lcom/android/dx/rop/cst/Constant;

    move-result-object p3

    check-cast p3, Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {p3}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/dx/rop/type/Type;->asUninitialized(I)Lcom/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/dx/cf/code/BaseMachine;->setResult(Lcom/android/dx/rop/type/TypeBearer;)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/android/dx/cf/code/BaseMachine;->arg(I)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dx/rop/type/Type;->isUninitialized()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/dx/cf/code/Frame;->makeInitialized(Lcom/android/dx/rop/type/Type;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/cf/code/BaseMachine;->getAuxCst()Lcom/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/android/dx/rop/type/TypeBearer;

    invoke-interface {p2}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object p2

    sget-object p3, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    if-ne p2, p3, :cond_1

    invoke-virtual {p0}, Lcom/android/dx/cf/code/BaseMachine;->clearResult()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/dx/cf/code/BaseMachine;->setResult(Lcom/android/dx/rop/type/TypeBearer;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/dx/cf/code/BaseMachine;->getAuxCst()Lcom/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/android/dx/rop/type/TypeBearer;

    invoke-interface {p2}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object p2

    sget-object p3, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    if-ne p2, p3, :cond_2

    invoke-virtual {p0}, Lcom/android/dx/cf/code/BaseMachine;->clearResult()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/dx/cf/code/BaseMachine;->setResult(Lcom/android/dx/rop/type/TypeBearer;)V

    goto :goto_1

    :pswitch_6
    new-instance p2, Lcom/android/dx/cf/code/ReturnAddress;

    invoke-virtual {p0}, Lcom/android/dx/cf/code/BaseMachine;->getAuxTarget()I

    move-result p3

    invoke-direct {p2, p3}, Lcom/android/dx/cf/code/ReturnAddress;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/android/dx/cf/code/BaseMachine;->setResult(Lcom/android/dx/rop/type/TypeBearer;)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/dx/cf/code/BaseMachine;->clearResult()V

    invoke-virtual {p0}, Lcom/android/dx/cf/code/BaseMachine;->getAuxInt()I

    move-result p2

    :goto_0
    if-eqz p2, :cond_6

    and-int/lit8 p3, p2, 0xf

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p3}, Lcom/android/dx/cf/code/BaseMachine;->arg(I)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/dx/cf/code/BaseMachine;->addResult(Lcom/android/dx/rop/type/TypeBearer;)V

    shr-int/lit8 p2, p2, 0x4

    goto :goto_0

    :pswitch_8
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/dx/cf/code/BaseMachine;->getAuxType()Lcom/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/dx/cf/code/BaseMachine;->setResult(Lcom/android/dx/rop/type/TypeBearer;)V

    goto :goto_1

    :cond_3
    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/android/dx/cf/code/BaseMachine;->arg(I)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/dx/cf/code/BaseMachine;->setResult(Lcom/android/dx/rop/type/TypeBearer;)V

    goto :goto_1

    :cond_4
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/dx/cf/code/BaseMachine;->getAuxCst()Lcom/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/android/dx/rop/type/TypeBearer;

    invoke-virtual {p0, p2}, Lcom/android/dx/cf/code/BaseMachine;->setResult(Lcom/android/dx/rop/type/TypeBearer;)V

    goto :goto_1

    :cond_5
    :pswitch_9
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/dx/cf/code/BaseMachine;->clearResult()V

    :cond_6
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/dx/cf/code/BaseMachine;->storeResults(Lcom/android/dx/cf/code/Frame;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x12 -> :sswitch_2
        0x2e -> :sswitch_0
        0x36 -> :sswitch_1
        0x4f -> :sswitch_3
        0x64 -> :sswitch_0
        0x68 -> :sswitch_0
        0x6c -> :sswitch_0
        0x70 -> :sswitch_0
        0x74 -> :sswitch_0
        0x78 -> :sswitch_0
        0x7a -> :sswitch_0
        0x7c -> :sswitch_0
        0x7e -> :sswitch_0
        0x80 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x84
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb1
        :pswitch_9
        :pswitch_5
        :pswitch_9
        :pswitch_5
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xbb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_0
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc5
        :pswitch_2
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method
