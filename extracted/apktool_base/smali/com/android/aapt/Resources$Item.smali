.class public final Lcom/android/aapt/Resources$Item;
.super Lcom/google/protobuf/w0;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$ItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/aapt/Resources$Item$Builder;,
        Lcom/android/aapt/Resources$Item$ValueCase;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/aapt/Resources$Item;

.field public static final FILE_FIELD_NUMBER:I = 0x5

.field public static final ID_FIELD_NUMBER:I = 0x6

.field private static final PARSER:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$Item;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIM_FIELD_NUMBER:I = 0x7

.field public static final RAW_STR_FIELD_NUMBER:I = 0x3

.field public static final REF_FIELD_NUMBER:I = 0x1

.field public static final STR_FIELD_NUMBER:I = 0x2

.field public static final STYLED_STR_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private valueCase_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/aapt/Resources$Item;

    invoke-direct {v0}, Lcom/android/aapt/Resources$Item;-><init>()V

    sput-object v0, Lcom/android/aapt/Resources$Item;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$Item;

    new-instance v0, Lcom/android/aapt/Resources$Item$1;

    invoke-direct {v0}, Lcom/android/aapt/Resources$Item$1;-><init>()V

    sput-object v0, Lcom/android/aapt/Resources$Item;->PARSER:Lcom/google/protobuf/w1;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/w0;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/android/aapt/Resources$Item;->memoizedIsInitialized:B

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
    iput p1, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/android/aapt/Resources$Item;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/D;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$Item;-><init>(Lcom/google/protobuf/w0$b;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/aapt/Resources$Item;
    .locals 1

    sget-object v0, Lcom/android/aapt/Resources$Item;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$Item;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->A()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/android/aapt/Resources$Item$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$Item;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$Item;

    invoke-virtual {v0}, Lcom/android/aapt/Resources$Item;->toBuilder()Lcom/android/aapt/Resources$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/android/aapt/Resources$Item;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/aapt/Resources$Item;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$Item;

    invoke-virtual {v0}, Lcom/android/aapt/Resources$Item;->toBuilder()Lcom/android/aapt/Resources$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/aapt/Resources$Item$Builder;->mergeFrom(Lcom/android/aapt/Resources$Item;)Lcom/android/aapt/Resources$Item$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/aapt/Resources$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$Item;->PARSER:Lcom/google/protobuf/w1;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Item;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$Item;->PARSER:Lcom/google/protobuf/w1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Item;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/C;)Lcom/android/aapt/Resources$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/android/aapt/Resources$Item;->PARSER:Lcom/google/protobuf/w1;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Item;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/android/aapt/Resources$Item;->PARSER:Lcom/google/protobuf/w1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Item;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/x;)Lcom/android/aapt/Resources$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$Item;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Item;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/android/aapt/Resources$Item;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Item;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/aapt/Resources$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/android/aapt/Resources$Item;->PARSER:Lcom/google/protobuf/w1;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Item;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/android/aapt/Resources$Item;->PARSER:Lcom/google/protobuf/w1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Item;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/aapt/Resources$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$Item;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Item;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/android/aapt/Resources$Item;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Item;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/aapt/Resources$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/android/aapt/Resources$Item;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Item;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/android/aapt/Resources$Item;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Item;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$Item;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/aapt/Resources$Item;->PARSER:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public static bridge synthetic t6(Lcom/android/aapt/Resources$Item;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    return-void
.end method

.method public static bridge synthetic u6(Lcom/android/aapt/Resources$Item;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/aapt/Resources$Item;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/aapt/Resources$Item;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item;->getValueCase()Lcom/android/aapt/Resources$Item$ValueCase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Item;->getValueCase()Lcom/android/aapt/Resources$Item$ValueCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item;->getPrim()Lcom/android/aapt/Resources$Primitive;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Item;->getPrim()Lcom/android/aapt/Resources$Primitive;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/aapt/Resources$Primitive;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item;->getId()Lcom/android/aapt/Resources$Id;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Item;->getId()Lcom/android/aapt/Resources$Id;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/aapt/Resources$Id;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item;->getFile()Lcom/android/aapt/Resources$FileReference;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Item;->getFile()Lcom/android/aapt/Resources$FileReference;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/aapt/Resources$FileReference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item;->getStyledStr()Lcom/android/aapt/Resources$StyledString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Item;->getStyledStr()Lcom/android/aapt/Resources$StyledString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/aapt/Resources$StyledString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item;->getRawStr()Lcom/android/aapt/Resources$RawString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Item;->getRawStr()Lcom/android/aapt/Resources$RawString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/aapt/Resources$RawString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item;->getStr()Lcom/android/aapt/Resources$String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Item;->getStr()Lcom/android/aapt/Resources$String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/aapt/Resources$String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item;->getRef()Lcom/android/aapt/Resources$Reference;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Item;->getRef()Lcom/android/aapt/Resources$Reference;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/aapt/Resources$Reference;->equals(Ljava/lang/Object;)Z

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
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$Item;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$Item;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$Item;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item;->getDefaultInstanceForType()Lcom/android/aapt/Resources$Item;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item;->getDefaultInstanceForType()Lcom/android/aapt/Resources$Item;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Lcom/android/aapt/Resources$FileReference;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$FileReference;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$FileReference;->getDefaultInstance()Lcom/android/aapt/Resources$FileReference;

    move-result-object v0

    return-object v0
.end method

.method public getFileOrBuilder()Lcom/android/aapt/Resources$FileReferenceOrBuilder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$FileReference;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$FileReference;->getDefaultInstance()Lcom/android/aapt/Resources$FileReference;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/android/aapt/Resources$Id;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Id;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Id;->getDefaultInstance()Lcom/android/aapt/Resources$Id;

    move-result-object v0

    return-object v0
.end method

.method public getIdOrBuilder()Lcom/android/aapt/Resources$IdOrBuilder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Id;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Id;->getDefaultInstance()Lcom/android/aapt/Resources$Id;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$Item;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/aapt/Resources$Item;->PARSER:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getPrim()Lcom/android/aapt/Resources$Primitive;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Primitive;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Primitive;->getDefaultInstance()Lcom/android/aapt/Resources$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getPrimOrBuilder()Lcom/android/aapt/Resources$PrimitiveOrBuilder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Primitive;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Primitive;->getDefaultInstance()Lcom/android/aapt/Resources$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getRawStr()Lcom/android/aapt/Resources$RawString;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$RawString;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$RawString;->getDefaultInstance()Lcom/android/aapt/Resources$RawString;

    move-result-object v0

    return-object v0
.end method

.method public getRawStrOrBuilder()Lcom/android/aapt/Resources$RawStringOrBuilder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$RawString;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$RawString;->getDefaultInstance()Lcom/android/aapt/Resources$RawString;

    move-result-object v0

    return-object v0
.end method

.method public getRef()Lcom/android/aapt/Resources$Reference;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Reference;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Reference;->getDefaultInstance()Lcom/android/aapt/Resources$Reference;

    move-result-object v0

    return-object v0
.end method

.method public getRefOrBuilder()Lcom/android/aapt/Resources$ReferenceOrBuilder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Reference;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Reference;->getDefaultInstance()Lcom/android/aapt/Resources$Reference;

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
    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Reference;

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v1, Lcom/android/aapt/Resources$String;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v1, Lcom/android/aapt/Resources$RawString;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v1, Lcom/android/aapt/Resources$StyledString;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v1, Lcom/android/aapt/Resources$FileReference;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v1, Lcom/android/aapt/Resources$Id;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v1, Lcom/android/aapt/Resources$Primitive;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getStr()Lcom/android/aapt/Resources$String;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$String;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$String;->getDefaultInstance()Lcom/android/aapt/Resources$String;

    move-result-object v0

    return-object v0
.end method

.method public getStrOrBuilder()Lcom/android/aapt/Resources$StringOrBuilder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$String;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$String;->getDefaultInstance()Lcom/android/aapt/Resources$String;

    move-result-object v0

    return-object v0
.end method

.method public getStyledStr()Lcom/android/aapt/Resources$StyledString;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$StyledString;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$StyledString;->getDefaultInstance()Lcom/android/aapt/Resources$StyledString;

    move-result-object v0

    return-object v0
.end method

.method public getStyledStrOrBuilder()Lcom/android/aapt/Resources$StyledStringOrBuilder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$StyledString;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$StyledString;->getDefaultInstance()Lcom/android/aapt/Resources$StyledString;

    move-result-object v0

    return-object v0
.end method

.method public getValueCase()Lcom/android/aapt/Resources$Item$ValueCase;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    invoke-static {v0}, Lcom/android/aapt/Resources$Item$ValueCase;->forNumber(I)Lcom/android/aapt/Resources$Item$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public hasFile()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasId()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrim()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRawStr()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRef()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasStr()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStyledStr()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x4

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
    invoke-static {}, Lcom/android/aapt/Resources$Item;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item;->getPrim()Lcom/android/aapt/Resources$Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$Primitive;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    goto :goto_1

    :pswitch_1
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item;->getId()Lcom/android/aapt/Resources$Id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$Id;->hashCode()I

    move-result v0

    goto :goto_0

    :pswitch_2
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item;->getFile()Lcom/android/aapt/Resources$FileReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$FileReference;->hashCode()I

    move-result v0

    goto :goto_0

    :pswitch_3
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item;->getStyledStr()Lcom/android/aapt/Resources$StyledString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$StyledString;->hashCode()I

    move-result v0

    goto :goto_0

    :pswitch_4
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item;->getRawStr()Lcom/android/aapt/Resources$RawString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$RawString;->hashCode()I

    move-result v0

    goto :goto_0

    :pswitch_5
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item;->getStr()Lcom/android/aapt/Resources$String;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$String;->hashCode()I

    move-result v0

    goto :goto_0

    :pswitch_6
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item;->getRef()Lcom/android/aapt/Resources$Reference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$Reference;->hashCode()I

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

    :pswitch_data_0
    .packed-switch 0x1
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

    invoke-static {}, Lcom/android/aapt/Resources;->B()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$Item;

    const-class v2, Lcom/android/aapt/Resources$Item$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/aapt/Resources$Item;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/aapt/Resources$Item;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/android/aapt/Resources$Item$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/android/aapt/Resources$Item;->newBuilder()Lcom/android/aapt/Resources$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/android/aapt/Resources$Item$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/aapt/Resources$Item$Builder;-><init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/C;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item;->newBuilderForType()Lcom/android/aapt/Resources$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Item;->newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/android/aapt/Resources$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item;->newBuilderForType()Lcom/android/aapt/Resources$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/w0$i;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/android/aapt/Resources$Item;

    invoke-direct {p1}, Lcom/android/aapt/Resources$Item;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/android/aapt/Resources$Item$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$Item;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$Item;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/aapt/Resources$Item$Builder;

    invoke-direct {v0, v1}, Lcom/android/aapt/Resources$Item$Builder;-><init>(Lcom/android/aapt/C;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/aapt/Resources$Item$Builder;

    invoke-direct {v0, v1}, Lcom/android/aapt/Resources$Item$Builder;-><init>(Lcom/android/aapt/C;)V

    invoke-virtual {v0, p0}, Lcom/android/aapt/Resources$Item$Builder;->mergeFrom(Lcom/android/aapt/Resources$Item;)Lcom/android/aapt/Resources$Item$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item;->toBuilder()Lcom/android/aapt/Resources$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item;->toBuilder()Lcom/android/aapt/Resources$Item$Builder;

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

    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Reference;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_0
    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$String;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_1
    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$RawString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_2
    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$StyledString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_3
    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$FileReference;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_4
    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Id;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_5
    iget v0, p0, Lcom/android/aapt/Resources$Item;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/aapt/Resources$Item;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Primitive;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
