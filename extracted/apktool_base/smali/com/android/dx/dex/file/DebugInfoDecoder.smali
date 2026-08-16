.class public Lcom/android/dx/dex/file/DebugInfoDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;,
        Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;
    }
.end annotation


# instance fields
.field private address:I

.field private final codesize:I

.field private final desc:Lcom/android/dx/rop/type/Prototype;

.field private final encoded:[B

.field private final file:Lcom/android/dx/dex/file/DexFile;

.field private final isStatic:Z

.field private final lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

.field private line:I

.field private final locals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final positions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final regSize:I

.field private final thisStringIdx:I


# direct methods
.method public constructor <init>([BIIZLcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/dex/file/DexFile;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->encoded:[B

    iput-boolean p4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->isStatic:Z

    invoke-virtual {p5}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getPrototype()Lcom/android/dx/rop/type/Prototype;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->desc:Lcom/android/dx/rop/type/Prototype;

    iput-object p6, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->file:Lcom/android/dx/dex/file/DexFile;

    iput p3, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->regSize:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->positions:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    iput p2, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->codesize:I

    new-array p1, p3, [Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iput-object p1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    :try_start_0
    invoke-virtual {p6}, Lcom/android/dx/dex/file/DexFile;->getStringIds()Lcom/android/dx/dex/file/StringIdsSection;

    move-result-object p1

    new-instance p2, Lcom/android/dx/rop/cst/CstString;

    const-string p3, "this"

    invoke-direct {p2, p3}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstString;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->thisStringIdx:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "encoded == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private decode0()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/dex/util/ByteArrayByteInput;

    iget-object v2, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->encoded:[B

    invoke-direct {v1, v2}, Lcom/android/dex/util/ByteArrayByteInput;-><init>([B)V

    invoke-static {v1}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v2

    iput v2, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    invoke-static {v1}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v2

    iget-object v3, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->desc:Lcom/android/dx/rop/type/Prototype;

    invoke-virtual {v3}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/android/dx/dex/file/DebugInfoDecoder;->getParamBase()I

    move-result v11

    invoke-virtual {v3}, Lcom/android/dx/util/FixedSizeList;->size()I

    move-result v4

    if-ne v2, v4, :cond_6

    iget-boolean v4, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->isStatic:Z

    if-nez v4, :cond_0

    new-instance v12, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v8, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->thisStringIdx:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v4, v12

    move v7, v11

    invoke-direct/range {v4 .. v10}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    iget-object v4, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v12, v4, v11

    add-int/lit8 v11, v11, 0x1

    :cond_0
    const/4 v4, 0x0

    move v12, v11

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {v3, v4}, Lcom/android/dx/rop/type/StdTypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v13

    invoke-direct {v0, v1}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dex/util/ByteInput;)I

    move-result v9

    const/4 v5, -0x1

    if-ne v9, v5, :cond_1

    new-instance v14, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, -0x1

    move-object v5, v14

    move v8, v12

    invoke-direct/range {v5 .. v11}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    goto :goto_1

    :cond_1
    new-instance v14, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v5, v14

    move v8, v12

    invoke-direct/range {v5 .. v11}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    :goto_1
    iget-object v5, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v14, v5, v12

    invoke-virtual {v13}, Lcom/android/dx/rop/type/Type;->getCategory()I

    move-result v5

    add-int/2addr v12, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    :pswitch_0
    invoke-interface {v1}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    const/16 v3, 0xa

    if-lt v2, v3, :cond_3

    add-int/lit8 v2, v2, -0xa

    iget v3, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    div-int/lit8 v4, v2, 0xf

    add-int/2addr v3, v4

    iput v3, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    iget v4, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    rem-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, -0x4

    add-int/2addr v4, v2

    iput v4, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    iget-object v2, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->positions:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;

    invoke-direct {v5, v3, v4}, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;-><init>(II)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid extended opcode encountered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    invoke-static {v1}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v2

    :try_start_0
    iget-object v3, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aget-object v3, v3, v2

    iget-boolean v4, v3, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    if-nez v4, :cond_4

    new-instance v10, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v4, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    iget v7, v3, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    iget v8, v3, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->typeIndex:I

    const/4 v9, 0x0

    const/4 v5, 0x1

    move-object v3, v10

    move v6, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v10, v3, v2

    goto :goto_2

    :cond_4
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nonsensical RESTART_LOCAL on live register v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered RESTART_LOCAL on new v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    invoke-static {v1}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v2

    :try_start_2
    iget-object v3, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aget-object v3, v3, v2

    iget-boolean v4, v3, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    if-eqz v4, :cond_5

    new-instance v10, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v4, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    iget v7, v3, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    iget v8, v3, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->typeIndex:I

    iget v9, v3, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->signatureIndex:I

    const/4 v5, 0x0

    move-object v3, v10

    move v6, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    iget-object v3, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v10, v3, v2

    goto/16 :goto_2

    :cond_5
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nonsensical END_LOCAL on dead register v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered END_LOCAL on new v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    invoke-static {v1}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v2

    invoke-direct {v0, v1}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dex/util/ByteInput;)I

    move-result v7

    invoke-direct {v0, v1}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dex/util/ByteInput;)I

    move-result v8

    invoke-direct {v0, v1}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dex/util/ByteInput;)I

    move-result v9

    new-instance v10, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v4, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    const/4 v5, 0x1

    move-object v3, v10

    move v6, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    iget-object v3, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v10, v3, v2

    goto/16 :goto_2

    :pswitch_4
    invoke-static {v1}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v2

    invoke-direct {v0, v1}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dex/util/ByteInput;)I

    move-result v15

    invoke-direct {v0, v1}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dex/util/ByteInput;)I

    move-result v16

    new-instance v3, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v12, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    const/4 v13, 0x1

    const/16 v17, 0x0

    move-object v11, v3

    move v14, v2

    invoke-direct/range {v11 .. v17}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    iget-object v4, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v3, v4, v2

    goto/16 :goto_2

    :pswitch_5
    iget v2, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    invoke-static {v1}, Lcom/android/dex/Leb128;->readSignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    goto/16 :goto_2

    :pswitch_6
    iget v2, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    invoke-static {v1}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    goto/16 :goto_2

    :pswitch_7
    return-void

    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Mismatch between parameters_size and prototype"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getParamBase()I
    .locals 2

    iget v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->regSize:I

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->desc:Lcom/android/dx/rop/type/Prototype;

    invoke-virtual {v1}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/type/StdTypeList;->getWordCount()I

    move-result v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->isStatic:Z

    xor-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method private readStringIndex(Lcom/android/dex/util/ByteInput;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public static validateEncode([BLcom/android/dx/dex/file/DexFile;Lcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/dex/code/DalvCode;Z)V
    .locals 9

    invoke-virtual {p3}, Lcom/android/dx/dex/code/DalvCode;->getPositions()Lcom/android/dx/dex/code/PositionList;

    move-result-object v6

    invoke-virtual {p3}, Lcom/android/dx/dex/code/DalvCode;->getLocals()Lcom/android/dx/dex/code/LocalList;

    move-result-object v8

    invoke-virtual {p3}, Lcom/android/dx/dex/code/DalvCode;->getInsns()Lcom/android/dx/dex/code/DalvInsnList;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v1

    invoke-virtual {p3}, Lcom/android/dx/dex/code/DalvInsnList;->getRegistersSize()I

    move-result v2

    move-object v0, p0

    move v3, p4

    move-object v4, p2

    move-object v5, p1

    move-object v7, v8

    :try_start_0
    invoke-static/range {v0 .. v7}, Lcom/android/dx/dex/file/DebugInfoDecoder;->validateEncode0([BIIZLcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/dex/code/PositionList;Lcom/android/dx/dex/code/LocalList;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p4, "instructions:"

    invoke-virtual {p1, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 p4, 0x1

    const-string v0, "  "

    invoke-virtual {p3, p1, v0, p4}, Lcom/android/dx/dex/code/DalvInsnList;->debugPrint(Ljava/io/OutputStream;Ljava/lang/String;Z)V

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p3, "local list:"

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v8, p1, v0}, Lcom/android/dx/dex/code/LocalList;->debugPrint(Ljava/io/PrintStream;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "while processing "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/dx/rop/cst/CstMemberRef;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dex/util/ExceptionWithContext;

    move-result-object p0

    throw p0
.end method

.method private static validateEncode0([BIIZLcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/dex/code/PositionList;Lcom/android/dx/dex/code/LocalList;)V
    .locals 8

    new-instance v7, Lcom/android/dx/dex/file/DebugInfoDecoder;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/dx/dex/file/DebugInfoDecoder;-><init>([BIIZLcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/dex/file/DexFile;)V

    invoke-virtual {v7}, Lcom/android/dx/dex/file/DebugInfoDecoder;->decode()V

    invoke-virtual {v7}, Lcom/android/dx/dex/file/DebugInfoDecoder;->getPositionList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p6}, Lcom/android/dx/util/FixedSizeList;->size()I

    move-result p2

    if-ne p1, p2, :cond_10

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;

    invoke-virtual {p6}, Lcom/android/dx/util/FixedSizeList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_1

    invoke-virtual {p6, p2}, Lcom/android/dx/dex/code/PositionList;->get(I)Lcom/android/dx/dex/code/PositionList$Entry;

    move-result-object p3

    iget p4, p1, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->line:I

    invoke-virtual {p3}, Lcom/android/dx/dex/code/PositionList$Entry;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/dx/rop/code/SourcePosition;->getLine()I

    move-result p5

    if-ne p4, p5, :cond_0

    iget p4, p1, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->address:I

    invoke-virtual {p3}, Lcom/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result p3

    if-ne p4, p3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not match position entry: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->address:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->line:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {v7}, Lcom/android/dx/dex/file/DebugInfoDecoder;->getLocals()Ljava/util/List;

    move-result-object p0

    iget p1, v7, Lcom/android/dx/dex/file/DebugInfoDecoder;->thisStringIdx:I

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {v7}, Lcom/android/dx/dex/file/DebugInfoDecoder;->getParamBase()I

    move-result p3

    const/4 p4, 0x0

    move p5, p4

    :goto_2
    if-ge p5, p2, :cond_7

    invoke-interface {p0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v0, p6, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    if-ltz v0, :cond_3

    if-ne v0, p1, :cond_6

    :cond_3
    add-int/lit8 v0, p5, 0x1

    :goto_3
    if-ge v0, p2, :cond_6

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v2, v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->address:I

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    iget v2, p6, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    iget v3, v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    if-ne v2, v3, :cond_5

    iget-boolean v2, v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    if-eqz v2, :cond_5

    invoke-interface {p0, p5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p7}, Lcom/android/dx/util/FixedSizeList;->size()I

    move-result p1

    move p5, p4

    :goto_5
    if-ge p4, p1, :cond_f

    invoke-virtual {p7, p4}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object p6

    invoke-virtual {p6}, Lcom/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/android/dx/dex/code/LocalList$Disposition;

    move-result-object v0

    sget-object v1, Lcom/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/android/dx/dex/code/LocalList$Disposition;

    if-ne v0, v1, :cond_8

    goto/16 :goto_9

    :cond_8
    invoke-interface {p0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v1, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    if-ltz v1, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 p5, p5, 0x1

    if-lt p5, p2, :cond_8

    :goto_6
    iget v1, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->address:I

    iget v2, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    invoke-virtual {p6}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v3

    const-string v4, " / decoded "

    if-eq v2, v3, :cond_a

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "local register mismatch at orig "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    iget-boolean v2, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    invoke-virtual {p6}, Lcom/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v3

    if-eq v2, v3, :cond_b

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "local start/end mismatch at orig "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    invoke-virtual {p6}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result p6

    if-eq v1, p6, :cond_e

    if-nez v1, :cond_c

    iget p6, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    if-ge p6, p3, :cond_e

    :cond_c
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "local address mismatch at orig "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_7
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "decoded locals:"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "  "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "local table problem"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    add-int/lit8 p5, p5, 0x1

    :goto_9
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_5

    :cond_f
    return-void

    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Decoded positions table not same size was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " expected "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Lcom/android/dx/util/FixedSizeList;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decode()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoDecoder;->decode0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "...while decoding debug info"

    invoke-static {v0, v1}, Lcom/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dex/util/ExceptionWithContext;

    move-result-object v0

    throw v0
.end method

.method public getLocals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPositionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->positions:Ljava/util/ArrayList;

    return-object v0
.end method
