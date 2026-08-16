.class public final Lb/a$a$c;
.super Lcom/google/protobuf/w0;
.source "SourceFile"

# interfaces
.implements Lb/a$a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a$a$c$b;
    }
.end annotation


# static fields
.field public static final e:J = 0x0L

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:Lb/a$a$c;

.field public static final i:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lb/a$a$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public volatile b:Ljava/lang/Object;

.field public c:Lcom/android/aapt/Resources$SourcePosition;

.field public d:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a$a$c;

    invoke-direct {v0}, Lb/a$a$c;-><init>()V

    sput-object v0, Lb/a$a$c;->h:Lb/a$a$c;

    new-instance v0, Lb/a$a$c$a;

    invoke-direct {v0}, Lb/a$a$c$a;-><init>()V

    sput-object v0, Lb/a$a$c;->i:Lcom/google/protobuf/w1;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/w0;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lb/a$a$c;->b:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 7
    iput-byte v1, p0, Lb/a$a$c;->d:B

    .line 8
    iput-object v0, p0, Lb/a$a$c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/w0$b;)V
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

    iput-object p1, p0, Lb/a$a$c;->b:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lb/a$a$c;->d:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$b;Lb/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/a$a$c;-><init>(Lcom/google/protobuf/w0$b;)V

    return-void
.end method

.method public static C6(Ljava/io/InputStream;)Lb/a$a$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lb/a$a$c;->i:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lb/a$a$c;

    return-object p0
.end method

.method public static D6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lb/a$a$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lb/a$a$c;->i:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lb/a$a$c;

    return-object p0
.end method

.method public static E6(Lcom/google/protobuf/x;)Lb/a$a$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lb/a$a$c;->i:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/a$a$c;

    return-object p0
.end method

.method public static F6(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lb/a$a$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lb/a$a$c;->i:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/a$a$c;

    return-object p0
.end method

.method public static G6(Lcom/google/protobuf/C;)Lb/a$a$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lb/a$a$c;->i:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lb/a$a$c;

    return-object p0
.end method

.method public static H6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lb/a$a$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lb/a$a$c;->i:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lb/a$a$c;

    return-object p0
.end method

.method public static I6(Ljava/io/InputStream;)Lb/a$a$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lb/a$a$c;->i:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lb/a$a$c;

    return-object p0
.end method

.method public static J6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lb/a$a$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lb/a$a$c;->i:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lb/a$a$c;

    return-object p0
.end method

.method public static K6(Ljava/nio/ByteBuffer;)Lb/a$a$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lb/a$a$c;->i:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/a$a$c;

    return-object p0
.end method

.method public static L6(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lb/a$a$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lb/a$a$c;->i:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/a$a$c;

    return-object p0
.end method

.method public static M6([B)Lb/a$a$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lb/a$a$c;->i:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/a$a$c;

    return-object p0
.end method

.method public static N6([BLcom/google/protobuf/d0;)Lb/a$a$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lb/a$a$c;->i:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/a$a$c;

    return-object p0
.end method

.method public static synthetic access$000(Lcom/google/protobuf/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/x;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lb/a;->a()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lb/a$a$c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lb/a$a$c;->i:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public static bridge synthetic t6(Lb/a$a$c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lb/a$a$c;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic u6(Lb/a$a$c;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lb/a$a$c;->b:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic v6(Lb/a$a$c;Lcom/android/aapt/Resources$SourcePosition;)V
    .locals 0

    iput-object p1, p0, Lb/a$a$c;->c:Lcom/android/aapt/Resources$SourcePosition;

    return-void
.end method

.method public static w6()Lb/a$a$c;
    .locals 1

    sget-object v0, Lb/a$a$c;->h:Lb/a$a$c;

    return-object v0
.end method

.method public static y6()Lb/a$a$c$b;
    .locals 1

    sget-object v0, Lb/a$a$c;->h:Lb/a$a$c;

    invoke-virtual {v0}, Lb/a$a$c;->O6()Lb/a$a$c$b;

    move-result-object v0

    return-object v0
.end method

.method public static z6(Lb/a$a$c;)Lb/a$a$c$b;
    .locals 1

    sget-object v0, Lb/a$a$c;->h:Lb/a$a$c;

    invoke-virtual {v0}, Lb/a$a$c;->O6()Lb/a$a$c$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lb/a$a$c$b;->t6(Lb/a$a$c;)Lb/a$a$c$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A6()Lb/a$a$c$b;
    .locals 1

    invoke-static {}, Lb/a$a$c;->y6()Lb/a$a$c$b;

    move-result-object v0

    return-object v0
.end method

.method public B6(Lcom/google/protobuf/w0$c;)Lb/a$a$c$b;
    .locals 2

    new-instance v0, Lb/a$a$c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lb/a$a$c$b;-><init>(Lcom/google/protobuf/w0$c;Lb/c;)V

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lb/a$a$c;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a$a$c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public O6()Lb/a$a$c$b;
    .locals 2

    sget-object v0, Lb/a$a$c;->h:Lb/a$a$c;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lb/a$a$c$b;

    invoke-direct {v0, v1}, Lb/a$a$c$b;-><init>(Lb/c;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lb/a$a$c$b;

    invoke-direct {v0, v1}, Lb/a$a$c$b;-><init>(Lb/c;)V

    invoke-virtual {v0, p0}, Lb/a$a$c$b;->t6(Lb/a$a$c;)Lb/a$a$c$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lb/a$a$c;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lb/a$a$c;

    invoke-virtual {p0}, Lb/a$a$c;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lb/a$a$c;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lb/a$a$c;->hasSource()Z

    move-result v1

    invoke-virtual {p1}, Lb/a$a$c;->hasSource()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lb/a$a$c;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lb/a$a$c;->getSource()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v1

    invoke-virtual {p1}, Lb/a$a$c;->getSource()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/aapt/Resources$SourcePosition;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/r2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public g0()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lb/a$a$c;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lb/a$a$c;->b:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a$a$c;->x6()Lb/a$a$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lb/a$a$c;->x6()Lb/a$a$c;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lb/a$a$c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lb/a$a$c;->i:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lb/a$a$c;->b:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/w0;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lb/a$a$c;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lb/a$a$c;->c:Lcom/android/aapt/Resources$SourcePosition;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0}, Lb/a$a$c;->getSource()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

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

.method public getSource()Lcom/android/aapt/Resources$SourcePosition;
    .locals 1

    iget-object v0, p0, Lb/a$a$c;->c:Lcom/android/aapt/Resources$SourcePosition;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$SourcePosition;->getDefaultInstance()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSourceOrBuilder()Lcom/android/aapt/Resources$SourcePositionOrBuilder;
    .locals 1

    iget-object v0, p0, Lb/a$a$c;->c:Lcom/android/aapt/Resources$SourcePosition;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$SourcePosition;->getDefaultInstance()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasSource()Z
    .locals 1

    iget-object v0, p0, Lb/a$a$c;->c:Lcom/android/aapt/Resources$SourcePosition;

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
    invoke-static {}, Lb/a$a$c;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lb/a$a$c;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lb/a$a$c;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lb/a$a$c;->getSource()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$SourcePosition;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
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

    invoke-static {}, Lb/a;->b()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lb/a$a$c;

    const-class v2, Lb/a$a$c$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lb/a$a$c;->d:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lb/a$a$c;->d:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a$a$c;->A6()Lb/a$a$c$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lb/a$a$c;->B6(Lcom/google/protobuf/w0$c;)Lb/a$a$c$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lb/a$a$c;->A6()Lb/a$a$c$b;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/w0$i;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lb/a$a$c;

    invoke-direct {p1}, Lb/a$a$c;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a$a$c;->O6()Lb/a$a$c$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lb/a$a$c;->O6()Lb/a$a$c$b;

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

    iget-object v0, p0, Lb/a$a$c;->b:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/w0;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lb/a$a$c;->b:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lb/a$a$c;->c:Lcom/android/aapt/Resources$SourcePosition;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lb/a$a$c;->getSource()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public x6()Lb/a$a$c;
    .locals 1

    sget-object v0, Lb/a$a$c;->h:Lb/a$a$c;

    return-object v0
.end method
