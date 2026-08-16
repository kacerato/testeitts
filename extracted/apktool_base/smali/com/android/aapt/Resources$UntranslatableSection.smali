.class public final Lcom/android/aapt/Resources$UntranslatableSection;
.super Lcom/google/protobuf/w0;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$UntranslatableSectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UntranslatableSection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/aapt/Resources$UntranslatableSection$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/aapt/Resources$UntranslatableSection;

.field public static final END_INDEX_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$UntranslatableSection;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_INDEX_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private endIndex_:J

.field private memoizedIsInitialized:B

.field private startIndex_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/aapt/Resources$UntranslatableSection;

    invoke-direct {v0}, Lcom/android/aapt/Resources$UntranslatableSection;-><init>()V

    sput-object v0, Lcom/android/aapt/Resources$UntranslatableSection;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$UntranslatableSection;

    new-instance v0, Lcom/android/aapt/Resources$UntranslatableSection$1;

    invoke-direct {v0}, Lcom/android/aapt/Resources$UntranslatableSection$1;-><init>()V

    sput-object v0, Lcom/android/aapt/Resources$UntranslatableSection;->PARSER:Lcom/google/protobuf/w1;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/w0;-><init>()V

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/android/aapt/Resources$UntranslatableSection;->startIndex_:J

    .line 8
    iput-wide v0, p0, Lcom/android/aapt/Resources$UntranslatableSection;->endIndex_:J

    const/4 v0, -0x1

    .line 9
    iput-byte v0, p0, Lcom/android/aapt/Resources$UntranslatableSection;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/w0$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/w0$b<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0;-><init>(Lcom/google/protobuf/w0$b;)V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/android/aapt/Resources$UntranslatableSection;->startIndex_:J

    .line 4
    iput-wide v0, p0, Lcom/android/aapt/Resources$UntranslatableSection;->endIndex_:J

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lcom/android/aapt/Resources$UntranslatableSection;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/O0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$UntranslatableSection;-><init>(Lcom/google/protobuf/w0$b;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/aapt/Resources$UntranslatableSection;
    .locals 1

    sget-object v0, Lcom/android/aapt/Resources$UntranslatableSection;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$UntranslatableSection;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->K0()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/android/aapt/Resources$UntranslatableSection$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$UntranslatableSection;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$UntranslatableSection;

    invoke-virtual {v0}, Lcom/android/aapt/Resources$UntranslatableSection;->toBuilder()Lcom/android/aapt/Resources$UntranslatableSection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/android/aapt/Resources$UntranslatableSection;)Lcom/android/aapt/Resources$UntranslatableSection$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/aapt/Resources$UntranslatableSection;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$UntranslatableSection;

    invoke-virtual {v0}, Lcom/android/aapt/Resources$UntranslatableSection;->toBuilder()Lcom/android/aapt/Resources$UntranslatableSection$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/aapt/Resources$UntranslatableSection$Builder;->mergeFrom(Lcom/android/aapt/Resources$UntranslatableSection;)Lcom/android/aapt/Resources$UntranslatableSection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/aapt/Resources$UntranslatableSection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$UntranslatableSection;->PARSER:Lcom/google/protobuf/w1;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$UntranslatableSection;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$UntranslatableSection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$UntranslatableSection;->PARSER:Lcom/google/protobuf/w1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$UntranslatableSection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/C;)Lcom/android/aapt/Resources$UntranslatableSection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/android/aapt/Resources$UntranslatableSection;->PARSER:Lcom/google/protobuf/w1;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$UntranslatableSection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$UntranslatableSection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/android/aapt/Resources$UntranslatableSection;->PARSER:Lcom/google/protobuf/w1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$UntranslatableSection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/x;)Lcom/android/aapt/Resources$UntranslatableSection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$UntranslatableSection;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$UntranslatableSection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$UntranslatableSection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/android/aapt/Resources$UntranslatableSection;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$UntranslatableSection;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/aapt/Resources$UntranslatableSection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/android/aapt/Resources$UntranslatableSection;->PARSER:Lcom/google/protobuf/w1;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$UntranslatableSection;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$UntranslatableSection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/android/aapt/Resources$UntranslatableSection;->PARSER:Lcom/google/protobuf/w1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$UntranslatableSection;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/aapt/Resources$UntranslatableSection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$UntranslatableSection;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$UntranslatableSection;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$UntranslatableSection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/android/aapt/Resources$UntranslatableSection;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$UntranslatableSection;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/aapt/Resources$UntranslatableSection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/android/aapt/Resources$UntranslatableSection;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$UntranslatableSection;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/d0;)Lcom/android/aapt/Resources$UntranslatableSection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/android/aapt/Resources$UntranslatableSection;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$UntranslatableSection;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$UntranslatableSection;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/aapt/Resources$UntranslatableSection;->PARSER:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public static bridge synthetic t6(Lcom/android/aapt/Resources$UntranslatableSection;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/aapt/Resources$UntranslatableSection;->endIndex_:J

    return-void
.end method

.method public static bridge synthetic u6(Lcom/android/aapt/Resources$UntranslatableSection;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/aapt/Resources$UntranslatableSection;->startIndex_:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/aapt/Resources$UntranslatableSection;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/aapt/Resources$UntranslatableSection;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$UntranslatableSection;->getStartIndex()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$UntranslatableSection;->getStartIndex()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$UntranslatableSection;->getEndIndex()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/aapt/Resources$UntranslatableSection;->getEndIndex()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
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
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$UntranslatableSection;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$UntranslatableSection;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$UntranslatableSection;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$UntranslatableSection;->getDefaultInstanceForType()Lcom/android/aapt/Resources$UntranslatableSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$UntranslatableSection;->getDefaultInstanceForType()Lcom/android/aapt/Resources$UntranslatableSection;

    move-result-object v0

    return-object v0
.end method

.method public getEndIndex()J
    .locals 2

    iget-wide v0, p0, Lcom/android/aapt/Resources$UntranslatableSection;->endIndex_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$UntranslatableSection;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/aapt/Resources$UntranslatableSection;->PARSER:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-wide v0, p0, Lcom/android/aapt/Resources$UntranslatableSection;->startIndex_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    invoke-static {v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->a1(IJ)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-wide v4, p0, Lcom/android/aapt/Resources$UntranslatableSection;->endIndex_:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->a1(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getStartIndex()J
    .locals 2

    iget-wide v0, p0, Lcom/android/aapt/Resources$UntranslatableSection;->startIndex_:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$UntranslatableSection;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$UntranslatableSection;->getStartIndex()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/D0;->s(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$UntranslatableSection;->getEndIndex()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/D0;->s(J)I

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

    invoke-static {}, Lcom/android/aapt/Resources;->L0()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$UntranslatableSection;

    const-class v2, Lcom/android/aapt/Resources$UntranslatableSection$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/aapt/Resources$UntranslatableSection;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/aapt/Resources$UntranslatableSection;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/android/aapt/Resources$UntranslatableSection$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/android/aapt/Resources$UntranslatableSection;->newBuilder()Lcom/android/aapt/Resources$UntranslatableSection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/android/aapt/Resources$UntranslatableSection$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/android/aapt/Resources$UntranslatableSection$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/aapt/Resources$UntranslatableSection$Builder;-><init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/N0;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$UntranslatableSection;->newBuilderForType()Lcom/android/aapt/Resources$UntranslatableSection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$UntranslatableSection;->newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/android/aapt/Resources$UntranslatableSection$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$UntranslatableSection;->newBuilderForType()Lcom/android/aapt/Resources$UntranslatableSection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/w0$i;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/android/aapt/Resources$UntranslatableSection;

    invoke-direct {p1}, Lcom/android/aapt/Resources$UntranslatableSection;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/android/aapt/Resources$UntranslatableSection$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$UntranslatableSection;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$UntranslatableSection;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/aapt/Resources$UntranslatableSection$Builder;

    invoke-direct {v0, v1}, Lcom/android/aapt/Resources$UntranslatableSection$Builder;-><init>(Lcom/android/aapt/N0;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/aapt/Resources$UntranslatableSection$Builder;

    invoke-direct {v0, v1}, Lcom/android/aapt/Resources$UntranslatableSection$Builder;-><init>(Lcom/android/aapt/N0;)V

    invoke-virtual {v0, p0}, Lcom/android/aapt/Resources$UntranslatableSection$Builder;->mergeFrom(Lcom/android/aapt/Resources$UntranslatableSection;)Lcom/android/aapt/Resources$UntranslatableSection$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$UntranslatableSection;->toBuilder()Lcom/android/aapt/Resources$UntranslatableSection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$UntranslatableSection;->toBuilder()Lcom/android/aapt/Resources$UntranslatableSection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/aapt/Resources$UntranslatableSection;->startIndex_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->f(IJ)V

    :cond_0
    iget-wide v0, p0, Lcom/android/aapt/Resources$UntranslatableSection;->endIndex_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->f(IJ)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
