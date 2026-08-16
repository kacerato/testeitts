.class public final Lcom/android/dx/cf/cst/ConstantPoolParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bytes:Lcom/android/dx/util/ByteArray;

.field private endOffset:I

.field private observer:Lcom/android/dx/cf/iface/ParseObserver;

.field private final offsets:[I

.field private final pool:Lcom/android/dx/rop/cst/StdConstantPool;


# direct methods
.method public constructor <init>(Lcom/android/dx/util/ByteArray;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    iput-object p1, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    new-instance p1, Lcom/android/dx/rop/cst/StdConstantPool;

    invoke-direct {p1, v0}, Lcom/android/dx/rop/cst/StdConstantPool;-><init>(I)V

    iput-object p1, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/android/dx/rop/cst/StdConstantPool;

    new-array p1, v0, [I

    iput-object p1, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    return-void
.end method

.method private determineOffsets()V
    .locals 6

    const/16 v0, 0xa

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aput v0, v3, v2

    iget-object v3, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    invoke-virtual {v3, v0}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    :try_start_0
    new-instance v1, Lcom/android/dx/cf/iface/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown tag byte: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    goto :goto_3

    :pswitch_1
    new-instance v1, Lcom/android/dx/cf/iface/ParseException;

    const-string v3, "InvokeDynamic not supported"

    invoke-direct {v1, v3}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    new-instance v1, Lcom/android/dx/cf/iface/ParseException;

    const-string v3, "MethodType not supported"

    invoke-direct {v1, v3}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    new-instance v1, Lcom/android/dx/cf/iface/ParseException;

    const-string v3, "MethodHandle not supported"

    invoke-direct {v1, v3}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_4
    add-int/lit8 v0, v0, 0x3

    :goto_1
    move v3, v1

    goto :goto_2

    :pswitch_5
    add-int/lit8 v0, v0, 0x9

    const/4 v3, 0x2

    goto :goto_2

    :pswitch_6
    add-int/lit8 v0, v0, 0x5

    goto :goto_1

    :pswitch_7
    iget-object v3, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3
    :try_end_0
    .catch Lcom/android/dx/cf/iface/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v0, v3

    goto :goto_1

    :goto_2
    add-int/2addr v2, v3

    goto :goto_0

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "...while preparsing cst "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at offset "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/dex/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput v0, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parse()V
    .locals 9

    invoke-direct {p0}, Lcom/android/dx/cf/cst/ConstantPoolParser;->determineOffsets()V

    iget-object v0, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "constant_pool_count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v5, v5

    invoke-static {v5}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    const/4 v6, 0x2

    invoke-interface {v0, v3, v5, v6, v4}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    iget-object v3, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    const/16 v4, 0xa

    const-string v5, "\nconstant_pool:"

    invoke-interface {v0, v3, v4, v1, v5}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    invoke-interface {v0, v2}, Lcom/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    :cond_0
    new-instance v0, Ljava/util/BitSet;

    iget-object v3, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v3, v3

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2

    aget v4, v4, v3

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v4, v3}, Lcom/android/dx/rop/cst/StdConstantPool;->getOrNull(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-direct {p0, v3, v0}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    if-eqz v3, :cond_8

    :goto_1
    iget-object v3, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v3, v3

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v3, v2}, Lcom/android/dx/rop/cst/StdConstantPool;->getOrNull(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_5

    :cond_3
    iget-object v4, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    aget v4, v4, v2

    iget v5, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    add-int/lit8 v6, v2, 0x1

    :goto_2
    iget-object v7, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v8, v7

    if-ge v6, v8, :cond_5

    aget v7, v7, v6

    if-eqz v7, :cond_4

    move v5, v7

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": utf8{\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/dx/util/ToHuman;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    iget-object v6, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    iget-object v7, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    sub-int/2addr v5, v4

    invoke-interface {v6, v7, v4, v5, v3}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    const/4 v2, -0x1

    invoke-interface {v0, v2}, Lcom/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    iget-object v0, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    iget-object v2, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    iget v3, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    const-string v4, "end constant_pool"

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_8
    return-void
.end method

.method private parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;
    .locals 6

    const-string v0, " at offset "

    const-string v1, "...while parsing cst "

    iget-object v2, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v2, p1}, Lcom/android/dx/rop/cst/StdConstantPool;->getOrNull(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    aget v2, v2, p1

    :try_start_0
    iget-object v3, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    invoke-virtual {v3, v2}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance p2, Lcom/android/dx/cf/iface/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown tag byte: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p2

    goto/16 :goto_1

    :catch_1
    move-exception p2

    goto/16 :goto_2

    :pswitch_1
    new-instance p2, Lcom/android/dx/cf/iface/ParseException;

    const-string v3, "InvokeDynamic not supported"

    invoke-direct {p2, v3}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_2
    new-instance p2, Lcom/android/dx/cf/iface/ParseException;

    const-string v3, "MethodType not supported"

    invoke-direct {p2, v3}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_3
    new-instance p2, Lcom/android/dx/cf/iface/ParseException;

    const-string v3, "MethodHandle not supported"

    invoke-direct {p2, v3}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_4
    iget-object v3, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    invoke-direct {p0, v3, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object v3

    check-cast v3, Lcom/android/dx/rop/cst/CstString;

    iget-object v4, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v5, v2, 0x3

    invoke-virtual {v4, v5}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/android/dx/rop/cst/CstString;

    new-instance v4, Lcom/android/dx/rop/cst/CstNat;

    invoke-direct {v4, v3, p2}, Lcom/android/dx/rop/cst/CstNat;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v3, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    invoke-direct {p0, v3, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object v3

    check-cast v3, Lcom/android/dx/rop/cst/CstType;

    iget-object v4, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v5, v2, 0x3

    invoke-virtual {v4, v5}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/android/dx/rop/cst/CstNat;

    new-instance v4, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;

    invoke-direct {v4, v3, p2}, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v3, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    invoke-direct {p0, v3, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object v3

    check-cast v3, Lcom/android/dx/rop/cst/CstType;

    iget-object v4, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v5, v2, 0x3

    invoke-virtual {v4, v5}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/android/dx/rop/cst/CstNat;

    new-instance v4, Lcom/android/dx/rop/cst/CstMethodRef;

    invoke-direct {v4, v3, p2}, Lcom/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v3, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    invoke-direct {p0, v3, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object v3

    check-cast v3, Lcom/android/dx/rop/cst/CstType;

    iget-object v4, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v5, v2, 0x3

    invoke-virtual {v4, v5}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/android/dx/rop/cst/CstNat;

    new-instance v4, Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-direct {v4, v3, p2}, Lcom/android/dx/rop/cst/CstFieldRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    goto :goto_0

    :pswitch_8
    iget-object v3, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    invoke-direct {p0, v3, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object v4

    goto :goto_0

    :pswitch_9
    iget-object v3, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    invoke-direct {p0, v3, p2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/android/dx/rop/cst/CstString;

    new-instance v4, Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {p2}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/dx/rop/type/Type;->internClassName(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    move-result-object p2

    invoke-direct {v4, p2}, Lcom/android/dx/rop/cst/CstType;-><init>(Lcom/android/dx/rop/type/Type;)V

    goto :goto_0

    :pswitch_a
    iget-object p2, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Lcom/android/dx/util/ByteArray;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/dx/rop/cst/CstDouble;->make(J)Lcom/android/dx/rop/cst/CstDouble;

    move-result-object v4

    goto :goto_0

    :pswitch_b
    iget-object p2, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Lcom/android/dx/util/ByteArray;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/dx/rop/cst/CstLong;->make(J)Lcom/android/dx/rop/cst/CstLong;

    move-result-object v4

    goto :goto_0

    :pswitch_c
    iget-object p2, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Lcom/android/dx/util/ByteArray;->getInt(I)I

    move-result p2

    invoke-static {p2}, Lcom/android/dx/rop/cst/CstFloat;->make(I)Lcom/android/dx/rop/cst/CstFloat;

    move-result-object v4

    goto :goto_0

    :pswitch_d
    iget-object p2, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Lcom/android/dx/util/ByteArray;->getInt(I)I

    move-result p2

    invoke-static {p2}, Lcom/android/dx/rop/cst/CstInteger;->make(I)Lcom/android/dx/rop/cst/CstInteger;

    move-result-object v4

    goto :goto_0

    :pswitch_e
    invoke-direct {p0, v2}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parseUtf8(I)Lcom/android/dx/rop/cst/CstString;

    move-result-object v4

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V
    :try_end_0
    .catch Lcom/android/dx/cf/iface/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object p2, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {p2, p1, v4}, Lcom/android/dx/rop/cst/StdConstantPool;->set(ILcom/android/dx/rop/cst/Constant;)V

    return-object v4

    :goto_1
    new-instance v3, Lcom/android/dx/cf/iface/ParseException;

    invoke-direct {v3, p2}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/Throwable;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/android/dex/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    throw v3

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/dex/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_0
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
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseIfNecessary()V
    .locals 1

    iget v0, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parse()V

    :cond_0
    return-void
.end method

.method private parseUtf8(I)Lcom/android/dx/rop/cst/CstString;
    .locals 2

    iget-object v0, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x3

    iget-object v1, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/2addr v0, p1

    invoke-virtual {v1, p1, v0}, Lcom/android/dx/util/ByteArray;->slice(II)Lcom/android/dx/util/ByteArray;

    move-result-object p1

    :try_start_0
    new-instance v0, Lcom/android/dx/rop/cst/CstString;

    invoke-direct {v0, p1}, Lcom/android/dx/rop/cst/CstString;-><init>(Lcom/android/dx/util/ByteArray;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/android/dx/cf/iface/ParseException;

    invoke-direct {v0, p1}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getEndOffset()I
    .locals 1

    invoke-direct {p0}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parseIfNecessary()V

    iget v0, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    return v0
.end method

.method public getPool()Lcom/android/dx/rop/cst/StdConstantPool;
    .locals 1

    invoke-direct {p0}, Lcom/android/dx/cf/cst/ConstantPoolParser;->parseIfNecessary()V

    iget-object v0, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/android/dx/rop/cst/StdConstantPool;

    return-object v0
.end method

.method public setObserver(Lcom/android/dx/cf/iface/ParseObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    return-void
.end method
