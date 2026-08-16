.class Lcom/android/dx/cf/code/Simulator$SimVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/dx/cf/code/BytecodeArray$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/cf/code/Simulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimVisitor"
.end annotation


# instance fields
.field private frame:Lcom/android/dx/cf/code/Frame;

.field private final machine:Lcom/android/dx/cf/code/Machine;

.field private previousOffset:I

.field final synthetic this$0:Lcom/android/dx/cf/code/Simulator;


# direct methods
.method public constructor <init>(Lcom/android/dx/cf/code/Simulator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/android/dx/cf/code/Simulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/dx/cf/code/Simulator;->access$000(Lcom/android/dx/cf/code/Simulator;)Lcom/android/dx/cf/code/Machine;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    return-void
.end method

.method private checkReturnType(Lcom/android/dx/rop/type/Type;)V
    .locals 4

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {v0}, Lcom/android/dx/cf/code/Machine;->getPrototype()Lcom/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Prototype;->getReturnType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/dx/cf/code/SimException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return type mismatch: prototype indicates "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but encountered type "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getPreviousOffset()I
    .locals 1

    iget v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->previousOffset:I

    return v0
.end method

.method public setFrame(Lcom/android/dx/cf/code/Frame;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "frame == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPreviousOffset(I)V
    .locals 0

    iput p1, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->previousOffset:I

    return-void
.end method

.method public visitBranch(IIII)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/dx/cf/code/Simulator$SimVisitor;->visitInvalid(III)V

    return-void

    :pswitch_0
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    sget-object v1, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;)V

    goto :goto_0

    :pswitch_1
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3}, Lcom/android/dx/cf/code/Machine;->clearArgs()V

    goto :goto_0

    :pswitch_2
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    sget-object v1, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1, v1}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)V

    goto :goto_0

    :pswitch_3
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    sget-object v1, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1, v1}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)V

    goto :goto_0

    :pswitch_4
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    sget-object v1, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;)V

    :goto_0
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3, p4}, Lcom/android/dx/cf/code/Machine;->auxTargetArg(I)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object p4, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {p3, p4, p2, p1}, Lcom/android/dx/cf/code/Machine;->run(Lcom/android/dx/cf/code/Frame;II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V
    .locals 3

    const/16 p3, 0xbd

    if-eq p1, p3, :cond_9

    const/16 p3, 0xc5

    if-eq p1, p3, :cond_8

    const/16 p3, 0xc0

    if-eq p1, p3, :cond_7

    const/16 p3, 0xc1

    if-eq p1, p3, :cond_7

    packed-switch p1, :pswitch_data_0

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3}, Lcom/android/dx/cf/code/Machine;->clearArgs()V

    goto/16 :goto_3

    :pswitch_0
    instance-of p3, p4, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;

    if-eqz p3, :cond_2

    const/16 p3, 0xb9

    if-eq p1, p3, :cond_1

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/android/dx/cf/code/Simulator;

    invoke-static {p3}, Lcom/android/dx/cf/code/Simulator;->access$400(Lcom/android/dx/cf/code/Simulator;)Lcom/android/dx/dex/DexOptions;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/dx/dex/DexOptions;->canUseDefaultInterfaceMethods()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/dx/cf/code/SimException;

    const-string p2, "default or static interface method used without --min-sdk-version >= 24"

    invoke-direct {p1, p2}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    check-cast p4, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;

    invoke-virtual {p4}, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;->toMethodRef()Lcom/android/dx/rop/cst/CstMethodRef;

    move-result-object p4

    :cond_2
    instance-of p3, p4, Lcom/android/dx/rop/cst/CstMethodRef;

    if-eqz p3, :cond_5

    move-object p3, p4

    check-cast p3, Lcom/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {p3}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->isSignaturePolymorphic()Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/android/dx/cf/code/Simulator;

    invoke-static {p3}, Lcom/android/dx/cf/code/Simulator;->access$400(Lcom/android/dx/cf/code/Simulator;)Lcom/android/dx/dex/DexOptions;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/dx/dex/DexOptions;->canUseInvokePolymorphic()Z

    move-result p3

    if-eqz p3, :cond_4

    const/16 p3, 0xb6

    if-ne p1, p3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p2, Lcom/android/dx/cf/code/SimException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported signature polymorphic invocation ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/dx/cf/code/ByteOps;->opName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p1, Lcom/android/dx/cf/code/SimException;

    const-string p2, "signature-polymorphic method called without --min-sdk-version >= 26"

    invoke-direct {p1, p2}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    const/16 p3, 0xb8

    if-ne p1, p3, :cond_6

    const/4 p3, 0x1

    goto :goto_2

    :cond_6
    const/4 p3, 0x0

    :goto_2
    move-object v0, p4

    check-cast v0, Lcom/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0, p3}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getPrototype(Z)Lcom/android/dx/rop/type/Prototype;

    move-result-object p3

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, p3}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Prototype;)V

    goto :goto_3

    :pswitch_1
    move-object p3, p4

    check-cast p3, Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {p3}, Lcom/android/dx/rop/cst/CstFieldRef;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object p3

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    sget-object v2, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2, p3}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)V

    goto :goto_3

    :pswitch_2
    move-object p3, p4

    check-cast p3, Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {p3}, Lcom/android/dx/rop/cst/CstFieldRef;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object p3

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, p3}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;)V

    goto :goto_3

    :cond_7
    :pswitch_3
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    sget-object v1, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;)V

    goto :goto_3

    :cond_8
    sget-object p3, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    invoke-static {p3, p5}, Lcom/android/dx/rop/type/Prototype;->internInts(Lcom/android/dx/rop/type/Type;I)Lcom/android/dx/rop/type/Prototype;

    move-result-object p3

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, p3}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Prototype;)V

    goto :goto_3

    :cond_9
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    sget-object v1, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;)V

    :goto_3
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3, p5}, Lcom/android/dx/cf/code/Machine;->auxIntArg(I)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3, p4}, Lcom/android/dx/cf/code/Machine;->auxCstArg(Lcom/android/dx/rop/cst/Constant;)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object p4, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {p3, p4, p2, p1}, Lcom/android/dx/cf/code/Machine;->run(Lcom/android/dx/cf/code/Frame;II)V

    return-void

    :pswitch_data_0
    .packed-switch 0xb3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public visitInvalid(III)V
    .locals 1

    new-instance p2, Lcom/android/dx/cf/code/SimException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid opcode "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public visitLocal(IIIILcom/android/dx/rop/type/Type;I)V
    .locals 6

    const/16 v0, 0x36

    if-ne p1, v0, :cond_0

    add-int v1, p2, p3

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    iget-object v2, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/android/dx/cf/code/Simulator;

    invoke-static {v2}, Lcom/android/dx/cf/code/Simulator;->access$300(Lcom/android/dx/cf/code/Simulator;)Lcom/android/dx/cf/code/LocalVariableList;

    move-result-object v2

    invoke-virtual {v2, v1, p4}, Lcom/android/dx/cf/code/LocalVariableList;->pcAndIndexToLocal(II)Lcom/android/dx/cf/code/LocalVariableList$Item;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/dx/cf/code/LocalVariableList$Item;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/type/Type;->getBasicFrameType()I

    move-result v4

    invoke-virtual {p5}, Lcom/android/dx/rop/type/Type;->getBasicFrameType()I

    move-result v5

    if-eq v4, v5, :cond_2

    move-object v3, p5

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v3, p5

    :cond_2
    :goto_1
    const/16 v4, 0x15

    if-eq p1, v4, :cond_7

    if-eq p1, v0, :cond_5

    const/16 v0, 0x84

    if-eq p1, v0, :cond_3

    const/16 p6, 0xa9

    if-eq p1, p6, :cond_7

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/dx/cf/code/Simulator$SimVisitor;->visitInvalid(III)V

    return-void

    :cond_3
    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/android/dx/cf/code/LocalVariableList$Item;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v2

    :goto_2
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, p4}, Lcom/android/dx/cf/code/Machine;->localArg(Lcom/android/dx/cf/code/Frame;I)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3, p4, v3, v2}, Lcom/android/dx/cf/code/Machine;->localTarget(ILcom/android/dx/rop/type/Type;Lcom/android/dx/rop/code/LocalItem;)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3, p5}, Lcom/android/dx/cf/code/Machine;->auxType(Lcom/android/dx/rop/type/Type;)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3, p6}, Lcom/android/dx/cf/code/Machine;->auxIntArg(I)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-static {p6}, Lcom/android/dx/rop/cst/CstInteger;->make(I)Lcom/android/dx/rop/cst/CstInteger;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/android/dx/cf/code/Machine;->auxCstArg(Lcom/android/dx/rop/cst/Constant;)V

    goto :goto_5

    :cond_5
    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Lcom/android/dx/cf/code/LocalVariableList$Item;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v2

    :goto_3
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object p6, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {p3, p6, p5}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3, p5}, Lcom/android/dx/cf/code/Machine;->auxType(Lcom/android/dx/rop/type/Type;)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3, p4, v3, v2}, Lcom/android/dx/cf/code/Machine;->localTarget(ILcom/android/dx/rop/type/Type;Lcom/android/dx/rop/code/LocalItem;)V

    goto :goto_5

    :cond_7
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object p6, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {p3, p6, p4}, Lcom/android/dx/cf/code/Machine;->localArg(Lcom/android/dx/cf/code/Frame;I)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    if-eqz v1, :cond_8

    const/4 p4, 0x1

    goto :goto_4

    :cond_8
    const/4 p4, 0x0

    :goto_4
    invoke-interface {p3, p4}, Lcom/android/dx/cf/code/Machine;->localInfo(Z)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3, p5}, Lcom/android/dx/cf/code/Machine;->auxType(Lcom/android/dx/rop/type/Type;)V

    :goto_5
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object p4, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {p3, p4, p2, p1}, Lcom/android/dx/cf/code/Machine;->run(Lcom/android/dx/cf/code/Frame;II)V

    return-void
.end method

.method public visitNewarray(IILcom/android/dx/rop/cst/CstType;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/android/dx/rop/cst/CstType;",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/rop/cst/Constant;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    sget-object v1, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    invoke-interface {p2, v0, v1}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;)V

    iget-object p2, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p2, p4}, Lcom/android/dx/cf/code/Machine;->auxInitValues(Ljava/util/ArrayList;)V

    iget-object p2, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p2, p3}, Lcom/android/dx/cf/code/Machine;->auxCstArg(Lcom/android/dx/rop/cst/Constant;)V

    iget-object p2, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    const/16 p4, 0xbc

    invoke-interface {p2, p3, p1, p4}, Lcom/android/dx/cf/code/Machine;->run(Lcom/android/dx/cf/code/Frame;II)V

    return-void
.end method

.method public visitNoArgs(IIILcom/android/dx/rop/type/Type;)V
    .locals 8

    if-eqz p1, :cond_1a

    const/16 v0, 0xbe

    const/4 v1, 0x0

    if-eq p1, v0, :cond_18

    const/16 v0, 0xbf

    if-eq p1, v0, :cond_17

    const/16 v0, 0xc2

    if-eq p1, v0, :cond_17

    const/16 v0, 0xc3

    if-eq p1, v0, :cond_17

    const/4 v0, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    sparse-switch p1, :sswitch_data_0

    const/16 v4, 0x11

    const v5, 0x32132

    const/16 v6, 0x3213

    const/16 v7, 0x212

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/dx/cf/code/Simulator$SimVisitor;->visitInvalid(III)V

    return-void

    :pswitch_0
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    sget-object v1, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1, v1}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)V

    goto/16 :goto_5

    :pswitch_1
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    sget-object v1, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1, v1}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)V

    goto/16 :goto_5

    :pswitch_2
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    sget-object v1, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1, v1}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)V

    goto/16 :goto_5

    :pswitch_3
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    sget-object v1, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;)V

    goto/16 :goto_5

    :pswitch_4
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    sget-object v1, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;)V

    goto/16 :goto_5

    :pswitch_5
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    sget-object v1, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;)V

    goto/16 :goto_5

    :pswitch_6
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    sget-object v1, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;)V

    goto/16 :goto_5

    :pswitch_7
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/android/dx/cf/code/Frame;->getStack()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->isCategory1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, v2}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/dx/rop/type/Type;->isCategory1()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, v3}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;I)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    const/16 v0, 0x12

    invoke-interface {p3, v0}, Lcom/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_5

    :cond_0
    invoke-static {}, Lcom/android/dx/cf/code/Simulator;->access$100()Lcom/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    :pswitch_8
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/android/dx/cf/code/Frame;->getStack()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->isCategory2()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p3, v3}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->isCategory2()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, v3}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;I)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3, v7}, Lcom/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p3, v0}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/dx/rop/type/Type;->isCategory1()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {p3, v1, v0}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;I)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3, v6}, Lcom/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_5

    :cond_2
    invoke-static {}, Lcom/android/dx/cf/code/Simulator;->access$100()Lcom/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {p3, v2}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->isCategory1()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p3, v3}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->isCategory2()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {p3, v1, v0}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;I)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3, v5}, Lcom/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_5

    :cond_4
    invoke-virtual {p3, v0}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/dx/rop/type/Type;->isCategory1()Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    const/4 v1, 0x4

    invoke-interface {p3, v0, v1}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;I)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    const v0, 0x432143

    invoke-interface {p3, v0}, Lcom/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_5

    :cond_5
    invoke-static {}, Lcom/android/dx/cf/code/Simulator;->access$100()Lcom/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    :cond_6
    invoke-static {}, Lcom/android/dx/cf/code/Simulator;->access$100()Lcom/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    :pswitch_9
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/android/dx/cf/code/Frame;->getStack()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->isCategory2()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p3, v3}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/dx/rop/type/Type;->isCategory2()Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, v3}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;I)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3, v7}, Lcom/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_5

    :cond_7
    invoke-static {}, Lcom/android/dx/cf/code/Simulator;->access$100()Lcom/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    :cond_8
    invoke-virtual {p3, v2}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->isCategory2()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p3, v3}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/dx/rop/type/Type;->isCategory2()Z

    move-result p3

    if-nez p3, :cond_9

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {p3, v1, v0}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;I)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3, v5}, Lcom/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_5

    :cond_9
    invoke-static {}, Lcom/android/dx/cf/code/Simulator;->access$100()Lcom/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    :pswitch_a
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/android/dx/cf/code/Frame;->getStack()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->isCategory2()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p3, v2}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->isCategory2()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, v3}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;I)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3, v7}, Lcom/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_5

    :cond_a
    invoke-virtual {p3, v3}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/dx/rop/type/Type;->isCategory1()Z

    move-result p3

    if-eqz p3, :cond_b

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {p3, v1, v0}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;I)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3, v6}, Lcom/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_5

    :cond_b
    invoke-static {}, Lcom/android/dx/cf/code/Simulator;->access$100()Lcom/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    :cond_c
    invoke-static {}, Lcom/android/dx/cf/code/Simulator;->access$100()Lcom/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    :pswitch_b
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/android/dx/cf/code/Frame;->getStack()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->isCategory1()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p3, v2}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/dx/rop/type/Type;->isCategory1()Z

    move-result p3

    if-eqz p3, :cond_d

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, v3}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;I)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3, v7}, Lcom/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_5

    :cond_d
    invoke-static {}, Lcom/android/dx/cf/code/Simulator;->access$100()Lcom/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    :pswitch_c
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/android/dx/cf/code/Frame;->getStack()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/dx/rop/type/Type;->isCategory2()Z

    move-result p3

    if-nez p3, :cond_e

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, v2}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;I)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3, v4}, Lcom/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_5

    :cond_e
    invoke-static {}, Lcom/android/dx/cf/code/Simulator;->access$100()Lcom/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    :pswitch_d
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/android/dx/cf/code/Frame;->getStack()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->isCategory2()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, v2}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;I)V

    goto :goto_0

    :cond_f
    invoke-virtual {p3, v2}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/dx/rop/type/Type;->isCategory1()Z

    move-result p3

    if-eqz p3, :cond_10

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, v3}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;I)V

    const/16 v4, 0x2121

    :goto_0
    const/16 p3, 0x5c

    if-ne p1, p3, :cond_1b

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3, v4}, Lcom/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_5

    :cond_10
    invoke-static {}, Lcom/android/dx/cf/code/Simulator;->access$100()Lcom/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    :pswitch_e
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/android/dx/cf/code/Frame;->getStack()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/dx/rop/type/Type;->isCategory2()Z

    move-result p3

    if-nez p3, :cond_11

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, v2}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;I)V

    goto/16 :goto_5

    :cond_11
    invoke-static {}, Lcom/android/dx/cf/code/Simulator;->access$100()Lcom/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    :sswitch_0
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3}, Lcom/android/dx/cf/code/Machine;->clearArgs()V

    sget-object p3, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    invoke-direct {p0, p3}, Lcom/android/dx/cf/code/Simulator$SimVisitor;->checkReturnType(Lcom/android/dx/rop/type/Type;)V

    goto/16 :goto_5

    :sswitch_1
    sget-object p3, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    if-ne p4, p3, :cond_12

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/android/dx/cf/code/Frame;->getStack()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object p3

    goto :goto_1

    :cond_12
    move-object p3, p4

    :goto_1
    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, p4}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;)V

    invoke-direct {p0, p3}, Lcom/android/dx/cf/code/Simulator$SimVisitor;->checkReturnType(Lcom/android/dx/rop/type/Type;)V

    goto/16 :goto_5

    :sswitch_2
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    sget-object v1, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    invoke-interface {p3, v0, p4, v1}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)V

    goto/16 :goto_5

    :sswitch_3
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, p4}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;)V

    goto/16 :goto_5

    :pswitch_f
    :sswitch_4
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, p4, p4}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)V

    goto/16 :goto_5

    :sswitch_5
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/android/dx/cf/code/Frame;->getStack()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    invoke-virtual {p4}, Lcom/android/dx/rop/type/Type;->isCategory1()Z

    move-result v1

    if-eqz v1, :cond_13

    move v0, v3

    :cond_13
    invoke-virtual {p3, v0}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {p3, v0}, Lcom/android/dx/cf/code/ExecutionStack;->peekLocal(I)Z

    move-result p3

    invoke-static {p4, v1}, Lcom/android/dx/cf/code/Simulator;->access$200(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    move-result-object v0

    if-eqz p3, :cond_15

    sget-object p3, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    if-ne v0, p3, :cond_14

    :goto_2
    move-object p4, p3

    goto :goto_3

    :cond_14
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getComponentType()Lcom/android/dx/rop/type/Type;

    move-result-object p3

    goto :goto_2

    :cond_15
    :goto_3
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    sget-object v2, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    invoke-interface {p3, v1, v0, v2, p4}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)V

    goto :goto_5

    :sswitch_6
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/android/dx/cf/code/Frame;->getStack()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    invoke-virtual {p3, v2}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/android/dx/cf/code/Simulator;->access$200(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    move-result-object p3

    sget-object p4, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    if-ne p3, p4, :cond_16

    goto :goto_4

    :cond_16
    invoke-virtual {p3}, Lcom/android/dx/rop/type/Type;->getComponentType()Lcom/android/dx/rop/type/Type;

    move-result-object p4

    :goto_4
    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    sget-object v2, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    invoke-interface {v0, v1, p3, v2}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)V

    goto :goto_5

    :cond_17
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    sget-object v1, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;)V

    goto :goto_5

    :cond_18
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/android/dx/cf/code/Frame;->getStack()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/android/dx/rop/type/Type;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/dx/rop/type/Type;->isArrayOrKnownNull()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    sget-object v1, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;)V

    goto :goto_5

    :cond_19
    new-instance p1, Lcom/android/dx/cf/code/SimException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "type mismatch: expected array type but encountered "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    :sswitch_7
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3}, Lcom/android/dx/cf/code/Machine;->clearArgs()V

    :cond_1b
    :goto_5
    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3, p4}, Lcom/android/dx/cf/code/Machine;->auxType(Lcom/android/dx/rop/type/Type;)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object p4, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {p3, p4, p2, p1}, Lcom/android/dx/cf/code/Machine;->run(Lcom/android/dx/cf/code/Frame;II)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x2e -> :sswitch_6
        0x4f -> :sswitch_5
        0x64 -> :sswitch_4
        0x68 -> :sswitch_4
        0x6c -> :sswitch_4
        0x70 -> :sswitch_4
        0x74 -> :sswitch_3
        0x78 -> :sswitch_2
        0x7a -> :sswitch_2
        0x7c -> :sswitch_2
        0x7e -> :sswitch_4
        0x80 -> :sswitch_4
        0x82 -> :sswitch_4
        0xac -> :sswitch_1
        0xb1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x85
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public visitSwitch(IIILcom/android/dx/cf/code/SwitchList;I)V
    .locals 2

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    sget-object v1, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1}, Lcom/android/dx/cf/code/Machine;->popArgs(Lcom/android/dx/cf/code/Frame;Lcom/android/dx/rop/type/Type;)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3, p5}, Lcom/android/dx/cf/code/Machine;->auxIntArg(I)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    invoke-interface {p3, p4}, Lcom/android/dx/cf/code/Machine;->auxSwitchArg(Lcom/android/dx/cf/code/SwitchList;)V

    iget-object p3, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/android/dx/cf/code/Machine;

    iget-object p4, p0, Lcom/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/android/dx/cf/code/Frame;

    invoke-interface {p3, p4, p2, p1}, Lcom/android/dx/cf/code/Machine;->run(Lcom/android/dx/cf/code/Frame;II)V

    return-void
.end method
