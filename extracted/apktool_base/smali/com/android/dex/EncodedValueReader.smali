.class public final Lcom/android/dex/EncodedValueReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ENCODED_ANNOTATION:I = 0x1d

.field public static final ENCODED_ARRAY:I = 0x1c

.field public static final ENCODED_BOOLEAN:I = 0x1f

.field public static final ENCODED_BYTE:I = 0x0

.field public static final ENCODED_CHAR:I = 0x3

.field public static final ENCODED_DOUBLE:I = 0x11

.field public static final ENCODED_ENUM:I = 0x1b

.field public static final ENCODED_FIELD:I = 0x19

.field public static final ENCODED_FLOAT:I = 0x10

.field public static final ENCODED_INT:I = 0x4

.field public static final ENCODED_LONG:I = 0x6

.field public static final ENCODED_METHOD:I = 0x1a

.field public static final ENCODED_NULL:I = 0x1e

.field public static final ENCODED_SHORT:I = 0x2

.field public static final ENCODED_STRING:I = 0x17

.field public static final ENCODED_TYPE:I = 0x18

.field private static final MUST_READ:I = -0x1


# instance fields
.field private annotationType:I

.field private arg:I

.field protected final in:Lcom/android/dex/util/ByteInput;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/android/dex/EncodedValue;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Lcom/android/dex/EncodedValue;->asByteInput()Lcom/android/dex/util/ByteInput;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/dex/EncodedValueReader;-><init>(Lcom/android/dex/util/ByteInput;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/dex/EncodedValue;I)V
    .locals 0

    .line 8
    invoke-virtual {p1}, Lcom/android/dex/EncodedValue;->asByteInput()Lcom/android/dex/util/ByteInput;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/dex/EncodedValueReader;-><init>(Lcom/android/dex/util/ByteInput;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/dex/util/ByteInput;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    .line 3
    iput-object p1, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    return-void
.end method

.method public constructor <init>(Lcom/android/dex/util/ByteInput;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    .line 7
    iput p2, p0, Lcom/android/dex/EncodedValueReader;->type:I

    return-void
.end method

.method private checkType(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->peek()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->peek()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Expected %x but was %x"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAnnotationType()I
    .locals 1

    iget v0, p0, Lcom/android/dex/EncodedValueReader;->annotationType:I

    return v0
.end method

.method public peek()I
    .locals 2

    iget v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    invoke-interface {v0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0x1f

    iput v1, p0, Lcom/android/dex/EncodedValueReader;->type:I

    and-int/lit16 v0, v0, 0xe0

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    :cond_0
    iget v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    return v0
.end method

.method public readAnnotation()I
    .locals 1

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    invoke-static {v0}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v0

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->annotationType:I

    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    invoke-static {v0}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v0

    return v0
.end method

.method public readAnnotationName()I
    .locals 1

    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    invoke-static {v0}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v0

    return v0
.end method

.method public readArray()I
    .locals 1

    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    invoke-static {v0}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v0

    return v0
.end method

.method public readBoolean()Z
    .locals 1

    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    iget v0, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readByte()B
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    invoke-static {v0, v1}, Lcom/android/dex/EncodedValueCodec;->readSignedInt(Lcom/android/dex/util/ByteInput;I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readChar()C
    .locals 3

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 3

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedLong(Lcom/android/dex/util/ByteInput;IZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .locals 3

    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I

    move-result v0

    return v0
.end method

.method public readField()I
    .locals 3

    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I

    move-result v0

    return v0
.end method

.method public readFloat()F
    .locals 3

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    invoke-static {v0, v1}, Lcom/android/dex/EncodedValueCodec;->readSignedInt(Lcom/android/dex/util/ByteInput;I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    invoke-static {v0, v1}, Lcom/android/dex/EncodedValueCodec;->readSignedLong(Lcom/android/dex/util/ByteInput;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public readMethod()I
    .locals 3

    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I

    move-result v0

    return v0
.end method

.method public readNull()V
    .locals 1

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    return-void
.end method

.method public readShort()S
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    invoke-static {v0, v1}, Lcom/android/dex/EncodedValueCodec;->readSignedInt(Lcom/android/dex/util/ByteInput;I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public readString()I
    .locals 3

    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I

    move-result v0

    return v0
.end method

.method public readType()I
    .locals 3

    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I

    move-result v0

    return v0
.end method

.method public skipValue()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->peek()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/dex/EncodedValueReader;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readBoolean()Z

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readNull()V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readAnnotation()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_7

    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readAnnotationName()I

    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->skipValue()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readArray()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_7

    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->skipValue()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readEnum()I

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readMethod()I

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readField()I

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readType()I

    goto :goto_2

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readString()I

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readDouble()D

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readFloat()F

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readInt()I

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readChar()C

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readShort()S

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readLong()J

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readByte()B

    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x17
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
