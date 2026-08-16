.class public final Lcom/android/aapt/Resources$Visibility;
.super Lcom/google/protobuf/w0;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$VisibilityOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Visibility"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/aapt/Resources$Visibility$Builder;,
        Lcom/android/aapt/Resources$Visibility$Level;
    }
.end annotation


# static fields
.field public static final COMMENT_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/android/aapt/Resources$Visibility;

.field public static final LEVEL_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$Visibility;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_FIELD_NUMBER:I = 0x2

.field public static final STAGED_API_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private volatile comment_:Ljava/lang/Object;

.field private level_:I

.field private memoizedIsInitialized:B

.field private source_:Lcom/android/aapt/Resources$Source;

.field private stagedApi_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/aapt/Resources$Visibility;

    invoke-direct {v0}, Lcom/android/aapt/Resources$Visibility;-><init>()V

    sput-object v0, Lcom/android/aapt/Resources$Visibility;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$Visibility;

    new-instance v0, Lcom/android/aapt/Resources$Visibility$1;

    invoke-direct {v0}, Lcom/android/aapt/Resources$Visibility$1;-><init>()V

    sput-object v0, Lcom/android/aapt/Resources$Visibility;->PARSER:Lcom/google/protobuf/w1;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/w0;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/aapt/Resources$Visibility;->level_:I

    .line 9
    const-string v1, ""

    iput-object v1, p0, Lcom/android/aapt/Resources$Visibility;->comment_:Ljava/lang/Object;

    .line 10
    iput-boolean v0, p0, Lcom/android/aapt/Resources$Visibility;->stagedApi_:Z

    const/4 v2, -0x1

    .line 11
    iput-byte v2, p0, Lcom/android/aapt/Resources$Visibility;->memoizedIsInitialized:B

    .line 12
    iput v0, p0, Lcom/android/aapt/Resources$Visibility;->level_:I

    .line 13
    iput-object v1, p0, Lcom/android/aapt/Resources$Visibility;->comment_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/w0$b;)V
    .locals 1
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
    iput p1, p0, Lcom/android/aapt/Resources$Visibility;->level_:I

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/android/aapt/Resources$Visibility;->comment_:Ljava/lang/Object;

    .line 5
    iput-boolean p1, p0, Lcom/android/aapt/Resources$Visibility;->stagedApi_:Z

    const/4 p1, -0x1

    .line 6
    iput-byte p1, p0, Lcom/android/aapt/Resources$Visibility;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/S0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$Visibility;-><init>(Lcom/google/protobuf/w0$b;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/google/protobuf/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/x;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/aapt/Resources$Visibility;
    .locals 1

    sget-object v0, Lcom/android/aapt/Resources$Visibility;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$Visibility;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->O0()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$Visibility;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$Visibility;

    invoke-virtual {v0}, Lcom/android/aapt/Resources$Visibility;->toBuilder()Lcom/android/aapt/Resources$Visibility$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/android/aapt/Resources$Visibility;)Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/aapt/Resources$Visibility;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$Visibility;

    invoke-virtual {v0}, Lcom/android/aapt/Resources$Visibility;->toBuilder()Lcom/android/aapt/Resources$Visibility$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/aapt/Resources$Visibility$Builder;->mergeFrom(Lcom/android/aapt/Resources$Visibility;)Lcom/android/aapt/Resources$Visibility$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/aapt/Resources$Visibility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$Visibility;->PARSER:Lcom/google/protobuf/w1;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Visibility;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Visibility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$Visibility;->PARSER:Lcom/google/protobuf/w1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Visibility;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/C;)Lcom/android/aapt/Resources$Visibility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/android/aapt/Resources$Visibility;->PARSER:Lcom/google/protobuf/w1;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Visibility;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Visibility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/android/aapt/Resources$Visibility;->PARSER:Lcom/google/protobuf/w1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Visibility;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/x;)Lcom/android/aapt/Resources$Visibility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$Visibility;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Visibility;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Visibility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/android/aapt/Resources$Visibility;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Visibility;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/aapt/Resources$Visibility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/android/aapt/Resources$Visibility;->PARSER:Lcom/google/protobuf/w1;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Visibility;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Visibility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/android/aapt/Resources$Visibility;->PARSER:Lcom/google/protobuf/w1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Visibility;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/aapt/Resources$Visibility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$Visibility;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Visibility;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Visibility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/android/aapt/Resources$Visibility;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Visibility;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/aapt/Resources$Visibility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/android/aapt/Resources$Visibility;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Visibility;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Visibility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/android/aapt/Resources$Visibility;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Visibility;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$Visibility;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/aapt/Resources$Visibility;->PARSER:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public static bridge synthetic t6(Lcom/android/aapt/Resources$Visibility;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/aapt/Resources$Visibility;->comment_:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic u6(Lcom/android/aapt/Resources$Visibility;)I
    .locals 0

    iget p0, p0, Lcom/android/aapt/Resources$Visibility;->level_:I

    return p0
.end method

.method public static bridge synthetic v6(Lcom/android/aapt/Resources$Visibility;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/aapt/Resources$Visibility;->comment_:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic w6(Lcom/android/aapt/Resources$Visibility;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/Resources$Visibility;->level_:I

    return-void
.end method

.method public static bridge synthetic x6(Lcom/android/aapt/Resources$Visibility;Lcom/android/aapt/Resources$Source;)V
    .locals 0

    iput-object p1, p0, Lcom/android/aapt/Resources$Visibility;->source_:Lcom/android/aapt/Resources$Source;

    return-void
.end method

.method public static bridge synthetic y6(Lcom/android/aapt/Resources$Visibility;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/aapt/Resources$Visibility;->stagedApi_:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/aapt/Resources$Visibility;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/aapt/Resources$Visibility;

    iget v1, p0, Lcom/android/aapt/Resources$Visibility;->level_:I

    iget v2, p1, Lcom/android/aapt/Resources$Visibility;->level_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility;->hasSource()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Visibility;->hasSource()Z

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility;->getSource()Lcom/android/aapt/Resources$Source;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Visibility;->getSource()Lcom/android/aapt/Resources$Source;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/aapt/Resources$Source;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Visibility;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility;->getStagedApi()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Visibility;->getStagedApi()Z

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

    iget-object v0, p0, Lcom/android/aapt/Resources$Visibility;->comment_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Visibility;->comment_:Ljava/lang/Object;

    return-object v0
.end method

.method public getCommentBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$Visibility;->comment_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Visibility;->comment_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$Visibility;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$Visibility;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$Visibility;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility;->getDefaultInstanceForType()Lcom/android/aapt/Resources$Visibility;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility;->getDefaultInstanceForType()Lcom/android/aapt/Resources$Visibility;

    move-result-object v0

    return-object v0
.end method

.method public getLevel()Lcom/android/aapt/Resources$Visibility$Level;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Visibility;->level_:I

    invoke-static {v0}, Lcom/android/aapt/Resources$Visibility$Level;->forNumber(I)Lcom/android/aapt/Resources$Visibility$Level;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/Resources$Visibility$Level;->UNRECOGNIZED:Lcom/android/aapt/Resources$Visibility$Level;

    :cond_0
    return-object v0
.end method

.method public getLevelValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Visibility;->level_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$Visibility;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/aapt/Resources$Visibility;->PARSER:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/aapt/Resources$Visibility;->level_:I

    sget-object v1, Lcom/android/aapt/Resources$Visibility$Level;->UNKNOWN:Lcom/android/aapt/Resources$Visibility$Level;

    invoke-virtual {v1}, Lcom/android/aapt/Resources$Visibility$Level;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/aapt/Resources$Visibility;->level_:I

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/aapt/Resources$Visibility;->source_:Lcom/android/aapt/Resources$Source;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility;->getSource()Lcom/android/aapt/Resources$Source;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/android/aapt/Resources$Visibility;->comment_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/w0;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/aapt/Resources$Visibility;->comment_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/android/aapt/Resources$Visibility;->stagedApi_:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
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

    iget-object v0, p0, Lcom/android/aapt/Resources$Visibility;->source_:Lcom/android/aapt/Resources$Source;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Source;->getDefaultInstance()Lcom/android/aapt/Resources$Source;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSourceOrBuilder()Lcom/android/aapt/Resources$SourceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Visibility;->source_:Lcom/android/aapt/Resources$Source;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Source;->getDefaultInstance()Lcom/android/aapt/Resources$Source;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStagedApi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/aapt/Resources$Visibility;->stagedApi_:Z

    return v0
.end method

.method public hasSource()Z
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Visibility;->source_:Lcom/android/aapt/Resources$Source;

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
    invoke-static {}, Lcom/android/aapt/Resources$Visibility;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/android/aapt/Resources$Visibility;->level_:I

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility;->getSource()Lcom/android/aapt/Resources$Source;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$Source;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility;->getStagedApi()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

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

    invoke-static {}, Lcom/android/aapt/Resources;->P0()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$Visibility;

    const-class v2, Lcom/android/aapt/Resources$Visibility$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/aapt/Resources$Visibility;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/aapt/Resources$Visibility;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/android/aapt/Resources$Visibility;->newBuilder()Lcom/android/aapt/Resources$Visibility$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/android/aapt/Resources$Visibility$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/aapt/Resources$Visibility$Builder;-><init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/R0;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility;->newBuilderForType()Lcom/android/aapt/Resources$Visibility$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Visibility;->newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/android/aapt/Resources$Visibility$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility;->newBuilderForType()Lcom/android/aapt/Resources$Visibility$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/w0$i;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/android/aapt/Resources$Visibility;

    invoke-direct {p1}, Lcom/android/aapt/Resources$Visibility;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$Visibility;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$Visibility;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/aapt/Resources$Visibility$Builder;

    invoke-direct {v0, v1}, Lcom/android/aapt/Resources$Visibility$Builder;-><init>(Lcom/android/aapt/R0;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/aapt/Resources$Visibility$Builder;

    invoke-direct {v0, v1}, Lcom/android/aapt/Resources$Visibility$Builder;-><init>(Lcom/android/aapt/R0;)V

    invoke-virtual {v0, p0}, Lcom/android/aapt/Resources$Visibility$Builder;->mergeFrom(Lcom/android/aapt/Resources$Visibility;)Lcom/android/aapt/Resources$Visibility$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility;->toBuilder()Lcom/android/aapt/Resources$Visibility$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility;->toBuilder()Lcom/android/aapt/Resources$Visibility$Builder;

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

    iget v0, p0, Lcom/android/aapt/Resources$Visibility;->level_:I

    sget-object v1, Lcom/android/aapt/Resources$Visibility$Level;->UNKNOWN:Lcom/android/aapt/Resources$Visibility$Level;

    invoke-virtual {v1}, Lcom/android/aapt/Resources$Visibility$Level;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/aapt/Resources$Visibility;->level_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$Visibility;->source_:Lcom/android/aapt/Resources$Source;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility;->getSource()Lcom/android/aapt/Resources$Source;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_1
    iget-object v0, p0, Lcom/android/aapt/Resources$Visibility;->comment_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/w0;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/aapt/Resources$Visibility;->comment_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/aapt/Resources$Visibility;->stagedApi_:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
