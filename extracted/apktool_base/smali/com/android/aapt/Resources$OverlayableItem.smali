.class public final Lcom/android/aapt/Resources$OverlayableItem;
.super Lcom/google/protobuf/w0;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$OverlayableItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OverlayableItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/aapt/Resources$OverlayableItem$Builder;,
        Lcom/android/aapt/Resources$OverlayableItem$Policy;
    }
.end annotation


# static fields
.field public static final COMMENT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/android/aapt/Resources$OverlayableItem;

.field public static final OVERLAYABLE_IDX_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$OverlayableItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final POLICY_FIELD_NUMBER:I = 0x3

.field public static final SOURCE_FIELD_NUMBER:I = 0x1

.field private static final policy_converter_:Lcom/google/protobuf/D0$h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/D0$h$a<",
            "Ljava/lang/Integer;",
            "Lcom/android/aapt/Resources$OverlayableItem$Policy;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private volatile comment_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private overlayableIdx_:I

.field private policyMemoizedSerializedSize:I

.field private policy_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private source_:Lcom/android/aapt/Resources$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/aapt/Resources$OverlayableItem$1;

    invoke-direct {v0}, Lcom/android/aapt/Resources$OverlayableItem$1;-><init>()V

    sput-object v0, Lcom/android/aapt/Resources$OverlayableItem;->policy_converter_:Lcom/google/protobuf/D0$h$a;

    new-instance v0, Lcom/android/aapt/Resources$OverlayableItem;

    invoke-direct {v0}, Lcom/android/aapt/Resources$OverlayableItem;-><init>()V

    sput-object v0, Lcom/android/aapt/Resources$OverlayableItem;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$OverlayableItem;

    new-instance v0, Lcom/android/aapt/Resources$OverlayableItem$2;

    invoke-direct {v0}, Lcom/android/aapt/Resources$OverlayableItem$2;-><init>()V

    sput-object v0, Lcom/android/aapt/Resources$OverlayableItem;->PARSER:Lcom/google/protobuf/w1;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/w0;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem;->comment_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/android/aapt/Resources$OverlayableItem;->overlayableIdx_:I

    const/4 v1, -0x1

    .line 9
    iput-byte v1, p0, Lcom/android/aapt/Resources$OverlayableItem;->memoizedIsInitialized:B

    .line 10
    iput-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem;->comment_:Ljava/lang/Object;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem;->policy_:Ljava/util/List;

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

    .line 3
    const-string p1, ""

    iput-object p1, p0, Lcom/android/aapt/Resources$OverlayableItem;->comment_:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/android/aapt/Resources$OverlayableItem;->overlayableIdx_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lcom/android/aapt/Resources$OverlayableItem;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/L;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$OverlayableItem;-><init>(Lcom/google/protobuf/w0$b;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/google/protobuf/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/x;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/aapt/Resources$OverlayableItem;
    .locals 1

    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$OverlayableItem;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->G()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$OverlayableItem;

    invoke-virtual {v0}, Lcom/android/aapt/Resources$OverlayableItem;->toBuilder()Lcom/android/aapt/Resources$OverlayableItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/android/aapt/Resources$OverlayableItem;)Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$OverlayableItem;

    invoke-virtual {v0}, Lcom/android/aapt/Resources$OverlayableItem;->toBuilder()Lcom/android/aapt/Resources$OverlayableItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->mergeFrom(Lcom/android/aapt/Resources$OverlayableItem;)Lcom/android/aapt/Resources$OverlayableItem$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/aapt/Resources$OverlayableItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem;->PARSER:Lcom/google/protobuf/w1;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$OverlayableItem;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$OverlayableItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem;->PARSER:Lcom/google/protobuf/w1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$OverlayableItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/C;)Lcom/android/aapt/Resources$OverlayableItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem;->PARSER:Lcom/google/protobuf/w1;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$OverlayableItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$OverlayableItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem;->PARSER:Lcom/google/protobuf/w1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$OverlayableItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/x;)Lcom/android/aapt/Resources$OverlayableItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$OverlayableItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$OverlayableItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$OverlayableItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/aapt/Resources$OverlayableItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem;->PARSER:Lcom/google/protobuf/w1;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$OverlayableItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$OverlayableItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem;->PARSER:Lcom/google/protobuf/w1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$OverlayableItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/aapt/Resources$OverlayableItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$OverlayableItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$OverlayableItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$OverlayableItem;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/aapt/Resources$OverlayableItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$OverlayableItem;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/d0;)Lcom/android/aapt/Resources$OverlayableItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$OverlayableItem;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$OverlayableItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem;->PARSER:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public static bridge synthetic t6(Lcom/android/aapt/Resources$OverlayableItem;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/aapt/Resources$OverlayableItem;->comment_:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic u6(Lcom/android/aapt/Resources$OverlayableItem;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/aapt/Resources$OverlayableItem;->policy_:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic v6(Lcom/android/aapt/Resources$OverlayableItem;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/aapt/Resources$OverlayableItem;->comment_:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic w6(Lcom/android/aapt/Resources$OverlayableItem;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/Resources$OverlayableItem;->overlayableIdx_:I

    return-void
.end method

.method public static bridge synthetic x6(Lcom/android/aapt/Resources$OverlayableItem;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/aapt/Resources$OverlayableItem;->policy_:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic y6(Lcom/android/aapt/Resources$OverlayableItem;Lcom/android/aapt/Resources$Source;)V
    .locals 0

    iput-object p1, p0, Lcom/android/aapt/Resources$OverlayableItem;->source_:Lcom/android/aapt/Resources$Source;

    return-void
.end method

.method public static bridge synthetic z6()Lcom/google/protobuf/D0$h$a;
    .locals 1

    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem;->policy_converter_:Lcom/google/protobuf/D0$h$a;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/aapt/Resources$OverlayableItem;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/aapt/Resources$OverlayableItem;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem;->hasSource()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$OverlayableItem;->hasSource()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem;->getSource()Lcom/android/aapt/Resources$Source;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$OverlayableItem;->getSource()Lcom/android/aapt/Resources$Source;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/aapt/Resources$Source;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$OverlayableItem;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    :cond_4
    iget-object v1, p0, Lcom/android/aapt/Resources$OverlayableItem;->policy_:Ljava/util/List;

    iget-object v2, p1, Lcom/android/aapt/Resources$OverlayableItem;->policy_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem;->getOverlayableIdx()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$OverlayableItem;->getOverlayableIdx()I

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/r2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem;->comment_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem;->comment_:Ljava/lang/Object;

    return-object v0
.end method

.method public getCommentBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem;->comment_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem;->comment_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$OverlayableItem;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$OverlayableItem;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem;->getDefaultInstanceForType()Lcom/android/aapt/Resources$OverlayableItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem;->getDefaultInstanceForType()Lcom/android/aapt/Resources$OverlayableItem;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayableIdx()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$OverlayableItem;->overlayableIdx_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$OverlayableItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem;->PARSER:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getPolicy(I)Lcom/android/aapt/Resources$OverlayableItem$Policy;
    .locals 2

    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem;->policy_converter_:Lcom/google/protobuf/D0$h$a;

    iget-object v1, p0, Lcom/android/aapt/Resources$OverlayableItem;->policy_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {v0, p1}, Lcom/google/protobuf/D0$h$a;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$OverlayableItem$Policy;

    return-object p1
.end method

.method public getPolicyCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem;->policy_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPolicyList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$OverlayableItem$Policy;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/D0$h;

    iget-object v1, p0, Lcom/android/aapt/Resources$OverlayableItem;->policy_:Ljava/util/List;

    sget-object v2, Lcom/android/aapt/Resources$OverlayableItem;->policy_converter_:Lcom/google/protobuf/D0$h$a;

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/D0$h;-><init>(Ljava/util/List;Lcom/google/protobuf/D0$h$a;)V

    return-object v0
.end method

.method public getPolicyValue(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem;->policy_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getPolicyValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem;->policy_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem;->source_:Lcom/android/aapt/Resources$Source;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem;->getSource()Lcom/android/aapt/Resources$Source;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/aapt/Resources$OverlayableItem;->comment_:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/protobuf/w0;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/aapt/Resources$OverlayableItem;->comment_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/android/aapt/Resources$OverlayableItem;->policy_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/aapt/Resources$OverlayableItem;->policy_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->l0(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem;->getPolicyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iput v2, p0, Lcom/android/aapt/Resources$OverlayableItem;->policyMemoizedSerializedSize:I

    iget v1, p0, Lcom/android/aapt/Resources$OverlayableItem;->overlayableIdx_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSource()Lcom/android/aapt/Resources$Source;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem;->source_:Lcom/android/aapt/Resources$Source;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Source;->getDefaultInstance()Lcom/android/aapt/Resources$Source;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSourceOrBuilder()Lcom/android/aapt/Resources$SourceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem;->source_:Lcom/android/aapt/Resources$Source;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Source;->getDefaultInstance()Lcom/android/aapt/Resources$Source;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasSource()Z
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem;->source_:Lcom/android/aapt/Resources$Source;

    if-eqz v0, :cond_0

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
    invoke-static {}, Lcom/android/aapt/Resources$OverlayableItem;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem;->getSource()Lcom/android/aapt/Resources$Source;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$Source;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem;->getPolicyCount()I

    move-result v0

    if-lez v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem;->policy_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem;->getOverlayableIdx()I

    move-result v0

    add-int/2addr v1, v0

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

    invoke-static {}, Lcom/android/aapt/Resources;->H()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$OverlayableItem;

    const-class v2, Lcom/android/aapt/Resources$OverlayableItem$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/aapt/Resources$OverlayableItem;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/aapt/Resources$OverlayableItem;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/android/aapt/Resources$OverlayableItem;->newBuilder()Lcom/android/aapt/Resources$OverlayableItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/android/aapt/Resources$OverlayableItem$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/aapt/Resources$OverlayableItem$Builder;-><init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/K;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem;->newBuilderForType()Lcom/android/aapt/Resources$OverlayableItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$OverlayableItem;->newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/android/aapt/Resources$OverlayableItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem;->newBuilderForType()Lcom/android/aapt/Resources$OverlayableItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/w0$i;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/android/aapt/Resources$OverlayableItem;

    invoke-direct {p1}, Lcom/android/aapt/Resources$OverlayableItem;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$OverlayableItem;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/aapt/Resources$OverlayableItem$Builder;

    invoke-direct {v0, v1}, Lcom/android/aapt/Resources$OverlayableItem$Builder;-><init>(Lcom/android/aapt/K;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/aapt/Resources$OverlayableItem$Builder;

    invoke-direct {v0, v1}, Lcom/android/aapt/Resources$OverlayableItem$Builder;-><init>(Lcom/android/aapt/K;)V

    invoke-virtual {v0, p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->mergeFrom(Lcom/android/aapt/Resources$OverlayableItem;)Lcom/android/aapt/Resources$OverlayableItem$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem;->toBuilder()Lcom/android/aapt/Resources$OverlayableItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem;->toBuilder()Lcom/android/aapt/Resources$OverlayableItem$Builder;

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

    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem;->getSerializedSize()I

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem;->source_:Lcom/android/aapt/Resources$Source;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem;->getSource()Lcom/android/aapt/Resources$Source;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem;->comment_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/w0;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/aapt/Resources$OverlayableItem;->comment_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem;->getPolicyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->h2(I)V

    iget v0, p0, Lcom/android/aapt/Resources$OverlayableItem;->policyMemoizedSerializedSize:I

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->h2(I)V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/aapt/Resources$OverlayableItem;->policy_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/aapt/Resources$OverlayableItem;->policy_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->B1(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/aapt/Resources$OverlayableItem;->overlayableIdx_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->m(II)V

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
