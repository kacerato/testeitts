.class public final Lcom/android/dx/cf/code/ConcreteMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/dx/cf/iface/Method;


# instance fields
.field private final attCode:Lcom/android/dx/cf/attrib/AttCode;

.field private final lineNumbers:Lcom/android/dx/cf/code/LineNumberList;

.field private final localVariables:Lcom/android/dx/cf/code/LocalVariableList;

.field private final method:Lcom/android/dx/cf/iface/Method;

.field private final sourceFile:Lcom/android/dx/rop/cst/CstString;


# direct methods
.method public constructor <init>(Lcom/android/dx/cf/iface/Method;Lcom/android/dx/cf/iface/ClassFile;ZZ)V
    .locals 0

    .line 1
    invoke-interface {p2}, Lcom/android/dx/cf/iface/ClassFile;->getSourceFile()Lcom/android/dx/rop/cst/CstString;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/dx/cf/code/ConcreteMethod;-><init>(Lcom/android/dx/cf/iface/Method;Lcom/android/dx/rop/cst/CstString;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/dx/cf/iface/Method;Lcom/android/dx/rop/cst/CstString;ZZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/dx/cf/code/ConcreteMethod;->method:Lcom/android/dx/cf/iface/Method;

    .line 4
    iput-object p2, p0, Lcom/android/dx/cf/code/ConcreteMethod;->sourceFile:Lcom/android/dx/rop/cst/CstString;

    .line 5
    invoke-interface {p1}, Lcom/android/dx/cf/iface/Member;->getAttributes()Lcom/android/dx/cf/iface/AttributeList;

    move-result-object p1

    .line 6
    const-string p2, "Code"

    invoke-interface {p1, p2}, Lcom/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    check-cast p1, Lcom/android/dx/cf/attrib/AttCode;

    iput-object p1, p0, Lcom/android/dx/cf/code/ConcreteMethod;->attCode:Lcom/android/dx/cf/attrib/AttCode;

    .line 7
    invoke-virtual {p1}, Lcom/android/dx/cf/attrib/AttCode;->getAttributes()Lcom/android/dx/cf/iface/AttributeList;

    move-result-object p1

    .line 8
    sget-object p2, Lcom/android/dx/cf/code/LineNumberList;->EMPTY:Lcom/android/dx/cf/code/LineNumberList;

    if-eqz p3, :cond_0

    .line 9
    const-string p3, "LineNumberTable"

    .line 10
    invoke-interface {p1, p3}, Lcom/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p3

    check-cast p3, Lcom/android/dx/cf/attrib/AttLineNumberTable;

    :goto_0
    if-eqz p3, :cond_0

    .line 11
    invoke-virtual {p3}, Lcom/android/dx/cf/attrib/AttLineNumberTable;->getLineNumbers()Lcom/android/dx/cf/code/LineNumberList;

    move-result-object v0

    .line 12
    invoke-static {p2, v0}, Lcom/android/dx/cf/code/LineNumberList;->concat(Lcom/android/dx/cf/code/LineNumberList;Lcom/android/dx/cf/code/LineNumberList;)Lcom/android/dx/cf/code/LineNumberList;

    move-result-object p2

    .line 13
    invoke-interface {p1, p3}, Lcom/android/dx/cf/iface/AttributeList;->findNext(Lcom/android/dx/cf/iface/Attribute;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p3

    check-cast p3, Lcom/android/dx/cf/attrib/AttLineNumberTable;

    goto :goto_0

    .line 14
    :cond_0
    iput-object p2, p0, Lcom/android/dx/cf/code/ConcreteMethod;->lineNumbers:Lcom/android/dx/cf/code/LineNumberList;

    .line 15
    sget-object p2, Lcom/android/dx/cf/code/LocalVariableList;->EMPTY:Lcom/android/dx/cf/code/LocalVariableList;

    if-eqz p4, :cond_3

    .line 16
    const-string p3, "LocalVariableTable"

    .line 17
    invoke-interface {p1, p3}, Lcom/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p3

    check-cast p3, Lcom/android/dx/cf/attrib/AttLocalVariableTable;

    :goto_1
    if-eqz p3, :cond_1

    .line 18
    invoke-virtual {p3}, Lcom/android/dx/cf/attrib/BaseLocalVariables;->getLocalVariables()Lcom/android/dx/cf/code/LocalVariableList;

    move-result-object p4

    .line 19
    invoke-static {p2, p4}, Lcom/android/dx/cf/code/LocalVariableList;->concat(Lcom/android/dx/cf/code/LocalVariableList;Lcom/android/dx/cf/code/LocalVariableList;)Lcom/android/dx/cf/code/LocalVariableList;

    move-result-object p2

    .line 20
    invoke-interface {p1, p3}, Lcom/android/dx/cf/iface/AttributeList;->findNext(Lcom/android/dx/cf/iface/Attribute;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p3

    check-cast p3, Lcom/android/dx/cf/attrib/AttLocalVariableTable;

    goto :goto_1

    .line 21
    :cond_1
    sget-object p3, Lcom/android/dx/cf/code/LocalVariableList;->EMPTY:Lcom/android/dx/cf/code/LocalVariableList;

    .line 22
    const-string p4, "LocalVariableTypeTable"

    .line 23
    invoke-interface {p1, p4}, Lcom/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p4

    check-cast p4, Lcom/android/dx/cf/attrib/AttLocalVariableTypeTable;

    :goto_2
    if-eqz p4, :cond_2

    .line 24
    invoke-virtual {p4}, Lcom/android/dx/cf/attrib/BaseLocalVariables;->getLocalVariables()Lcom/android/dx/cf/code/LocalVariableList;

    move-result-object v0

    .line 25
    invoke-static {p3, v0}, Lcom/android/dx/cf/code/LocalVariableList;->concat(Lcom/android/dx/cf/code/LocalVariableList;Lcom/android/dx/cf/code/LocalVariableList;)Lcom/android/dx/cf/code/LocalVariableList;

    move-result-object p3

    .line 26
    invoke-interface {p1, p4}, Lcom/android/dx/cf/iface/AttributeList;->findNext(Lcom/android/dx/cf/iface/Attribute;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p4

    check-cast p4, Lcom/android/dx/cf/attrib/AttLocalVariableTypeTable;

    goto :goto_2

    .line 27
    :cond_2
    invoke-virtual {p3}, Lcom/android/dx/util/FixedSizeList;->size()I

    move-result p1

    if-eqz p1, :cond_3

    .line 28
    invoke-static {p2, p3}, Lcom/android/dx/cf/code/LocalVariableList;->mergeDescriptorsAndSignatures(Lcom/android/dx/cf/code/LocalVariableList;Lcom/android/dx/cf/code/LocalVariableList;)Lcom/android/dx/cf/code/LocalVariableList;

    move-result-object p2

    .line 29
    :cond_3
    iput-object p2, p0, Lcom/android/dx/cf/code/ConcreteMethod;->localVariables:Lcom/android/dx/cf/code/LocalVariableList;

    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    iget-object v0, p0, Lcom/android/dx/cf/code/ConcreteMethod;->method:Lcom/android/dx/cf/iface/Method;

    invoke-interface {v0}, Lcom/android/dx/cf/iface/Member;->getAccessFlags()I

    move-result v0

    return v0
.end method

.method public getAttributes()Lcom/android/dx/cf/iface/AttributeList;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/cf/code/ConcreteMethod;->method:Lcom/android/dx/cf/iface/Method;

    invoke-interface {v0}, Lcom/android/dx/cf/iface/Member;->getAttributes()Lcom/android/dx/cf/iface/AttributeList;

    move-result-object v0

    return-object v0
.end method

.method public getCatches()Lcom/android/dx/cf/code/ByteCatchList;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/cf/code/ConcreteMethod;->attCode:Lcom/android/dx/cf/attrib/AttCode;

    invoke-virtual {v0}, Lcom/android/dx/cf/attrib/AttCode;->getCatches()Lcom/android/dx/cf/code/ByteCatchList;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Lcom/android/dx/cf/code/BytecodeArray;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/cf/code/ConcreteMethod;->attCode:Lcom/android/dx/cf/attrib/AttCode;

    invoke-virtual {v0}, Lcom/android/dx/cf/attrib/AttCode;->getCode()Lcom/android/dx/cf/code/BytecodeArray;

    move-result-object v0

    return-object v0
.end method

.method public getDefiningClass()Lcom/android/dx/rop/cst/CstType;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/cf/code/ConcreteMethod;->method:Lcom/android/dx/cf/iface/Method;

    invoke-interface {v0}, Lcom/android/dx/cf/iface/Member;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptor()Lcom/android/dx/rop/cst/CstString;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/cf/code/ConcreteMethod;->method:Lcom/android/dx/cf/iface/Method;

    invoke-interface {v0}, Lcom/android/dx/cf/iface/Member;->getDescriptor()Lcom/android/dx/rop/cst/CstString;

    move-result-object v0

    return-object v0
.end method

.method public getEffectiveDescriptor()Lcom/android/dx/rop/type/Prototype;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/cf/code/ConcreteMethod;->method:Lcom/android/dx/cf/iface/Method;

    invoke-interface {v0}, Lcom/android/dx/cf/iface/Method;->getEffectiveDescriptor()Lcom/android/dx/rop/type/Prototype;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumbers()Lcom/android/dx/cf/code/LineNumberList;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/cf/code/ConcreteMethod;->lineNumbers:Lcom/android/dx/cf/code/LineNumberList;

    return-object v0
.end method

.method public getLocalVariables()Lcom/android/dx/cf/code/LocalVariableList;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/cf/code/ConcreteMethod;->localVariables:Lcom/android/dx/cf/code/LocalVariableList;

    return-object v0
.end method

.method public getMaxLocals()I
    .locals 1

    iget-object v0, p0, Lcom/android/dx/cf/code/ConcreteMethod;->attCode:Lcom/android/dx/cf/attrib/AttCode;

    invoke-virtual {v0}, Lcom/android/dx/cf/attrib/AttCode;->getMaxLocals()I

    move-result v0

    return v0
.end method

.method public getMaxStack()I
    .locals 1

    iget-object v0, p0, Lcom/android/dx/cf/code/ConcreteMethod;->attCode:Lcom/android/dx/cf/attrib/AttCode;

    invoke-virtual {v0}, Lcom/android/dx/cf/attrib/AttCode;->getMaxStack()I

    move-result v0

    return v0
.end method

.method public getName()Lcom/android/dx/rop/cst/CstString;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/cf/code/ConcreteMethod;->method:Lcom/android/dx/cf/iface/Method;

    invoke-interface {v0}, Lcom/android/dx/cf/iface/Member;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v0

    return-object v0
.end method

.method public getNat()Lcom/android/dx/rop/cst/CstNat;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/cf/code/ConcreteMethod;->method:Lcom/android/dx/cf/iface/Method;

    invoke-interface {v0}, Lcom/android/dx/cf/iface/Member;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v0

    return-object v0
.end method

.method public makeSourcePosistion(I)Lcom/android/dx/rop/code/SourcePosition;
    .locals 3

    new-instance v0, Lcom/android/dx/rop/code/SourcePosition;

    iget-object v1, p0, Lcom/android/dx/cf/code/ConcreteMethod;->sourceFile:Lcom/android/dx/rop/cst/CstString;

    iget-object v2, p0, Lcom/android/dx/cf/code/ConcreteMethod;->lineNumbers:Lcom/android/dx/cf/code/LineNumberList;

    invoke-virtual {v2, p1}, Lcom/android/dx/cf/code/LineNumberList;->pcToLine(I)I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/android/dx/rop/code/SourcePosition;-><init>(Lcom/android/dx/rop/cst/CstString;II)V

    return-object v0
.end method
