.class public final Lcom/android/aapt/Resources$XmlNode;
.super Lcom/google/protobuf/w0;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$XmlNodeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XmlNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/aapt/Resources$XmlNode$Builder;,
        Lcom/android/aapt/Resources$XmlNode$NodeCase;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/aapt/Resources$XmlNode;

.field public static final ELEMENT_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$XmlNode;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_FIELD_NUMBER:I = 0x3

.field public static final TEXT_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private nodeCase_:I

.field private node_:Ljava/lang/Object;

.field private source_:Lcom/android/aapt/Resources$SourcePosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/aapt/Resources$XmlNode;

    invoke-direct {v0}, Lcom/android/aapt/Resources$XmlNode;-><init>()V

    sput-object v0, Lcom/android/aapt/Resources$XmlNode;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$XmlNode;

    new-instance v0, Lcom/android/aapt/Resources$XmlNode$1;

    invoke-direct {v0}, Lcom/android/aapt/Resources$XmlNode$1;-><init>()V

    sput-object v0, Lcom/android/aapt/Resources$XmlNode;->PARSER:Lcom/google/protobuf/w1;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/w0;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/aapt/Resources$XmlNode;->nodeCase_:I

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/android/aapt/Resources$XmlNode;->memoizedIsInitialized:B

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
    iput p1, p0, Lcom/android/aapt/Resources$XmlNode;->nodeCase_:I

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/android/aapt/Resources$XmlNode;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/a1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$XmlNode;-><init>(Lcom/google/protobuf/w0$b;)V

    return-void
.end method

.method public static synthetic access$3600(Lcom/google/protobuf/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/x;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/aapt/Resources$XmlNode;
    .locals 1

    sget-object v0, Lcom/android/aapt/Resources$XmlNode;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$XmlNode;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->W0()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$XmlNode;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$XmlNode;

    invoke-virtual {v0}, Lcom/android/aapt/Resources$XmlNode;->toBuilder()Lcom/android/aapt/Resources$XmlNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/android/aapt/Resources$XmlNode;)Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/aapt/Resources$XmlNode;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$XmlNode;

    invoke-virtual {v0}, Lcom/android/aapt/Resources$XmlNode;->toBuilder()Lcom/android/aapt/Resources$XmlNode$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/aapt/Resources$XmlNode$Builder;->mergeFrom(Lcom/android/aapt/Resources$XmlNode;)Lcom/android/aapt/Resources$XmlNode$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/aapt/Resources$XmlNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$XmlNode;->PARSER:Lcom/google/protobuf/w1;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlNode;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$XmlNode;->PARSER:Lcom/google/protobuf/w1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlNode;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/C;)Lcom/android/aapt/Resources$XmlNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/android/aapt/Resources$XmlNode;->PARSER:Lcom/google/protobuf/w1;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlNode;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/android/aapt/Resources$XmlNode;->PARSER:Lcom/google/protobuf/w1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlNode;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/x;)Lcom/android/aapt/Resources$XmlNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$XmlNode;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlNode;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/android/aapt/Resources$XmlNode;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlNode;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/aapt/Resources$XmlNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/android/aapt/Resources$XmlNode;->PARSER:Lcom/google/protobuf/w1;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlNode;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/android/aapt/Resources$XmlNode;->PARSER:Lcom/google/protobuf/w1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlNode;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/aapt/Resources$XmlNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$XmlNode;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlNode;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/android/aapt/Resources$XmlNode;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlNode;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/aapt/Resources$XmlNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/android/aapt/Resources$XmlNode;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlNode;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/android/aapt/Resources$XmlNode;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlNode;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$XmlNode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/aapt/Resources$XmlNode;->PARSER:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public static bridge synthetic t6(Lcom/android/aapt/Resources$XmlNode;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/aapt/Resources$XmlNode;->node_:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic u6(Lcom/android/aapt/Resources$XmlNode;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/Resources$XmlNode;->nodeCase_:I

    return-void
.end method

.method public static bridge synthetic v6(Lcom/android/aapt/Resources$XmlNode;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlNode;->node_:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic w6(Lcom/android/aapt/Resources$XmlNode;Lcom/android/aapt/Resources$SourcePosition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlNode;->source_:Lcom/android/aapt/Resources$SourcePosition;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/aapt/Resources$XmlNode;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/aapt/Resources$XmlNode;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->hasSource()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlNode;->hasSource()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->getSource()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlNode;->getSource()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/aapt/Resources$SourcePosition;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->getNodeCase()Lcom/android/aapt/Resources$XmlNode$NodeCase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlNode;->getNodeCase()Lcom/android/aapt/Resources$XmlNode$NodeCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    :cond_4
    iget v1, p0, Lcom/android/aapt/Resources$XmlNode;->nodeCase_:I

    if-eq v1, v0, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlNode;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->getElement()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlNode;->getElement()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/aapt/Resources$XmlElement;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/r2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v3

    :cond_8
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$XmlNode;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$XmlNode;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$XmlNode;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->getDefaultInstanceForType()Lcom/android/aapt/Resources$XmlNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->getDefaultInstanceForType()Lcom/android/aapt/Resources$XmlNode;

    move-result-object v0

    return-object v0
.end method

.method public getElement()Lcom/android/aapt/Resources$XmlElement;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode;->nodeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode;->node_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$XmlElement;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$XmlElement;->getDefaultInstance()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public getElementOrBuilder()Lcom/android/aapt/Resources$XmlElementOrBuilder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode;->nodeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode;->node_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$XmlElement;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$XmlElement;->getDefaultInstance()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public getNodeCase()Lcom/android/aapt/Resources$XmlNode$NodeCase;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode;->nodeCase_:I

    invoke-static {v0}, Lcom/android/aapt/Resources$XmlNode$NodeCase;->forNumber(I)Lcom/android/aapt/Resources$XmlNode$NodeCase;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$XmlNode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/aapt/Resources$XmlNode;->PARSER:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/aapt/Resources$XmlNode;->nodeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode;->node_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$XmlElement;

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/aapt/Resources$XmlNode;->nodeCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/aapt/Resources$XmlNode;->node_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/android/aapt/Resources$XmlNode;->source_:Lcom/android/aapt/Resources$SourcePosition;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->getSource()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSource()Lcom/android/aapt/Resources$SourcePosition;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode;->source_:Lcom/android/aapt/Resources$SourcePosition;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$SourcePosition;->getDefaultInstance()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSourceOrBuilder()Lcom/android/aapt/Resources$SourcePositionOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode;->source_:Lcom/android/aapt/Resources$SourcePosition;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$SourcePosition;->getDefaultInstance()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode;->nodeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode;->node_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/aapt/Resources$XmlNode;->nodeCase_:I

    if-ne v2, v1, :cond_2

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlNode;->node_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getTextBytes()Lcom/google/protobuf/x;
    .locals 3

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode;->nodeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode;->node_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iget v2, p0, Lcom/android/aapt/Resources$XmlNode;->nodeCase_:I

    if-ne v2, v1, :cond_1

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlNode;->node_:Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public hasElement()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode;->nodeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasSource()Z
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode;->source_:Lcom/android/aapt/Resources$SourcePosition;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasText()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode;->nodeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$XmlNode;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->getSource()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$SourcePosition;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    iget v0, p0, Lcom/android/aapt/Resources$XmlNode;->nodeCase_:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    goto :goto_1

    :cond_3
    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->getElement()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$XmlElement;->hashCode()I

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
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/android/aapt/Resources;->X0()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$XmlNode;

    const-class v2, Lcom/android/aapt/Resources$XmlNode$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/aapt/Resources$XmlNode;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/aapt/Resources$XmlNode;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/android/aapt/Resources$XmlNode;->newBuilder()Lcom/android/aapt/Resources$XmlNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/android/aapt/Resources$XmlNode$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/aapt/Resources$XmlNode$Builder;-><init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/Z0;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->newBuilderForType()Lcom/android/aapt/Resources$XmlNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlNode;->newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/android/aapt/Resources$XmlNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->newBuilderForType()Lcom/android/aapt/Resources$XmlNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/w0$i;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/android/aapt/Resources$XmlNode;

    invoke-direct {p1}, Lcom/android/aapt/Resources$XmlNode;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$XmlNode;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$XmlNode;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/aapt/Resources$XmlNode$Builder;

    invoke-direct {v0, v1}, Lcom/android/aapt/Resources$XmlNode$Builder;-><init>(Lcom/android/aapt/Z0;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/aapt/Resources$XmlNode$Builder;

    invoke-direct {v0, v1}, Lcom/android/aapt/Resources$XmlNode$Builder;-><init>(Lcom/android/aapt/Z0;)V

    invoke-virtual {v0, p0}, Lcom/android/aapt/Resources$XmlNode$Builder;->mergeFrom(Lcom/android/aapt/Resources$XmlNode;)Lcom/android/aapt/Resources$XmlNode$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->toBuilder()Lcom/android/aapt/Resources$XmlNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->toBuilder()Lcom/android/aapt/Resources$XmlNode$Builder;

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

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode;->nodeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode;->node_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$XmlElement;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_0
    iget v0, p0, Lcom/android/aapt/Resources$XmlNode;->nodeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode;->node_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode;->source_:Lcom/android/aapt/Resources$SourcePosition;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->getSource()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
