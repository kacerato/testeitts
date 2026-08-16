.class public Lcom/android/dx/rop/code/InvokePolymorphicInsn;
.super Lcom/android/dx/rop/code/Insn;
.source "SourceFile"


# static fields
.field private static final INVOKE_DESCRIPTOR:Lcom/android/dx/rop/cst/CstString;


# instance fields
.field private final callSiteMethod:Lcom/android/dx/rop/cst/CstMethodRef;

.field private final callSiteProto:Lcom/android/dx/rop/cst/CstProtoRef;

.field private final catches:Lcom/android/dx/rop/type/TypeList;

.field private final invokeMethod:Lcom/android/dx/rop/cst/CstMethodRef;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/dx/rop/cst/CstString;

    const-string v1, "([Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-direct {v0, v1}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->INVOKE_DESCRIPTOR:Lcom/android/dx/rop/cst/CstString;

    return-void
.end method

.method public constructor <init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/CstMethodRef;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/dx/rop/code/Insn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    invoke-virtual {p1}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result p2

    const/4 p3, 0x6

    if-ne p2, p3, :cond_3

    if-eqz p4, :cond_2

    iput-object p4, p0, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->catches:Lcom/android/dx/rop/type/TypeList;

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->isSignaturePolymorphic()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object p5, p0, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->callSiteMethod:Lcom/android/dx/rop/cst/CstMethodRef;

    invoke-static {p5}, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->makeInvokeMethod(Lcom/android/dx/rop/cst/CstMethodRef;)Lcom/android/dx/rop/cst/CstMethodRef;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->invokeMethod:Lcom/android/dx/rop/cst/CstMethodRef;

    invoke-static {p5}, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->makeCallSiteProto(Lcom/android/dx/rop/cst/CstMethodRef;)Lcom/android/dx/rop/cst/CstProtoRef;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->callSiteProto:Lcom/android/dx/rop/cst/CstProtoRef;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callSiteMethod is not signature polymorphic"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "callSiteMethod == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "catches == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "opcode with invalid branchingness: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static makeCallSiteProto(Lcom/android/dx/rop/cst/CstMethodRef;)Lcom/android/dx/rop/cst/CstProtoRef;
    .locals 2

    new-instance v0, Lcom/android/dx/rop/cst/CstProtoRef;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getPrototype(Z)Lcom/android/dx/rop/type/Prototype;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/dx/rop/cst/CstProtoRef;-><init>(Lcom/android/dx/rop/type/Prototype;)V

    return-object v0
.end method

.method private static makeInvokeMethod(Lcom/android/dx/rop/cst/CstMethodRef;)Lcom/android/dx/rop/cst/CstMethodRef;
    .locals 2

    new-instance v0, Lcom/android/dx/rop/cst/CstNat;

    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstMemberRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstNat;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object p0

    sget-object v1, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->INVOKE_DESCRIPTOR:Lcom/android/dx/rop/cst/CstString;

    invoke-direct {v0, p0, v1}, Lcom/android/dx/rop/cst/CstNat;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;)V

    new-instance p0, Lcom/android/dx/rop/cst/CstMethodRef;

    sget-object v1, Lcom/android/dx/rop/cst/CstType;->METHOD_HANDLE:Lcom/android/dx/rop/cst/CstType;

    invoke-direct {p0, v1, v0}, Lcom/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    return-object p0
.end method


# virtual methods
.method public accept(Lcom/android/dx/rop/code/Insn$Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/dx/rop/code/Insn$Visitor;->visitInvokePolymorphicInsn(Lcom/android/dx/rop/code/InvokePolymorphicInsn;)V

    return-void
.end method

.method public getCallSiteMethod()Lcom/android/dx/rop/cst/CstMethodRef;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->callSiteMethod:Lcom/android/dx/rop/cst/CstMethodRef;

    return-object v0
.end method

.method public getCallSiteProto()Lcom/android/dx/rop/cst/CstProtoRef;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->callSiteProto:Lcom/android/dx/rop/cst/CstProtoRef;

    return-object v0
.end method

.method public getCatches()Lcom/android/dx/rop/type/TypeList;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->catches:Lcom/android/dx/rop/type/TypeList;

    return-object v0
.end method

.method public getInlineString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->getInvokeMethod()Lcom/android/dx/rop/cst/CstMethodRef;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstMemberRef;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->getCallSiteProto()Lcom/android/dx/rop/cst/CstProtoRef;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstProtoRef;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->catches:Lcom/android/dx/rop/type/TypeList;

    invoke-static {v1}, Lcom/android/dx/rop/code/ThrowingInsn;->toCatchString(Lcom/android/dx/rop/type/TypeList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInvokeMethod()Lcom/android/dx/rop/cst/CstMethodRef;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->invokeMethod:Lcom/android/dx/rop/cst/CstMethodRef;

    return-object v0
.end method

.method public withAddedCatch(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/code/Insn;
    .locals 7

    new-instance v6, Lcom/android/dx/rop/code/InvokePolymorphicInsn;

    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v0, p0, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->catches:Lcom/android/dx/rop/type/TypeList;

    invoke-interface {v0, p1}, Lcom/android/dx/rop/type/TypeList;->withAddedType(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/TypeList;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->getCallSiteMethod()Lcom/android/dx/rop/cst/CstMethodRef;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/InvokePolymorphicInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/CstMethodRef;)V

    return-object v6
.end method

.method public withNewRegisters(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/rop/code/Insn;
    .locals 6

    new-instance p1, Lcom/android/dx/rop/code/InvokePolymorphicInsn;

    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v2

    iget-object v4, p0, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->catches:Lcom/android/dx/rop/type/TypeList;

    invoke-virtual {p0}, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->getCallSiteMethod()Lcom/android/dx/rop/cst/CstMethodRef;

    move-result-object v5

    move-object v0, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/InvokePolymorphicInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/CstMethodRef;)V

    return-object p1
.end method

.method public withRegisterOffset(I)Lcom/android/dx/rop/code/Insn;
    .locals 7

    new-instance v6, Lcom/android/dx/rop/code/InvokePolymorphicInsn;

    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->withOffset(I)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->catches:Lcom/android/dx/rop/type/TypeList;

    invoke-virtual {p0}, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->getCallSiteMethod()Lcom/android/dx/rop/cst/CstMethodRef;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/InvokePolymorphicInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/CstMethodRef;)V

    return-object v6
.end method
