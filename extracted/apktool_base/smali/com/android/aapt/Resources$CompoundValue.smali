.class public final Lcom/android/aapt/Resources$CompoundValue;
.super Lcom/google/protobuf/w0;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$CompoundValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompoundValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/aapt/Resources$CompoundValue$Builder;,
        Lcom/android/aapt/Resources$CompoundValue$ValueCase;
    }
.end annotation


# static fields
.field public static final ARRAY_FIELD_NUMBER:I = 0x4

.field public static final ATTR_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/android/aapt/Resources$CompoundValue;

.field public static final MACRO_FIELD_NUMBER:I = 0x6

.field private static final PARSER:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$CompoundValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLURAL_FIELD_NUMBER:I = 0x5

.field public static final STYLEABLE_FIELD_NUMBER:I = 0x3

.field public static final STYLE_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private valueCase_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/aapt/Resources$CompoundValue;

    invoke-direct {v0}, Lcom/android/aapt/Resources$CompoundValue;-><init>()V

    sput-object v0, Lcom/android/aapt/Resources$CompoundValue;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$CompoundValue;

    new-instance v0, Lcom/android/aapt/Resources$CompoundValue$1;

    invoke-direct {v0}, Lcom/android/aapt/Resources$CompoundValue$1;-><init>()V

    sput-object v0, Lcom/android/aapt/Resources$CompoundValue;->PARSER:Lcom/google/protobuf/w1;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/w0;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/android/aapt/Resources$CompoundValue;->memoizedIsInitialized:B

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
    iput p1, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/android/aapt/Resources$CompoundValue;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$CompoundValue;-><init>(Lcom/google/protobuf/w0$b;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/aapt/Resources$CompoundValue;
    .locals 1

    sget-object v0, Lcom/android/aapt/Resources$CompoundValue;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$CompoundValue;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->m()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$CompoundValue;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$CompoundValue;

    invoke-virtual {v0}, Lcom/android/aapt/Resources$CompoundValue;->toBuilder()Lcom/android/aapt/Resources$CompoundValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/android/aapt/Resources$CompoundValue;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/aapt/Resources$CompoundValue;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$CompoundValue;

    invoke-virtual {v0}, Lcom/android/aapt/Resources$CompoundValue;->toBuilder()Lcom/android/aapt/Resources$CompoundValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->mergeFrom(Lcom/android/aapt/Resources$CompoundValue;)Lcom/android/aapt/Resources$CompoundValue$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/aapt/Resources$CompoundValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$CompoundValue;->PARSER:Lcom/google/protobuf/w1;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$CompoundValue;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$CompoundValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$CompoundValue;->PARSER:Lcom/google/protobuf/w1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$CompoundValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/C;)Lcom/android/aapt/Resources$CompoundValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/android/aapt/Resources$CompoundValue;->PARSER:Lcom/google/protobuf/w1;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$CompoundValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$CompoundValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/android/aapt/Resources$CompoundValue;->PARSER:Lcom/google/protobuf/w1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$CompoundValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/x;)Lcom/android/aapt/Resources$CompoundValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$CompoundValue;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$CompoundValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$CompoundValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/android/aapt/Resources$CompoundValue;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$CompoundValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/aapt/Resources$CompoundValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/android/aapt/Resources$CompoundValue;->PARSER:Lcom/google/protobuf/w1;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$CompoundValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$CompoundValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/android/aapt/Resources$CompoundValue;->PARSER:Lcom/google/protobuf/w1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$CompoundValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/aapt/Resources$CompoundValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$CompoundValue;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$CompoundValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$CompoundValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/android/aapt/Resources$CompoundValue;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$CompoundValue;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/aapt/Resources$CompoundValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/android/aapt/Resources$CompoundValue;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$CompoundValue;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/d0;)Lcom/android/aapt/Resources$CompoundValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/android/aapt/Resources$CompoundValue;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$CompoundValue;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$CompoundValue;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/aapt/Resources$CompoundValue;->PARSER:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public static bridge synthetic t6(Lcom/android/aapt/Resources$CompoundValue;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    return-void
.end method

.method public static bridge synthetic u6(Lcom/android/aapt/Resources$CompoundValue;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/aapt/Resources$CompoundValue;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/aapt/Resources$CompoundValue;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue;->getValueCase()Lcom/android/aapt/Resources$CompoundValue$ValueCase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$CompoundValue;->getValueCase()Lcom/android/aapt/Resources$CompoundValue$ValueCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue;->getMacro()Lcom/android/aapt/Resources$MacroBody;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$CompoundValue;->getMacro()Lcom/android/aapt/Resources$MacroBody;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/aapt/Resources$MacroBody;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue;->getPlural()Lcom/android/aapt/Resources$Plural;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$CompoundValue;->getPlural()Lcom/android/aapt/Resources$Plural;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/aapt/Resources$Plural;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue;->getArray()Lcom/android/aapt/Resources$Array;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$CompoundValue;->getArray()Lcom/android/aapt/Resources$Array;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/aapt/Resources$Array;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue;->getStyleable()Lcom/android/aapt/Resources$Styleable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$CompoundValue;->getStyleable()Lcom/android/aapt/Resources$Styleable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/aapt/Resources$Styleable;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue;->getStyle()Lcom/android/aapt/Resources$Style;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$CompoundValue;->getStyle()Lcom/android/aapt/Resources$Style;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/aapt/Resources$Style;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue;->getAttr()Lcom/android/aapt/Resources$Attribute;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$CompoundValue;->getAttr()Lcom/android/aapt/Resources$Attribute;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/aapt/Resources$Attribute;->equals(Ljava/lang/Object;)Z

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getArray()Lcom/android/aapt/Resources$Array;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Array;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Array;->getDefaultInstance()Lcom/android/aapt/Resources$Array;

    move-result-object v0

    return-object v0
.end method

.method public getArrayOrBuilder()Lcom/android/aapt/Resources$ArrayOrBuilder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Array;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Array;->getDefaultInstance()Lcom/android/aapt/Resources$Array;

    move-result-object v0

    return-object v0
.end method

.method public getAttr()Lcom/android/aapt/Resources$Attribute;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Attribute;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Attribute;->getDefaultInstance()Lcom/android/aapt/Resources$Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getAttrOrBuilder()Lcom/android/aapt/Resources$AttributeOrBuilder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Attribute;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Attribute;->getDefaultInstance()Lcom/android/aapt/Resources$Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$CompoundValue;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$CompoundValue;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$CompoundValue;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue;->getDefaultInstanceForType()Lcom/android/aapt/Resources$CompoundValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue;->getDefaultInstanceForType()Lcom/android/aapt/Resources$CompoundValue;

    move-result-object v0

    return-object v0
.end method

.method public getMacro()Lcom/android/aapt/Resources$MacroBody;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$MacroBody;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$MacroBody;->getDefaultInstance()Lcom/android/aapt/Resources$MacroBody;

    move-result-object v0

    return-object v0
.end method

.method public getMacroOrBuilder()Lcom/android/aapt/Resources$MacroBodyOrBuilder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$MacroBody;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$MacroBody;->getDefaultInstance()Lcom/android/aapt/Resources$MacroBody;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$CompoundValue;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/aapt/Resources$CompoundValue;->PARSER:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getPlural()Lcom/android/aapt/Resources$Plural;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Plural;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Plural;->getDefaultInstance()Lcom/android/aapt/Resources$Plural;

    move-result-object v0

    return-object v0
.end method

.method public getPluralOrBuilder()Lcom/android/aapt/Resources$PluralOrBuilder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Plural;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Plural;->getDefaultInstance()Lcom/android/aapt/Resources$Plural;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Attribute;

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v1, Lcom/android/aapt/Resources$Style;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v1, Lcom/android/aapt/Resources$Styleable;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v1, Lcom/android/aapt/Resources$Array;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v1, Lcom/android/aapt/Resources$Plural;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v1, Lcom/android/aapt/Resources$MacroBody;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getStyle()Lcom/android/aapt/Resources$Style;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Style;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Style;->getDefaultInstance()Lcom/android/aapt/Resources$Style;

    move-result-object v0

    return-object v0
.end method

.method public getStyleOrBuilder()Lcom/android/aapt/Resources$StyleOrBuilder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Style;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Style;->getDefaultInstance()Lcom/android/aapt/Resources$Style;

    move-result-object v0

    return-object v0
.end method

.method public getStyleable()Lcom/android/aapt/Resources$Styleable;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Styleable;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Styleable;->getDefaultInstance()Lcom/android/aapt/Resources$Styleable;

    move-result-object v0

    return-object v0
.end method

.method public getStyleableOrBuilder()Lcom/android/aapt/Resources$StyleableOrBuilder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Styleable;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Styleable;->getDefaultInstance()Lcom/android/aapt/Resources$Styleable;

    move-result-object v0

    return-object v0
.end method

.method public getValueCase()Lcom/android/aapt/Resources$CompoundValue$ValueCase;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    invoke-static {v0}, Lcom/android/aapt/Resources$CompoundValue$ValueCase;->forNumber(I)Lcom/android/aapt/Resources$CompoundValue$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public hasArray()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAttr()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMacro()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPlural()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStyle()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStyleable()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$CompoundValue;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue;->getMacro()Lcom/android/aapt/Resources$MacroBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$MacroBody;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    goto :goto_1

    :pswitch_1
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue;->getPlural()Lcom/android/aapt/Resources$Plural;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$Plural;->hashCode()I

    move-result v0

    goto :goto_0

    :pswitch_2
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue;->getArray()Lcom/android/aapt/Resources$Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$Array;->hashCode()I

    move-result v0

    goto :goto_0

    :pswitch_3
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue;->getStyleable()Lcom/android/aapt/Resources$Styleable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$Styleable;->hashCode()I

    move-result v0

    goto :goto_0

    :pswitch_4
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue;->getStyle()Lcom/android/aapt/Resources$Style;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$Style;->hashCode()I

    move-result v0

    goto :goto_0

    :pswitch_5
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue;->getAttr()Lcom/android/aapt/Resources$Attribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$Attribute;->hashCode()I

    move-result v0

    goto :goto_0

    :goto_1
    mul-int/lit8 v1, v1, 0x1d

    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/r2;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    invoke-static {}, Lcom/android/aapt/Resources;->n()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$CompoundValue;

    const-class v2, Lcom/android/aapt/Resources$CompoundValue$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/aapt/Resources$CompoundValue;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/aapt/Resources$CompoundValue;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/android/aapt/Resources$CompoundValue;->newBuilder()Lcom/android/aapt/Resources$CompoundValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/android/aapt/Resources$CompoundValue$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/aapt/Resources$CompoundValue$Builder;-><init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/o;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue;->newBuilderForType()Lcom/android/aapt/Resources$CompoundValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$CompoundValue;->newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/android/aapt/Resources$CompoundValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue;->newBuilderForType()Lcom/android/aapt/Resources$CompoundValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/w0$i;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/android/aapt/Resources$CompoundValue;

    invoke-direct {p1}, Lcom/android/aapt/Resources$CompoundValue;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$CompoundValue;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$CompoundValue;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/aapt/Resources$CompoundValue$Builder;

    invoke-direct {v0, v1}, Lcom/android/aapt/Resources$CompoundValue$Builder;-><init>(Lcom/android/aapt/o;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/aapt/Resources$CompoundValue$Builder;

    invoke-direct {v0, v1}, Lcom/android/aapt/Resources$CompoundValue$Builder;-><init>(Lcom/android/aapt/o;)V

    invoke-virtual {v0, p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->mergeFrom(Lcom/android/aapt/Resources$CompoundValue;)Lcom/android/aapt/Resources$CompoundValue$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue;->toBuilder()Lcom/android/aapt/Resources$CompoundValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue;->toBuilder()Lcom/android/aapt/Resources$CompoundValue$Builder;

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

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Attribute;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_0
    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Style;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_1
    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Styleable;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_2
    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Array;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_3
    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Plural;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_4
    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$MacroBody;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
