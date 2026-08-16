.class public Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IBytecodeVisitor;


# static fields
.field private static final EMPTY_CLASS_NAME:Ljava/lang/String; = "\"\""

.field private static final EMPTY_LOCAL_NAME:Ljava/lang/String; = ""

.field private static final T_BOOLEAN:I = 0x4

.field private static final T_BYTE:I = 0x8

.field private static final T_CHAR:I = 0x5

.field private static final T_DOUBLE:I = 0x7

.field private static final T_FLOAT:I = 0x6

.field private static final T_INT:I = 0xa

.field private static final T_LONG:I = 0xb

.field private static final T_SHORT:I = 0x9


# instance fields
.field private argumentSizes:[I

.field private buffer:Ljava/lang/StringBuffer;

.field private digitNumberForPC:I

.field private isStatic:Z

.field private lineSeparator:Ljava/lang/String;

.field private localVariableAttributeLength:I

.field private localVariableTableEntries:[Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;

.field private mode:I

.field private parameterNames:[[C

.field private tabNumber:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/util/ICodeAttribute;[[C[CZLjava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/ICodeAttribute;->getLocalVariableAttribute()Lorg/eclipse/jdt/core/util/ILocalVariableAttribute;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/util/ILocalVariableAttribute;->getLocalVariableTableLength()I

    move-result v2

    :goto_0
    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->localVariableAttributeLength:I

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/util/ILocalVariableAttribute;->getLocalVariableTable()[Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->localVariableTableEntries:[Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->localVariableTableEntries:[Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;

    :goto_1
    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    iput-object p6, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->lineSeparator:Ljava/lang/String;

    const/4 p5, 0x1

    add-int/2addr p7, p5

    iput p7, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->tabNumber:I

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/ICodeAttribute;->getCodeLength()J

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->digitNumberForPC:I

    iput p8, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->mode:I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->parameterNames:[[C

    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->isStatic:Z

    if-eqz p2, :cond_5

    invoke-static {p3}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object p1

    array-length p2, p1

    new-array p3, p2, [I

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->argumentSizes:[I

    move p3, v1

    :goto_2
    if-lt p3, p2, :cond_2

    goto :goto_4

    :cond_2
    aget-object p4, p1, p3

    iget-object p6, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->argumentSizes:[I

    array-length p7, p4

    if-ne p7, p5, :cond_4

    aget-char p4, p4, v1

    const/16 p7, 0x44

    if-eq p4, p7, :cond_3

    const/16 p7, 0x4a

    if-ne p4, p7, :cond_4

    :cond_3
    const/4 p4, 0x2

    goto :goto_3

    :cond_4
    move p4, p5

    :goto_3
    aput p4, p6, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    return-void
.end method

.method private appendConstantDynamic(Ljava/lang/StringBuffer;Ljava/lang/String;IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/StringBuffer;
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    aget-object p3, v0, p3

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    move-object v0, p5

    check-cast v0, Lorg/eclipse/jdt/core/util/IConstantPoolEntry2;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry2;->getBootstrapMethodAttributeIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-interface {p5}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getFieldName()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p5}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getFieldDescriptor()[C

    move-result-object p5

    invoke-static {p5}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object p5

    invoke-direct {p0, p5}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->returnClassName([C)Ljava/lang/String;

    move-result-object p5

    filled-new-array {p3, p4, v0, v1, p5}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method private appendConstantMethodHandle(Ljava/lang/StringBuffer;Ljava/lang/String;IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/StringBuffer;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    aget-object p3, v0, p3

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    check-cast p5, Lorg/eclipse/jdt/core/util/IConstantPoolEntry2;

    invoke-interface {p5}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry2;->getReferenceKind()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry2;->getReferenceIndex()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    filled-new-array {p3, p4, v0, p5}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method private appendConstantMethodType(Ljava/lang/StringBuffer;Ljava/lang/String;IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/StringBuffer;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    aget-object p3, v0, p3

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/String;

    invoke-interface {p5}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getMethodDescriptor()[C

    move-result-object p5

    invoke-direct {v0, p5}, Ljava/lang/String;-><init>([C)V

    filled-new-array {p3, p4, v0}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method private dumpPcNumber(I)V
    .locals 4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeTabs()V

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->digitNumberForPC:I

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_indentation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getLocalVariableName(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(IIZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getLocalVariableName(IIZ)Ljava/lang/String;
    .locals 10

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v3, 0x3

    if-eq p2, v3, :cond_1

    const/16 v0, 0xff

    if-gt p2, v0, :cond_0

    add-int/2addr p1, v2

    :goto_0
    move v0, p1

    goto :goto_1

    :cond_0
    add-int/2addr p1, v3

    goto :goto_0

    .line 2
    :cond_1
    :goto_1
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->localVariableAttributeLength:I

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    const/16 v4, 0x5d

    const/16 v5, 0x5b

    const/16 v6, 0x20

    if-lt v3, p1, :cond_9

    .line 3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->parameterNames:[[C

    if-eqz p1, :cond_7

    if-nez p2, :cond_2

    .line 4
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->isStatic:Z

    if-nez p1, :cond_2

    .line 5
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p2, "this"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p2, :cond_5

    .line 8
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->isStatic:Z

    xor-int/2addr p1, v1

    .line 9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->argumentSizes:[I

    array-length v0, v0

    :goto_3
    if-lt v2, v0, :cond_3

    goto :goto_4

    :cond_3
    if-ne p2, p1, :cond_4

    goto :goto_4

    .line 10
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->argumentSizes:[I

    aget v1, v1, v2

    add-int/2addr p1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move v2, p2

    .line 11
    :goto_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->parameterNames:[[C

    array-length v0, p1

    if-ge v2, v0, :cond_7

    .line 12
    aget-object p1, p1, v2

    if-eqz p1, :cond_7

    .line 13
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p3, :cond_6

    .line 14
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 15
    :cond_6
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->parameterNames:[[C

    aget-object p2, p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 16
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    if-eqz p3, :cond_8

    .line 17
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 18
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 20
    :cond_8
    const-string p1, ""

    return-object p1

    .line 21
    :cond_9
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->localVariableTableEntries:[Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;

    aget-object v7, v7, v3

    .line 22
    invoke-interface {v7}, Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;->getStartPC()I

    move-result v8

    .line 23
    invoke-interface {v7}, Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;->getIndex()I

    move-result v9

    if-ne v9, p2, :cond_b

    if-gt v8, v0, :cond_b

    invoke-interface {v7}, Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;->getLength()I

    move-result v9

    add-int/2addr v8, v9

    if-le v8, v0, :cond_b

    .line 24
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p3, :cond_a

    .line 25
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 26
    :cond_a
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface {v7}, Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;->getName()[C

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 27
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method

.method private isCompact()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->mode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private returnClassName([C)Ljava/lang/String;
    .locals 4

    array-length v0, p1

    if-nez v0, :cond_0

    const-string p1, "\"\""

    return-object p1

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->isCompact()Z

    move-result v0

    const/16 v1, 0x2f

    if-eqz v0, :cond_1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    array-length v3, p1

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v1, p1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_1
    const/16 v0, 0x2e

    invoke-static {p1, v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private returnConstantClassName(Lorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/String;
    .locals 3

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getClassInfoName()[C

    move-result-object p1

    array-length v0, p1

    if-nez v0, :cond_0

    const-string p1, "\"\""

    return-object p1

    :cond_0
    const/4 v0, 0x0

    aget-char v1, p1, v0

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->returnClassName([C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->isCompact()Z

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->appendTypeSignature([CILjava/lang/StringBuffer;Z)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private returnDeclaringClassName(Lorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getClassName()[C

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->returnClassName([C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private returnMethodSignature(Lorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/String;
    .locals 6

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getMethodDescriptor()[C

    move-result-object v0

    const/16 v1, 0x24

    const/16 v2, 0x23

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getClassName()[C

    move-result-object v3

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getMethodName()[C

    move-result-object p1

    const/4 v4, 0x1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->isCompact()Z

    move-result v5

    invoke-static {v3, p1, v0, v4, v5}, Lorg/eclipse/jdt/internal/core/util/Util;->toString([C[C[CZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1, v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private writeExtraTabs(I)V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->tabNumber:I

    add-int/2addr v0, p1

    const/4 p1, 0x0

    :goto_0
    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_indentation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private writeNewLine()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private writeTabs()V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->tabNumber:I

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_indentation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public _aaload(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x32

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _aastore(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x53

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _aconst_null(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _aload(II)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x19

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(IIZ)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _aload_0(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x2a

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _aload_1(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x2b

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _aload_2(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x2c

    aget-object v2, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _aload_3(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x2d

    aget-object v2, v2, v3

    const/4 v3, 0x3

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _anewarray(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_anewarray:Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xbd

    aget-object v1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->returnConstantClassName(Lorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v1, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _areturn(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0xb0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _arraylength(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0xbe

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _astore(II)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x3a

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(IIZ)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _astore_0(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x4b

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _astore_1(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x4c

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _astore_2(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x4d

    aget-object v2, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _astore_3(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x4e

    aget-object v2, v2, v3

    const/4 v3, 0x3

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _athrow(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0xbf

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _baload(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x33

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _bastore(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x54

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _bipush(IB)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _breakpoint(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0xca

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _caload(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x34

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _castore(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x55

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _checkcast(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_checkcast:Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xc0

    aget-object v1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->returnConstantClassName(Lorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v1, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _d2f(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x90

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _d2i(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x8e

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _d2l(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x8f

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dadd(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x63

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _daload(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x31

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dastore(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x52

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dcmpg(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x98

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dcmpl(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x97

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dconst_0(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dconst_1(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _ddiv(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x6f

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dload(II)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x18

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(IIZ)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dload_0(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x26

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dload_1(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x27

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dload_2(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x28

    aget-object v2, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dload_3(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x29

    aget-object v2, v2, v3

    const/4 v3, 0x3

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dmul(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x6b

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dneg(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x77

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _drem(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x73

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dreturn(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0xaf

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dstore(II)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x39

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(IIZ)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dstore_0(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x47

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dstore_1(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x48

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dstore_2(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x49

    aget-object v2, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dstore_3(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x4a

    aget-object v2, v2, v3

    const/4 v3, 0x3

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dsub(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x67

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dup(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x59

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dup2(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x5c

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dup2_x1(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x5d

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dup2_x2(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x5e

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dup_x1(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x5a

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _dup_x2(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x5b

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _f2d(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x8d

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _f2i(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x8b

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _f2l(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x8c

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _fadd(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x62

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _faload(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x30

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _fastore(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x51

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _fcmpg(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x96

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _fcmpl(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x95

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _fconst_0(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _fconst_1(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _fconst_2(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _fdiv(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x6e

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _fload(II)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x17

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(IIZ)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _fload_0(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x22

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _fload_1(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x23

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _fload_2(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x24

    aget-object v2, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _fload_3(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x25

    aget-object v2, v2, v3

    const/4 v3, 0x3

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _fmul(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x6a

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _fneg(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x76

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _frem(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x72

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _freturn(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0xae

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _fstore(II)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x38

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(IIZ)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _fstore_0(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x43

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _fstore_1(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x44

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _fstore_2(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x45

    aget-object v2, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _fstore_3(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x46

    aget-object v2, v2, v3

    const/4 v3, 0x3

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _fsub(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x66

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _getfield(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_getfield:Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xb4

    aget-object v1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->returnDeclaringClassName(Lorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getFieldName()[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getFieldDescriptor()[C

    move-result-object p3

    invoke-static {p3}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->returnClassName([C)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v1, p2, v2, v3, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _getstatic(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_getstatic:Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xb2

    aget-object v1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->returnDeclaringClassName(Lorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getFieldName()[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getFieldDescriptor()[C

    move-result-object p3

    invoke-static {p3}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->returnClassName([C)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v1, p2, v2, v3, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _goto(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xa7

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _goto_w(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xc8

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _i2b(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x91

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _i2c(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x92

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _i2d(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x87

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _i2f(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x86

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _i2l(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x85

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _i2s(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x93

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _iadd(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x60

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _iaload(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x2e

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _iand(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x7e

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _iastore(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x4f

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _iconst_0(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _iconst_1(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _iconst_2(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _iconst_3(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _iconst_4(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _iconst_5(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _iconst_m1(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _idiv(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x6c

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _if_acmpeq(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xa5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _if_acmpne(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xa6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _if_icmpeq(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0x9f

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _if_icmpge(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xa2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _if_icmpgt(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xa3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _if_icmple(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xa4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _if_icmplt(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xa1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _if_icmpne(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xa0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _ifeq(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0x99

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _ifge(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0x9c

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _ifgt(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0x9d

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _ifle(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0x9e

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _iflt(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0x9b

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _ifne(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0x9a

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _ifnonnull(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xc7

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _ifnull(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xc6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _iinc(III)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_iinc:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x84

    aget-object v2, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v4}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(IIZ)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, v3, p3, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _iload(II)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x15

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(IIZ)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _iload_0(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x1a

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _iload_1(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x1b

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _iload_2(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x1c

    aget-object v2, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _iload_3(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    const/4 v3, 0x3

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _impdep1(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0xfe

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _impdep2(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0xff

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _imul(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x68

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _ineg(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x74

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _instanceof(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_instanceof:Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xc1

    aget-object v1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->returnConstantClassName(Lorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v1, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _invokedynamic(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V
    .locals 7

    .line 11
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    .line 12
    check-cast p3, Lorg/eclipse/jdt/core/util/IConstantPoolEntry2;

    .line 13
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_invokedynamic:Ljava/lang/String;

    .line 14
    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xba

    aget-object v1, v1, v2

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry2;->getBootstrapMethodAttributeIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getMethodName()[C

    move-result-object v3

    .line 18
    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getMethodDescriptor()[C

    move-result-object p3

    const/4 v4, 0x1

    .line 19
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->isCompact()Z

    move-result v5

    const/4 v6, 0x0

    .line 20
    invoke-static {v6, v3, p3, v4, v5}, Lorg/eclipse/jdt/internal/core/util/Util;->toString([C[C[CZZ)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v1, p2, v2, p3}, [Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _invokedynamic(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;Lorg/eclipse/jdt/core/util/IConstantPoolEntry;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    .line 2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_invokedynamic:Ljava/lang/String;

    .line 3
    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xba

    aget-object v1, v1, v2

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object p3

    .line 6
    invoke-interface {p4}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object p4

    const/4 v2, 0x1

    .line 7
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->isCompact()Z

    move-result v3

    const/4 v4, 0x0

    .line 8
    invoke-static {v4, p3, p4, v2, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->toString([C[C[CZZ)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v1, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _invokeinterface(IIBLorg/eclipse/jdt/core/util/IConstantPoolEntry;)V
    .locals 6

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_invokeinterface:Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xb9

    aget-object v1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getClassName()[C

    move-result-object v2

    invoke-interface {p4}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getMethodName()[C

    move-result-object v3

    invoke-interface {p4}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getMethodDescriptor()[C

    move-result-object p4

    const/4 v4, 0x1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->isCompact()Z

    move-result v5

    invoke-static {v2, v3, p4, v4, v5}, Lorg/eclipse/jdt/internal/core/util/Util;->toString([C[C[CZZ)Ljava/lang/String;

    move-result-object p4

    filled-new-array {v1, p2, p3, p4}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _invokespecial(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->returnMethodSignature(Lorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_invokespecial:Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xb7

    aget-object v1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, p2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _invokestatic(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->returnMethodSignature(Lorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_invokestatic:Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xb8

    aget-object v1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, p2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _invokevirtual(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->returnMethodSignature(Lorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_invokevirtual:Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xb6

    aget-object v1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, p2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _ior(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x80

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _irem(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x70

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _ireturn(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0xac

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _ishl(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x78

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _ishr(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x7a

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _istore(II)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x36

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(IIZ)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _istore_0(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x3b

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _istore_1(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x3c

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _istore_2(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x3d

    aget-object v2, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _istore_3(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x3e

    aget-object v2, v2, v3

    const/4 v3, 0x3

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _isub(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x64

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _iushr(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x7c

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _ixor(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x82

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _jsr(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xa8

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _jsr_w(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xc9

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _l2d(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x8a

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _l2f(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x89

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _l2i(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x88

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _ladd(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x61

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _laload(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x2f

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _land(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x7f

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lastore(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x50

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lcmp(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x94

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lconst_0(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lconst_1(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _ldc(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V
    .locals 12

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result p1

    const/4 v0, 0x3

    const/16 v1, 0x12

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_ldc_w_dynamic:Ljava/lang/String;

    const/16 v5, 0x12

    move-object v2, p0

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->appendConstantDynamic(Ljava/lang/StringBuffer;Ljava/lang/String;IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_1
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v8, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_ldc_w_methodhandle:Ljava/lang/String;

    const/16 v9, 0x12

    move-object v6, p0

    move v10, p2

    move-object v11, p3

    invoke-direct/range {v6 .. v11}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->appendConstantMethodType(Ljava/lang/StringBuffer;Ljava/lang/String;IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_ldc_w_methodhandle:Ljava/lang/String;

    const/16 v3, 0x12

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->appendConstantMethodHandle(Ljava/lang/StringBuffer;Ljava/lang/String;IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_ldc_w_string:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getStringValue()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v1, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_ldc_w_class:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->returnConstantClassName(Lorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v1, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_ldc_w_float:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getFloatValue()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v1, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_ldc_w_integer:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getIntegerValue()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v1, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public _ldc2_w(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V
    .locals 12

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result p1

    const/4 v0, 0x5

    const/16 v1, 0x14

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_ldc_w_dynamic:Ljava/lang/String;

    const/16 v5, 0x14

    move-object v2, p0

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->appendConstantDynamic(Ljava/lang/StringBuffer;Ljava/lang/String;IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v8, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_ldc_w_methodhandle:Ljava/lang/String;

    const/16 v9, 0x14

    move-object v6, p0

    move v10, p2

    move-object v11, p3

    invoke-direct/range {v6 .. v11}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->appendConstantMethodType(Ljava/lang/StringBuffer;Ljava/lang/String;IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_ldc_w_methodhandle:Ljava/lang/String;

    const/16 v3, 0x14

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->appendConstantMethodHandle(Ljava/lang/StringBuffer;Ljava/lang/String;IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_ldc2_w_double:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getDoubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v1, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_ldc2_w_long:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getLongValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v1, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public _ldc_w(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V
    .locals 11

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result p1

    const/4 v0, 0x3

    const/16 v1, 0x13

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_ldc_w_methodhandle:Ljava/lang/String;

    const/16 v4, 0x13

    move-object v1, p0

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->appendConstantMethodType(Ljava/lang/StringBuffer;Ljava/lang/String;IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_1
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v7, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_ldc_w_methodhandle:Ljava/lang/String;

    const/16 v8, 0x13

    move-object v5, p0

    move v9, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->appendConstantMethodHandle(Ljava/lang/StringBuffer;Ljava/lang/String;IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_ldc_w_string:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getStringValue()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v1, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_ldc_w_class:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->returnConstantClassName(Lorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v1, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_ldc_w_float:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getFloatValue()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v1, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_ldc_w_integer:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getIntegerValue()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v1, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _ldiv(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x6d

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lload(II)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x16

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(IIZ)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lload_0(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x1e

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lload_1(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lload_2(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x20

    aget-object v2, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lload_3(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_load:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x21

    aget-object v2, v2, v3

    const/4 v3, 0x3

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lmul(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x69

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lneg(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x75

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lookupswitch(III[[I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xab

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " default: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-lt v0, p3, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeExtraTabs(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    const-string v2, "case "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v2, p4, v0

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v2, p4, v0

    const/4 v3, 0x1

    aget v2, v2, v3

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public _lor(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x81

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lrem(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x71

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lreturn(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0xad

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lshl(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x79

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lshr(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x7b

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lstore(II)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x37

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(IIZ)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lstore_0(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x3f

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lstore_1(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x40

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lstore_2(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x41

    aget-object v2, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lstore_3(I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_store:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v3, 0x42

    aget-object v2, v2, v3

    const/4 v3, 0x3

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->getLocalVariableName(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lsub(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x65

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lushr(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x7d

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _lxor(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x83

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _monitorenter(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0xc2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _monitorexit(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0xc3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _multianewarray(IIILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object p3, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_multianewarray:Ljava/lang/String;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0xc5

    aget-object v0, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p4}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->returnConstantClassName(Lorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/String;

    move-result-object p4

    filled-new-array {v0, p2, p4}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _new(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_new:Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xbb

    aget-object v1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->returnConstantClassName(Lorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v1, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _newarray(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    const/16 p1, 0xbc

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_newarray_long:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_newarray_int:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_newarray_short:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_newarray_byte:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_newarray_double:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_newarray_float:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_newarray_char:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_newarray_boolean:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public _nop(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _pop(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x57

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _pop2(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x58

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _putfield(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_putfield:Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xb5

    aget-object v1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->returnDeclaringClassName(Lorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getFieldName()[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getFieldDescriptor()[C

    move-result-object p3

    invoke-static {p3}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->returnClassName([C)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v1, p2, v2, v3, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _putstatic(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_putstatic:Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xb3

    aget-object v1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->returnDeclaringClassName(Lorg/eclipse/jdt/core/util/IConstantPoolEntry;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getFieldName()[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getFieldDescriptor()[C

    move-result-object p3

    invoke-static {p3}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->returnClassName([C)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v1, p2, v2, v3, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _ret(II)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0xa9

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _return(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0xb1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _saload(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x35

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _sastore(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x56

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _sipush(IS)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _swap(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x5f

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    return-void
.end method

.method public _tableswitch(IIII[I)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xaa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " default: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    move p2, p3

    :goto_0
    add-int/lit8 v0, p4, 0x1

    if-lt p2, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeExtraTabs(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "case "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sub-int v1, p2, p3

    aget v1, p5, v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public _wide(III)V
    .locals 3

    .line 5
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    .line 6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v2, 0xc4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    const/16 v0, 0xa9

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    add-int/lit8 p1, p1, 0x1

    .line 8
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->_astore(II)V

    goto :goto_0

    :pswitch_1
    add-int/lit8 p1, p1, 0x1

    .line 9
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->_dstore(II)V

    goto :goto_0

    :pswitch_2
    add-int/lit8 p1, p1, 0x1

    .line 10
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->_fstore(II)V

    goto :goto_0

    :pswitch_3
    add-int/lit8 p1, p1, 0x1

    .line 11
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->_lstore(II)V

    goto :goto_0

    :pswitch_4
    add-int/lit8 p1, p1, 0x1

    .line 12
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->_istore(II)V

    goto :goto_0

    :pswitch_5
    add-int/lit8 p1, p1, 0x1

    .line 13
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->_aload(II)V

    goto :goto_0

    :pswitch_6
    add-int/lit8 p1, p1, 0x1

    .line 14
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->_dload(II)V

    goto :goto_0

    :pswitch_7
    add-int/lit8 p1, p1, 0x1

    .line 15
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->_fload(II)V

    goto :goto_0

    :pswitch_8
    add-int/lit8 p1, p1, 0x1

    .line 16
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->_lload(II)V

    goto :goto_0

    :pswitch_9
    add-int/lit8 p1, p1, 0x1

    .line 17
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->_iload(II)V

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 18
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->_ret(II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public _wide(IIII)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->dumpPcNumber(I)V

    .line 2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->buffer:Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/core/util/OpcodeStringValues;->BYTECODE_NAMES:[Ljava/lang/String;

    const/16 v1, 0xc4

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->writeNewLine()V

    add-int/lit8 p1, p1, 0x1

    .line 4
    invoke-virtual {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;->_iinc(III)V

    return-void
.end method
