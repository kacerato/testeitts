.class public final Lcom/android/aapt/Resources$Primitive;
.super Lcom/google/protobuf/w0;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$PrimitiveOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Primitive"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/aapt/Resources$Primitive$Builder;,
        Lcom/android/aapt/Resources$Primitive$OneofValueCase;,
        Lcom/android/aapt/Resources$Primitive$NullType;,
        Lcom/android/aapt/Resources$Primitive$EmptyType;,
        Lcom/android/aapt/Resources$Primitive$EmptyTypeOrBuilder;,
        Lcom/android/aapt/Resources$Primitive$NullTypeOrBuilder;
    }
.end annotation


# static fields
.field public static final BOOLEAN_VALUE_FIELD_NUMBER:I = 0x8

.field public static final COLOR_ARGB4_VALUE_FIELD_NUMBER:I = 0xb

.field public static final COLOR_ARGB8_VALUE_FIELD_NUMBER:I = 0x9

.field public static final COLOR_RGB4_VALUE_FIELD_NUMBER:I = 0xc

.field public static final COLOR_RGB8_VALUE_FIELD_NUMBER:I = 0xa

.field private static final DEFAULT_INSTANCE:Lcom/android/aapt/Resources$Primitive;

.field public static final DIMENSION_VALUE_DEPRECATED_FIELD_NUMBER:I = 0x4

.field public static final DIMENSION_VALUE_FIELD_NUMBER:I = 0xd

.field public static final EMPTY_VALUE_FIELD_NUMBER:I = 0x2

.field public static final FLOAT_VALUE_FIELD_NUMBER:I = 0x3

.field public static final FRACTION_VALUE_DEPRECATED_FIELD_NUMBER:I = 0x5

.field public static final FRACTION_VALUE_FIELD_NUMBER:I = 0xe

.field public static final INT_DECIMAL_VALUE_FIELD_NUMBER:I = 0x6

.field public static final INT_HEXADECIMAL_VALUE_FIELD_NUMBER:I = 0x7

.field public static final NULL_VALUE_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$Primitive;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private oneofValueCase_:I

.field private oneofValue_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/aapt/Resources$Primitive;

    invoke-direct {v0}, Lcom/android/aapt/Resources$Primitive;-><init>()V

    sput-object v0, Lcom/android/aapt/Resources$Primitive;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$Primitive;

    new-instance v0, Lcom/android/aapt/Resources$Primitive$1;

    invoke-direct {v0}, Lcom/android/aapt/Resources$Primitive$1;-><init>()V

    sput-object v0, Lcom/android/aapt/Resources$Primitive;->PARSER:Lcom/google/protobuf/w1;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/w0;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/android/aapt/Resources$Primitive;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/w0$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/w0$b<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0;-><init>(Lcom/google/protobuf/w0$b;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/android/aapt/Resources$Primitive;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$Primitive;-><init>(Lcom/google/protobuf/w0$b;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/aapt/Resources$Primitive;
    .locals 1

    sget-object v0, Lcom/android/aapt/Resources$Primitive;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$Primitive;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->W()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$Primitive;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$Primitive;

    invoke-virtual {v0}, Lcom/android/aapt/Resources$Primitive;->toBuilder()Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/android/aapt/Resources$Primitive;)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/aapt/Resources$Primitive;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$Primitive;

    invoke-virtual {v0}, Lcom/android/aapt/Resources$Primitive;->toBuilder()Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/aapt/Resources$Primitive$Builder;->mergeFrom(Lcom/android/aapt/Resources$Primitive;)Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/aapt/Resources$Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$Primitive;->PARSER:Lcom/google/protobuf/w1;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Primitive;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$Primitive;->PARSER:Lcom/google/protobuf/w1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Primitive;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/C;)Lcom/android/aapt/Resources$Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/android/aapt/Resources$Primitive;->PARSER:Lcom/google/protobuf/w1;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Primitive;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/android/aapt/Resources$Primitive;->PARSER:Lcom/google/protobuf/w1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Primitive;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/x;)Lcom/android/aapt/Resources$Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$Primitive;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Primitive;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/android/aapt/Resources$Primitive;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Primitive;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/aapt/Resources$Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/android/aapt/Resources$Primitive;->PARSER:Lcom/google/protobuf/w1;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Primitive;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/android/aapt/Resources$Primitive;->PARSER:Lcom/google/protobuf/w1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Primitive;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/aapt/Resources$Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$Primitive;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Primitive;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/android/aapt/Resources$Primitive;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Primitive;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/aapt/Resources$Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/android/aapt/Resources$Primitive;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Primitive;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/android/aapt/Resources$Primitive;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Primitive;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$Primitive;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/aapt/Resources$Primitive;->PARSER:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public static bridge synthetic t6(Lcom/android/aapt/Resources$Primitive;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    return-void
.end method

.method public static bridge synthetic u6(Lcom/android/aapt/Resources$Primitive;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/aapt/Resources$Primitive;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/aapt/Resources$Primitive;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getOneofValueCase()Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getOneofValueCase()Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getFractionValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getFractionValue()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getDimensionValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getDimensionValue()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getColorRgb4Value()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getColorRgb4Value()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getColorArgb4Value()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getColorArgb4Value()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getColorRgb8Value()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getColorRgb8Value()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getColorArgb8Value()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getColorArgb8Value()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getBooleanValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getBooleanValue()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getIntHexadecimalValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getIntHexadecimalValue()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getIntDecimalValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getIntDecimalValue()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getFractionValueDeprecated()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getFractionValueDeprecated()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :pswitch_a
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getDimensionValueDeprecated()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getDimensionValueDeprecated()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :pswitch_b
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getFloatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getFloatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :pswitch_c
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getEmptyValue()Lcom/android/aapt/Resources$Primitive$EmptyType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getEmptyValue()Lcom/android/aapt/Resources$Primitive$EmptyType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/aapt/Resources$Primitive$EmptyType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :pswitch_d
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getNullValue()Lcom/android/aapt/Resources$Primitive$NullType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getNullValue()Lcom/android/aapt/Resources$Primitive$NullType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/aapt/Resources$Primitive$NullType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/r2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public getBooleanValue()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColorArgb4Value()I
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColorArgb8Value()I
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColorRgb4Value()I
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColorRgb8Value()I
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$Primitive;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$Primitive;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$Primitive;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getDefaultInstanceForType()Lcom/android/aapt/Resources$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getDefaultInstanceForType()Lcom/android/aapt/Resources$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getDimensionValue()I
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDimensionValueDeprecated()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEmptyValue()Lcom/android/aapt/Resources$Primitive$EmptyType;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Primitive$EmptyType;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Primitive$EmptyType;->getDefaultInstance()Lcom/android/aapt/Resources$Primitive$EmptyType;

    move-result-object v0

    return-object v0
.end method

.method public getEmptyValueOrBuilder()Lcom/android/aapt/Resources$Primitive$EmptyTypeOrBuilder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Primitive$EmptyType;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Primitive$EmptyType;->getDefaultInstance()Lcom/android/aapt/Resources$Primitive$EmptyType;

    move-result-object v0

    return-object v0
.end method

.method public getFloatValue()F
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFractionValue()I
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFractionValueDeprecated()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIntDecimalValue()I
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIntHexadecimalValue()I
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNullValue()Lcom/android/aapt/Resources$Primitive$NullType;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Primitive$NullType;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Primitive$NullType;->getDefaultInstance()Lcom/android/aapt/Resources$Primitive$NullType;

    move-result-object v0

    return-object v0
.end method

.method public getNullValueOrBuilder()Lcom/android/aapt/Resources$Primitive$NullTypeOrBuilder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Primitive$NullType;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Primitive$NullType;->getDefaultInstance()Lcom/android/aapt/Resources$Primitive$NullType;

    move-result-object v0

    return-object v0
.end method

.method public getOneofValueCase()Lcom/android/aapt/Resources$Primitive$OneofValueCase;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    invoke-static {v0}, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->forNumber(I)Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$Primitive;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/aapt/Resources$Primitive;->PARSER:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Primitive$NullType;

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v1, Lcom/android/aapt/Resources$Primitive$EmptyType;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->q0(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->q0(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->q0(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->w0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_e

    iget-object v1, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public hasBooleanValue()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasColorArgb4Value()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasColorArgb8Value()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasColorRgb4Value()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasColorRgb8Value()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDimensionValue()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDimensionValueDeprecated()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEmptyValue()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFloatValue()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFractionValue()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFractionValueDeprecated()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIntDecimalValue()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIntHexadecimalValue()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNullValue()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Primitive;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getFractionValue()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    goto/16 :goto_1

    :pswitch_1
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getDimensionValue()I

    move-result v0

    goto :goto_0

    :pswitch_2
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getColorRgb4Value()I

    move-result v0

    goto :goto_0

    :pswitch_3
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getColorArgb4Value()I

    move-result v0

    goto :goto_0

    :pswitch_4
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getColorRgb8Value()I

    move-result v0

    goto :goto_0

    :pswitch_5
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getColorArgb8Value()I

    move-result v0

    goto :goto_0

    :pswitch_6
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getBooleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    goto :goto_0

    :pswitch_7
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getIntHexadecimalValue()I

    move-result v0

    goto :goto_0

    :pswitch_8
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getIntDecimalValue()I

    move-result v0

    goto :goto_0

    :pswitch_9
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getFractionValueDeprecated()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :pswitch_a
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getDimensionValueDeprecated()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :pswitch_b
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getFloatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto/16 :goto_0

    :pswitch_c
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getEmptyValue()Lcom/android/aapt/Resources$Primitive$EmptyType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$Primitive$EmptyType;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :pswitch_d
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->getNullValue()Lcom/android/aapt/Resources$Primitive$NullType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$Primitive$NullType;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :goto_1
    mul-int/lit8 v1, v1, 0x1d

    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/r2;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/android/aapt/Resources;->X()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$Primitive;

    const-class v2, Lcom/android/aapt/Resources$Primitive$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/aapt/Resources$Primitive;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/aapt/Resources$Primitive;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/android/aapt/Resources$Primitive;->newBuilder()Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/android/aapt/Resources$Primitive$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/aapt/Resources$Primitive$Builder;-><init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/V;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->newBuilderForType()Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Primitive;->newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->newBuilderForType()Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/w0$i;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/android/aapt/Resources$Primitive;

    invoke-direct {p1}, Lcom/android/aapt/Resources$Primitive;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$Primitive;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$Primitive;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/aapt/Resources$Primitive$Builder;

    invoke-direct {v0, v1}, Lcom/android/aapt/Resources$Primitive$Builder;-><init>(Lcom/android/aapt/V;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/aapt/Resources$Primitive$Builder;

    invoke-direct {v0, v1}, Lcom/android/aapt/Resources$Primitive$Builder;-><init>(Lcom/android/aapt/V;)V

    invoke-virtual {v0, p0}, Lcom/android/aapt/Resources$Primitive$Builder;->mergeFrom(Lcom/android/aapt/Resources$Primitive;)Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->toBuilder()Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive;->toBuilder()Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Primitive$NullType;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_0
    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Primitive$EmptyType;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_1
    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->P(IF)V

    :cond_2
    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->P(IF)V

    :cond_3
    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->P(IF)V

    :cond_4
    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->i(II)V

    :cond_5
    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->m(II)V

    :cond_6
    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_7
    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->m(II)V

    :cond_8
    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->m(II)V

    :cond_9
    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->m(II)V

    :cond_a
    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->m(II)V

    :cond_b
    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->m(II)V

    :cond_c
    iget v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValueCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->m(II)V

    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
