.class public Lorg/eclipse/jdt/internal/core/util/CodeAttribute;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/ICodeAttribute;


# static fields
.field private static final NO_EXCEPTION_TABLE:[Lorg/eclipse/jdt/core/util/IExceptionTableEntry;


# instance fields
.field private attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

.field private attributesCount:I

.field private bytecodes:[B

.field private classFileBytes:[B

.field private codeLength:J

.field private codeOffset:I

.field private constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

.field private exceptionTableEntries:[Lorg/eclipse/jdt/core/util/IExceptionTableEntry;

.field private exceptionTableLength:I

.field private lineNumberAttribute:Lorg/eclipse/jdt/core/util/ILineNumberAttribute;

.field private localVariableAttribute:Lorg/eclipse/jdt/core/util/ILocalVariableAttribute;

.field private maxLocals:I

.field private maxStack:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/core/util/IExceptionTableEntry;

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->NO_EXCEPTION_TABLE:[Lorg/eclipse/jdt/core/util/IExceptionTableEntry;

    return-void
.end method

.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->maxStack:I

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->maxLocals:I

    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u4At([BII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeLength:J

    add-int/lit8 v2, p3, 0xe

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    const-wide/16 v2, 0xe

    add-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->exceptionTableLength:I

    add-int/lit8 v0, v0, 0x2

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->NO_EXCEPTION_TABLE:[Lorg/eclipse/jdt/core/util/IExceptionTableEntry;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->exceptionTableEntries:[Lorg/eclipse/jdt/core/util/IExceptionTableEntry;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/core/util/ExceptionTableEntry;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->exceptionTableEntries:[Lorg/eclipse/jdt/core/util/IExceptionTableEntry;

    move v1, v2

    :goto_0
    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->exceptionTableLength:I

    if-lt v1, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->exceptionTableEntries:[Lorg/eclipse/jdt/core/util/IExceptionTableEntry;

    new-instance v4, Lorg/eclipse/jdt/internal/core/util/ExceptionTableEntry;

    add-int v5, p3, v0

    invoke-direct {v4, p1, p2, v5}, Lorg/eclipse/jdt/internal/core/util/ExceptionTableEntry;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v4, v3, v1

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->attributesCount:I

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;->NO_ATTRIBUTES:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    if-eqz v1, :cond_2

    new-array v1, v1, [Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    :cond_2
    add-int/lit8 v0, v0, 0x2

    move v1, v2

    :goto_2
    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->attributesCount:I

    if-lt v2, v3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v3

    invoke-interface {p2, v3}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object v3

    sget-object v4, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->LINE_NUMBER:[C

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v3, Lorg/eclipse/jdt/internal/core/util/LineNumberAttribute;

    add-int v4, p3, v0

    invoke-direct {v3, p1, p2, v4}, Lorg/eclipse/jdt/internal/core/util/LineNumberAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->lineNumberAttribute:Lorg/eclipse/jdt/core/util/ILineNumberAttribute;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v5, v1, 0x1

    aput-object v3, v4, v1

    :goto_3
    move v1, v5

    goto/16 :goto_5

    :cond_4
    sget-object v4, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->LOCAL_VARIABLE:[C

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v3, Lorg/eclipse/jdt/internal/core/util/LocalVariableAttribute;

    add-int v4, p3, v0

    invoke-direct {v3, p1, p2, v4}, Lorg/eclipse/jdt/internal/core/util/LocalVariableAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->localVariableAttribute:Lorg/eclipse/jdt/core/util/ILocalVariableAttribute;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v5, v1, 0x1

    aput-object v3, v4, v1

    goto :goto_3

    :cond_5
    sget-object v4, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->LOCAL_VARIABLE_TYPE_TABLE:[C

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v4, v1, 0x1

    new-instance v5, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeAttribute;

    add-int v6, p3, v0

    invoke-direct {v5, p1, p2, v6}, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v5, v3, v1

    :goto_4
    move v1, v4

    goto :goto_5

    :cond_6
    sget-object v4, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->STACK_MAP_TABLE:[C

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v4, v1, 0x1

    new-instance v5, Lorg/eclipse/jdt/internal/core/util/StackMapTableAttribute;

    add-int v6, p3, v0

    invoke-direct {v5, p1, p2, v6}, Lorg/eclipse/jdt/internal/core/util/StackMapTableAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v5, v3, v1

    goto :goto_4

    :cond_7
    sget-object v4, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->STACK_MAP:[C

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v4, v1, 0x1

    new-instance v5, Lorg/eclipse/jdt/internal/core/util/StackMapAttribute;

    add-int v6, p3, v0

    invoke-direct {v5, p1, p2, v6}, Lorg/eclipse/jdt/internal/core/util/StackMapAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v5, v3, v1

    goto :goto_4

    :cond_8
    sget-object v4, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_VISIBLE_TYPE_ANNOTATIONS:[C

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v4, v1, 0x1

    new-instance v5, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleTypeAnnotationsAttribute;

    add-int v6, p3, v0

    invoke-direct {v5, p1, p2, v6}, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleTypeAnnotationsAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v5, v3, v1

    goto :goto_4

    :cond_9
    sget-object v4, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_INVISIBLE_TYPE_ANNOTATIONS:[C

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v4, v1, 0x1

    new-instance v5, Lorg/eclipse/jdt/internal/core/util/RuntimeInvisibleTypeAnnotationsAttribute;

    add-int v6, p3, v0

    invoke-direct {v5, p1, p2, v6}, Lorg/eclipse/jdt/internal/core/util/RuntimeInvisibleTypeAnnotationsAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v5, v3, v1

    goto :goto_4

    :cond_a
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v4, v1, 0x1

    new-instance v5, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;

    add-int v6, p3, v0

    invoke-direct {v5, p1, p2, v6}, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v5, v3, v1

    goto :goto_4

    :goto_5
    int-to-long v3, v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u4At([BII)J

    move-result-wide v5

    const-wide/16 v7, 0x6

    add-long/2addr v5, v7

    add-long/2addr v3, v5

    long-to-int v0, v3

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_b
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1
.end method

.method private checkConstantAndThrow(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public getAttributes()[Lorg/eclipse/jdt/core/util/IClassFileAttribute;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    return-object v0
.end method

.method public getAttributesCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->attributesCount:I

    return v0
.end method

.method public getBytecodes()[B
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->bytecodes:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeLength:J

    long-to-int v4, v2

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->bytecodes:[B

    const/4 v5, 0x0

    long-to-int v2, v2

    invoke-static {v0, v1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->bytecodes:[B

    return-object v0
.end method

.method public getCodeLength()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeLength:J

    return-wide v0
.end method

.method public getExceptionTable()[Lorg/eclipse/jdt/core/util/IExceptionTableEntry;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->exceptionTableEntries:[Lorg/eclipse/jdt/core/util/IExceptionTableEntry;

    return-object v0
.end method

.method public getExceptionTableLength()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->exceptionTableLength:I

    return v0
.end method

.method public getLineNumberAttribute()Lorg/eclipse/jdt/core/util/ILineNumberAttribute;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->lineNumberAttribute:Lorg/eclipse/jdt/core/util/ILineNumberAttribute;

    return-object v0
.end method

.method public getLocalVariableAttribute()Lorg/eclipse/jdt/core/util/ILocalVariableAttribute;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->localVariableAttribute:Lorg/eclipse/jdt/core/util/ILocalVariableAttribute;

    return-object v0
.end method

.method public getMaxLocals()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->maxLocals:I

    return v0
.end method

.method public getMaxStack()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->maxStack:I

    return v0
.end method

.method public traverse(Lorg/eclipse/jdt/core/util/IBytecodeVisitor;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v1

    const/16 v3, 0xfe

    if-eq v1, v3, :cond_1a

    const/16 v3, 0xff

    if-eq v1, v3, :cond_19

    const/16 v3, 0xa

    const/16 v4, 0xb

    const/4 v5, 0x6

    const/16 v6, 0x9

    const/4 v7, 0x7

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v5}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :pswitch_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_breakpoint(I)V

    :goto_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    :pswitch_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i4At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_jsr_w(II)V

    :goto_1
    add-int/lit8 v0, v0, 0x5

    goto/16 :goto_d

    :pswitch_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i4At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_goto_w(II)V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i2At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_ifnonnull(II)V

    :goto_2
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_d

    :pswitch_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i2At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_ifnull(II)V

    goto :goto_2

    :pswitch_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-interface {v2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v3

    if-ne v3, v7, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v3, v11, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v3

    iget v4, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v4, v0, v4

    invoke-interface {p1, v4, v1, v3, v2}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_multianewarray(IIILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V

    :goto_3
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_d

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v11}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :pswitch_6
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v1

    const/16 v2, 0x84

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v2, v10, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v3, v9, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i2At([BII)I

    move-result v3

    iget v4, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v4, v0, v4

    invoke-interface {p1, v4, v1, v2, v3}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_wide(IIII)V

    add-int/lit8 v0, v0, 0x6

    goto/16 :goto_d

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v2, v10, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v2

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v3, v0, v3

    invoke-interface {p1, v3, v1, v2}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_wide(III)V

    goto :goto_3

    :pswitch_7
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_monitorexit(I)V

    goto/16 :goto_0

    :pswitch_8
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_monitorenter(I)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-interface {v2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v3

    if-ne v3, v7, :cond_3

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v3, v0, v3

    invoke-interface {p1, v3, v1, v2}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_instanceof(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V

    goto/16 :goto_2

    :cond_3
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v11}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :pswitch_a
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-interface {v2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v3

    if-ne v3, v7, :cond_4

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v3, v0, v3

    invoke-interface {p1, v3, v1, v2}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_checkcast(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V

    goto/16 :goto_2

    :cond_4
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v11}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :pswitch_b
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_athrow(I)V

    goto/16 :goto_0

    :pswitch_c
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_arraylength(I)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-interface {v2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v3

    if-ne v3, v7, :cond_5

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v3, v0, v3

    invoke-interface {p1, v3, v1, v2}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_anewarray(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V

    goto/16 :goto_2

    :cond_5
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v11}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :pswitch_e
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_newarray(II)V

    :goto_4
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_d

    :pswitch_f
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-interface {v2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v3

    if-ne v3, v7, :cond_6

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v3, v0, v3

    invoke-interface {p1, v3, v1, v2}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_new(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V

    goto/16 :goto_2

    :cond_6
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v11}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :pswitch_10
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-interface {v2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_7

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v3, v0, v3

    invoke-interface {p1, v3, v1, v2}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_invokedynamic(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V

    goto/16 :goto_1

    :cond_7
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v11}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :pswitch_11
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-interface {v2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v3

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v3, v11, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v3

    int-to-byte v3, v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v4, v9, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v4

    if-nez v4, :cond_8

    iget v4, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v4, v0, v4

    invoke-interface {p1, v4, v1, v3, v2}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_invokeinterface(IIBLorg/eclipse/jdt/core/util/IConstantPoolEntry;)V

    goto/16 :goto_1

    :cond_8
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v8}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_9
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v11}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :pswitch_12
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-interface {v2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v5

    if-eq v5, v3, :cond_b

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v3

    if-ne v3, v4, :cond_a

    goto :goto_5

    :cond_a
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v11}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_b
    :goto_5
    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v3, v0, v3

    invoke-interface {p1, v3, v1, v2}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_invokestatic(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V

    goto/16 :goto_2

    :pswitch_13
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-interface {v2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v5

    if-eq v5, v3, :cond_d

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v3

    if-ne v3, v4, :cond_c

    goto :goto_6

    :cond_c
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v11}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_d
    :goto_6
    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v3, v0, v3

    invoke-interface {p1, v3, v1, v2}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_invokespecial(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V

    goto/16 :goto_2

    :pswitch_14
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-interface {v2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v4

    if-ne v4, v3, :cond_e

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v3, v0, v3

    invoke-interface {p1, v3, v1, v2}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_invokevirtual(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V

    goto/16 :goto_2

    :cond_e
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v11}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :pswitch_15
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-interface {v2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v3

    if-ne v3, v6, :cond_f

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v3, v0, v3

    invoke-interface {p1, v3, v1, v2}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_putfield(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V

    goto/16 :goto_2

    :cond_f
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v11}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :pswitch_16
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-interface {v2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v3

    if-ne v3, v6, :cond_10

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v3, v0, v3

    invoke-interface {p1, v3, v1, v2}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_getfield(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V

    goto/16 :goto_2

    :cond_10
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v11}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :pswitch_17
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-interface {v2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v3

    if-ne v3, v6, :cond_11

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v3, v0, v3

    invoke-interface {p1, v3, v1, v2}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_putstatic(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V

    goto/16 :goto_2

    :cond_11
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v11}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :pswitch_18
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-interface {v2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v3

    if-ne v3, v6, :cond_12

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v3, v0, v3

    invoke-interface {p1, v3, v1, v2}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_getstatic(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V

    goto/16 :goto_2

    :cond_12
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v11}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :pswitch_19
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_return(I)V

    goto/16 :goto_0

    :pswitch_1a
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_areturn(I)V

    goto/16 :goto_0

    :pswitch_1b
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dreturn(I)V

    goto/16 :goto_0

    :pswitch_1c
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_freturn(I)V

    goto/16 :goto_0

    :pswitch_1d
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lreturn(I)V

    goto/16 :goto_0

    :pswitch_1e
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_ireturn(I)V

    goto/16 :goto_0

    :pswitch_1f
    add-int/lit8 v1, v0, 0x1

    :goto_7
    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v3, v1, v3

    and-int/2addr v3, v11

    if-nez v3, :cond_14

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v3, v2, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i4At([BII)I

    move-result v3

    add-int/lit8 v4, v1, 0x4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v5, v2, v4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u4At([BII)J

    move-result-wide v4

    long-to-int v4, v4

    new-array v5, v10, [I

    aput v10, v5, v12

    aput v4, v5, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    add-int/lit8 v1, v1, 0x8

    move v6, v2

    :goto_8
    if-lt v6, v4, :cond_13

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int/2addr v0, v2

    invoke-interface {p1, v0, v3, v4, v5}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lookupswitch(III[[I)V

    :goto_9
    move v0, v1

    goto/16 :goto_d

    :cond_13
    aget-object v7, v5, v6

    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v8, v2, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i4At([BII)I

    move-result v8

    aput v8, v7, v2

    add-int/lit8 v7, v1, 0x4

    aget-object v8, v5, v6

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v9, v2, v7}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i4At([BII)I

    move-result v7

    aput v7, v8, v12

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :pswitch_20
    add-int/lit8 v1, v0, 0x1

    :goto_a
    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v3, v1, v3

    and-int/2addr v3, v11

    if-nez v3, :cond_16

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v3, v2, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i4At([BII)I

    move-result v6

    add-int/lit8 v3, v1, 0x4

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v4, v2, v3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i4At([BII)I

    move-result v7

    add-int/lit8 v3, v1, 0x8

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v4, v2, v3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i4At([BII)I

    move-result v8

    add-int/lit8 v1, v1, 0xc

    sub-int v3, v8, v7

    add-int/2addr v3, v12

    new-array v9, v3, [I

    move v4, v2

    :goto_b
    if-lt v4, v3, :cond_15

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v5, v0, v2

    move-object v4, p1

    invoke-interface/range {v4 .. v9}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_tableswitch(IIII[I)V

    goto :goto_9

    :cond_15
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v5, v2, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i4At([BII)I

    move-result v5

    aput v5, v9, v4

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :pswitch_21
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_ret(II)V

    goto/16 :goto_4

    :pswitch_22
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i2At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_jsr(II)V

    goto/16 :goto_2

    :pswitch_23
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i2At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_goto(II)V

    goto/16 :goto_2

    :pswitch_24
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i2At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_if_acmpne(II)V

    goto/16 :goto_2

    :pswitch_25
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i2At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_if_acmpeq(II)V

    goto/16 :goto_2

    :pswitch_26
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i2At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_if_icmple(II)V

    goto/16 :goto_2

    :pswitch_27
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i2At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_if_icmpgt(II)V

    goto/16 :goto_2

    :pswitch_28
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i2At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_if_icmpge(II)V

    goto/16 :goto_2

    :pswitch_29
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i2At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_if_icmplt(II)V

    goto/16 :goto_2

    :pswitch_2a
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i2At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_if_icmpne(II)V

    goto/16 :goto_2

    :pswitch_2b
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i2At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_if_icmpeq(II)V

    goto/16 :goto_2

    :pswitch_2c
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i2At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_ifle(II)V

    goto/16 :goto_2

    :pswitch_2d
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i2At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_ifgt(II)V

    goto/16 :goto_2

    :pswitch_2e
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i2At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_ifge(II)V

    goto/16 :goto_2

    :pswitch_2f
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i2At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_iflt(II)V

    goto/16 :goto_2

    :pswitch_30
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i2At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_ifne(II)V

    goto/16 :goto_2

    :pswitch_31
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i2At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_ifeq(II)V

    goto/16 :goto_2

    :pswitch_32
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dcmpg(I)V

    goto/16 :goto_0

    :pswitch_33
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dcmpl(I)V

    goto/16 :goto_0

    :pswitch_34
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_fcmpg(I)V

    goto/16 :goto_0

    :pswitch_35
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_fcmpl(I)V

    goto/16 :goto_0

    :pswitch_36
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lcmp(I)V

    goto/16 :goto_0

    :pswitch_37
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_i2s(I)V

    goto/16 :goto_0

    :pswitch_38
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_i2c(I)V

    goto/16 :goto_0

    :pswitch_39
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_i2b(I)V

    goto/16 :goto_0

    :pswitch_3a
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_d2f(I)V

    goto/16 :goto_0

    :pswitch_3b
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_d2l(I)V

    goto/16 :goto_0

    :pswitch_3c
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_d2i(I)V

    goto/16 :goto_0

    :pswitch_3d
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_f2d(I)V

    goto/16 :goto_0

    :pswitch_3e
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_f2l(I)V

    goto/16 :goto_0

    :pswitch_3f
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_f2i(I)V

    goto/16 :goto_0

    :pswitch_40
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_l2d(I)V

    goto/16 :goto_0

    :pswitch_41
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_l2f(I)V

    goto/16 :goto_0

    :pswitch_42
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_l2i(I)V

    goto/16 :goto_0

    :pswitch_43
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_i2d(I)V

    goto/16 :goto_0

    :pswitch_44
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_i2f(I)V

    goto/16 :goto_0

    :pswitch_45
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_i2l(I)V

    goto/16 :goto_0

    :pswitch_46
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v2, v10, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i1At([BII)I

    move-result v2

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v3, v0, v3

    invoke-interface {p1, v3, v1, v2}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_iinc(III)V

    goto/16 :goto_2

    :pswitch_47
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lxor(I)V

    goto/16 :goto_0

    :pswitch_48
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_ixor(I)V

    goto/16 :goto_0

    :pswitch_49
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lor(I)V

    goto/16 :goto_0

    :pswitch_4a
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_ior(I)V

    goto/16 :goto_0

    :pswitch_4b
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_land(I)V

    goto/16 :goto_0

    :pswitch_4c
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_iand(I)V

    goto/16 :goto_0

    :pswitch_4d
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lushr(I)V

    goto/16 :goto_0

    :pswitch_4e
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_iushr(I)V

    goto/16 :goto_0

    :pswitch_4f
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lshr(I)V

    goto/16 :goto_0

    :pswitch_50
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_ishr(I)V

    goto/16 :goto_0

    :pswitch_51
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lshl(I)V

    goto/16 :goto_0

    :pswitch_52
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_ishl(I)V

    goto/16 :goto_0

    :pswitch_53
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dneg(I)V

    goto/16 :goto_0

    :pswitch_54
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_fneg(I)V

    goto/16 :goto_0

    :pswitch_55
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lneg(I)V

    goto/16 :goto_0

    :pswitch_56
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_ineg(I)V

    goto/16 :goto_0

    :pswitch_57
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_drem(I)V

    goto/16 :goto_0

    :pswitch_58
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_frem(I)V

    goto/16 :goto_0

    :pswitch_59
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lrem(I)V

    goto/16 :goto_0

    :pswitch_5a
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_irem(I)V

    goto/16 :goto_0

    :pswitch_5b
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_ddiv(I)V

    goto/16 :goto_0

    :pswitch_5c
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_fdiv(I)V

    goto/16 :goto_0

    :pswitch_5d
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_ldiv(I)V

    goto/16 :goto_0

    :pswitch_5e
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_idiv(I)V

    goto/16 :goto_0

    :pswitch_5f
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dmul(I)V

    goto/16 :goto_0

    :pswitch_60
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_fmul(I)V

    goto/16 :goto_0

    :pswitch_61
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lmul(I)V

    goto/16 :goto_0

    :pswitch_62
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_imul(I)V

    goto/16 :goto_0

    :pswitch_63
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dsub(I)V

    goto/16 :goto_0

    :pswitch_64
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_fsub(I)V

    goto/16 :goto_0

    :pswitch_65
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lsub(I)V

    goto/16 :goto_0

    :pswitch_66
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_isub(I)V

    goto/16 :goto_0

    :pswitch_67
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dadd(I)V

    goto/16 :goto_0

    :pswitch_68
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_fadd(I)V

    goto/16 :goto_0

    :pswitch_69
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_ladd(I)V

    goto/16 :goto_0

    :pswitch_6a
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_iadd(I)V

    goto/16 :goto_0

    :pswitch_6b
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_swap(I)V

    goto/16 :goto_0

    :pswitch_6c
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dup2_x2(I)V

    goto/16 :goto_0

    :pswitch_6d
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dup2_x1(I)V

    goto/16 :goto_0

    :pswitch_6e
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dup2(I)V

    goto/16 :goto_0

    :pswitch_6f
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dup_x2(I)V

    goto/16 :goto_0

    :pswitch_70
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dup_x1(I)V

    goto/16 :goto_0

    :pswitch_71
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dup(I)V

    goto/16 :goto_0

    :pswitch_72
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_pop2(I)V

    goto/16 :goto_0

    :pswitch_73
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_pop(I)V

    goto/16 :goto_0

    :pswitch_74
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_sastore(I)V

    goto/16 :goto_0

    :pswitch_75
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_castore(I)V

    goto/16 :goto_0

    :pswitch_76
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_bastore(I)V

    goto/16 :goto_0

    :pswitch_77
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_aastore(I)V

    goto/16 :goto_0

    :pswitch_78
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dastore(I)V

    goto/16 :goto_0

    :pswitch_79
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_fastore(I)V

    goto/16 :goto_0

    :pswitch_7a
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lastore(I)V

    goto/16 :goto_0

    :pswitch_7b
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_iastore(I)V

    goto/16 :goto_0

    :pswitch_7c
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_astore_3(I)V

    goto/16 :goto_0

    :pswitch_7d
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_astore_2(I)V

    goto/16 :goto_0

    :pswitch_7e
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_astore_1(I)V

    goto/16 :goto_0

    :pswitch_7f
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_astore_0(I)V

    goto/16 :goto_0

    :pswitch_80
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dstore_3(I)V

    goto/16 :goto_0

    :pswitch_81
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dstore_2(I)V

    goto/16 :goto_0

    :pswitch_82
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dstore_1(I)V

    goto/16 :goto_0

    :pswitch_83
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dstore_0(I)V

    goto/16 :goto_0

    :pswitch_84
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_fstore_3(I)V

    goto/16 :goto_0

    :pswitch_85
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_fstore_2(I)V

    goto/16 :goto_0

    :pswitch_86
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_fstore_1(I)V

    goto/16 :goto_0

    :pswitch_87
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_fstore_0(I)V

    goto/16 :goto_0

    :pswitch_88
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lstore_3(I)V

    goto/16 :goto_0

    :pswitch_89
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lstore_2(I)V

    goto/16 :goto_0

    :pswitch_8a
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lstore_1(I)V

    goto/16 :goto_0

    :pswitch_8b
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lstore_0(I)V

    goto/16 :goto_0

    :pswitch_8c
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_istore_3(I)V

    goto/16 :goto_0

    :pswitch_8d
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_istore_2(I)V

    goto/16 :goto_0

    :pswitch_8e
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_istore_1(I)V

    goto/16 :goto_0

    :pswitch_8f
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_istore_0(I)V

    goto/16 :goto_0

    :pswitch_90
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_astore(II)V

    goto/16 :goto_4

    :pswitch_91
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dstore(II)V

    goto/16 :goto_4

    :pswitch_92
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_fstore(II)V

    goto/16 :goto_4

    :pswitch_93
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lstore(II)V

    goto/16 :goto_4

    :pswitch_94
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_istore(II)V

    goto/16 :goto_4

    :pswitch_95
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_saload(I)V

    goto/16 :goto_0

    :pswitch_96
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_caload(I)V

    goto/16 :goto_0

    :pswitch_97
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_baload(I)V

    goto/16 :goto_0

    :pswitch_98
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_aaload(I)V

    goto/16 :goto_0

    :pswitch_99
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_daload(I)V

    goto/16 :goto_0

    :pswitch_9a
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_faload(I)V

    goto/16 :goto_0

    :pswitch_9b
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_laload(I)V

    goto/16 :goto_0

    :pswitch_9c
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_iaload(I)V

    goto/16 :goto_0

    :pswitch_9d
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_aload_3(I)V

    goto/16 :goto_0

    :pswitch_9e
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_aload_2(I)V

    goto/16 :goto_0

    :pswitch_9f
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_aload_1(I)V

    goto/16 :goto_0

    :pswitch_a0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_aload_0(I)V

    goto/16 :goto_0

    :pswitch_a1
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dload_3(I)V

    goto/16 :goto_0

    :pswitch_a2
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dload_2(I)V

    goto/16 :goto_0

    :pswitch_a3
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dload_1(I)V

    goto/16 :goto_0

    :pswitch_a4
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dload_0(I)V

    goto/16 :goto_0

    :pswitch_a5
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_fload_3(I)V

    goto/16 :goto_0

    :pswitch_a6
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_fload_2(I)V

    goto/16 :goto_0

    :pswitch_a7
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_fload_1(I)V

    goto/16 :goto_0

    :pswitch_a8
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_fload_0(I)V

    goto/16 :goto_0

    :pswitch_a9
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lload_3(I)V

    goto/16 :goto_0

    :pswitch_aa
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lload_2(I)V

    goto/16 :goto_0

    :pswitch_ab
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lload_1(I)V

    goto/16 :goto_0

    :pswitch_ac
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lload_0(I)V

    goto/16 :goto_0

    :pswitch_ad
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_iload_3(I)V

    goto/16 :goto_0

    :pswitch_ae
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_iload_2(I)V

    goto/16 :goto_0

    :pswitch_af
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_iload_1(I)V

    goto/16 :goto_0

    :pswitch_b0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_iload_0(I)V

    goto/16 :goto_0

    :pswitch_b1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_aload(II)V

    goto/16 :goto_4

    :pswitch_b2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dload(II)V

    goto/16 :goto_4

    :pswitch_b3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_fload(II)V

    goto/16 :goto_4

    :pswitch_b4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lload(II)V

    goto/16 :goto_4

    :pswitch_b5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_iload(II)V

    goto/16 :goto_4

    :pswitch_b6
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-interface {v2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v3

    if-eq v3, v5, :cond_18

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v3

    if-ne v3, v8, :cond_17

    goto :goto_c

    :cond_17
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v11}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_18
    :goto_c
    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v3, v0, v3

    invoke-interface {p1, v3, v1, v2}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_ldc2_w(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V

    goto/16 :goto_2

    :pswitch_b7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-interface {v2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->checkConstantAndThrow(I)V

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v3, v0, v3

    invoke-interface {p1, v3, v1, v2}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_ldc_w(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V

    goto/16 :goto_2

    :pswitch_b8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v1, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-interface {v2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->checkConstantAndThrow(I)V

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v3, v0, v3

    invoke-interface {p1, v3, v1, v2}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_ldc(IILorg/eclipse/jdt/core/util/IConstantPoolEntry;)V

    goto/16 :goto_4

    :pswitch_b9
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v2, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i2At([BII)I

    move-result v2

    int-to-short v2, v2

    invoke-interface {p1, v1, v2}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_sipush(IS)V

    goto/16 :goto_2

    :pswitch_ba
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->classFileBytes:[B

    invoke-virtual {p0, v2, v12, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i1At([BII)I

    move-result v2

    int-to-byte v2, v2

    invoke-interface {p1, v1, v2}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_bipush(IB)V

    goto/16 :goto_4

    :pswitch_bb
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dconst_1(I)V

    goto/16 :goto_0

    :pswitch_bc
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_dconst_0(I)V

    goto/16 :goto_0

    :pswitch_bd
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_fconst_2(I)V

    goto/16 :goto_0

    :pswitch_be
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_fconst_1(I)V

    goto/16 :goto_0

    :pswitch_bf
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_fconst_0(I)V

    goto/16 :goto_0

    :pswitch_c0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lconst_1(I)V

    goto/16 :goto_0

    :pswitch_c1
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_lconst_0(I)V

    goto/16 :goto_0

    :pswitch_c2
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_iconst_5(I)V

    goto/16 :goto_0

    :pswitch_c3
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_iconst_4(I)V

    goto/16 :goto_0

    :pswitch_c4
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_iconst_3(I)V

    goto/16 :goto_0

    :pswitch_c5
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_iconst_2(I)V

    goto/16 :goto_0

    :pswitch_c6
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_iconst_1(I)V

    goto/16 :goto_0

    :pswitch_c7
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_iconst_0(I)V

    goto/16 :goto_0

    :pswitch_c8
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_iconst_m1(I)V

    goto/16 :goto_0

    :pswitch_c9
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_aconst_null(I)V

    goto/16 :goto_0

    :pswitch_ca
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_nop(I)V

    goto/16 :goto_0

    :cond_19
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_impdep2(I)V

    goto/16 :goto_0

    :cond_1a
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/util/IBytecodeVisitor;->_impdep1(I)V

    goto/16 :goto_0

    :goto_d
    int-to-long v1, v0

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeLength:J

    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;->codeOffset:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
