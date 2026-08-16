.class public final Lb/a$a;
.super Lcom/google/protobuf/w0;
.source "SourceFile"

# interfaces
.implements Lb/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a$a$b;,
        Lb/a$a$c;,
        Lb/a$a$d;
    }
.end annotation


# static fields
.field public static final h:J = 0x0L

.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0x3

.field public static final l:I = 0x4

.field public static final m:I = 0x5

.field public static final n:Lb/a$a;

.field public static final o:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lb/a$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public volatile b:Ljava/lang/Object;

.field public c:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

.field public d:I

.field public volatile e:Ljava/lang/Object;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/a$a$c;",
            ">;"
        }
    .end annotation
.end field

.field public g:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a$a;

    invoke-direct {v0}, Lb/a$a;-><init>()V

    sput-object v0, Lb/a$a;->n:Lb/a$a;

    new-instance v0, Lb/a$a$a;

    invoke-direct {v0}, Lb/a$a$a;-><init>()V

    sput-object v0, Lb/a$a;->o:Lcom/google/protobuf/w1;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/w0;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lb/a$a;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lb/a$a;->d:I

    .line 10
    iput-object v0, p0, Lb/a$a;->e:Ljava/lang/Object;

    const/4 v2, -0x1

    .line 11
    iput-byte v2, p0, Lb/a$a;->g:B

    .line 12
    iput-object v0, p0, Lb/a$a;->b:Ljava/lang/Object;

    .line 13
    iput v1, p0, Lb/a$a;->d:I

    .line 14
    iput-object v0, p0, Lb/a$a;->e:Ljava/lang/Object;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/a$a;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/w0$b;)V
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

    .line 3
    const-string p1, ""

    iput-object p1, p0, Lb/a$a;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lb/a$a;->d:I

    .line 5
    iput-object p1, p0, Lb/a$a;->e:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 6
    iput-byte p1, p0, Lb/a$a;->g:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$b;Lb/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/a$a;-><init>(Lcom/google/protobuf/w0$b;)V

    return-void
.end method

.method public static bridge synthetic A6(Lb/a$a;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lb/a$a;->e:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic B6(Lb/a$a;I)V
    .locals 0

    iput p1, p0, Lb/a$a;->d:I

    return-void
.end method

.method public static synthetic C6()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/w0;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic D6(Lcom/google/protobuf/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/x;)V

    return-void
.end method

.method public static E6()Lb/a$a;
    .locals 1

    sget-object v0, Lb/a$a;->n:Lb/a$a;

    return-object v0
.end method

.method public static G6()Lb/a$a$b;
    .locals 1

    sget-object v0, Lb/a$a;->n:Lb/a$a;

    invoke-virtual {v0}, Lb/a$a;->W6()Lb/a$a$b;

    move-result-object v0

    return-object v0
.end method

.method public static H6(Lb/a$a;)Lb/a$a$b;
    .locals 1

    sget-object v0, Lb/a$a;->n:Lb/a$a;

    invoke-virtual {v0}, Lb/a$a;->W6()Lb/a$a$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lb/a$a$b;->J6(Lb/a$a;)Lb/a$a$b;

    move-result-object p0

    return-object p0
.end method

.method public static K6(Ljava/io/InputStream;)Lb/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lb/a$a;->o:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lb/a$a;

    return-object p0
.end method

.method public static L6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lb/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lb/a$a;->o:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lb/a$a;

    return-object p0
.end method

.method public static M6(Lcom/google/protobuf/x;)Lb/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lb/a$a;->o:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/a$a;

    return-object p0
.end method

.method public static N6(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lb/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lb/a$a;->o:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/a$a;

    return-object p0
.end method

.method public static O6(Lcom/google/protobuf/C;)Lb/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lb/a$a;->o:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lb/a$a;

    return-object p0
.end method

.method public static P6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lb/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lb/a$a;->o:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lb/a$a;

    return-object p0
.end method

.method public static Q6(Ljava/io/InputStream;)Lb/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lb/a$a;->o:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lb/a$a;

    return-object p0
.end method

.method public static R6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lb/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lb/a$a;->o:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lb/a$a;

    return-object p0
.end method

.method public static S6(Ljava/nio/ByteBuffer;)Lb/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lb/a$a;->o:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/a$a;

    return-object p0
.end method

.method public static T6(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lb/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lb/a$a;->o:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/a$a;

    return-object p0
.end method

.method public static U6([B)Lb/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lb/a$a;->o:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/a$a;

    return-object p0
.end method

.method public static V6([BLcom/google/protobuf/d0;)Lb/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lb/a$a;->o:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/a$a;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/protobuf/x;)V
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

    invoke-static {}, Lb/a;->c()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lb/a$a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lb/a$a;->o:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public static bridge synthetic t6(Lb/a$a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lb/a$a;->f:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic u6(Lb/a$a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lb/a$a;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic v6(Lb/a$a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lb/a$a;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic w6(Lb/a$a;)I
    .locals 0

    iget p0, p0, Lb/a$a;->d:I

    return p0
.end method

.method public static bridge synthetic x6(Lb/a$a;Lcom/android/aapt/ConfigurationOuterClass$Configuration;)V
    .locals 0

    iput-object p1, p0, Lb/a$a;->c:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    return-void
.end method

.method public static bridge synthetic y6(Lb/a$a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lb/a$a;->f:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic z6(Lb/a$a;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lb/a$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public A3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/a$a$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/a$a;->f:Ljava/util/List;

    return-object v0
.end method

.method public F6()Lb/a$a;
    .locals 1

    sget-object v0, Lb/a$a;->n:Lb/a$a;

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lb/a$a;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public I6()Lb/a$a$b;
    .locals 1

    invoke-static {}, Lb/a$a;->G6()Lb/a$a$b;

    move-result-object v0

    return-object v0
.end method

.method public J6(Lcom/google/protobuf/w0$c;)Lb/a$a$b;
    .locals 2

    new-instance v0, Lb/a$a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lb/a$a$b;-><init>(Lcom/google/protobuf/w0$c;Lb/b;)V

    return-object v0
.end method

.method public S2()I
    .locals 1

    iget-object v0, p0, Lb/a$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public S5()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lb/a$a;->e:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public W6()Lb/a$a$b;
    .locals 2

    sget-object v0, Lb/a$a;->n:Lb/a$a;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lb/a$a$b;

    invoke-direct {v0, v1}, Lb/a$a$b;-><init>(Lb/b;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lb/a$a$b;

    invoke-direct {v0, v1}, Lb/a$a$b;-><init>(Lb/b;)V

    invoke-virtual {v0, p0}, Lb/a$a$b;->J6(Lb/a$a;)Lb/a$a$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public Y5()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lb/a$a;->e:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lb/a$a;->e:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lb/a$a;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lb/a$a;

    invoke-virtual {p0}, Lb/a$a;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lb/a$a;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lb/a$a;->hasConfig()Z

    move-result v1

    invoke-virtual {p1}, Lb/a$a;->hasConfig()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lb/a$a;->hasConfig()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lb/a$a;->getConfig()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v1

    invoke-virtual {p1}, Lb/a$a;->getConfig()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lb/a$a;->d:I

    iget v3, p1, Lb/a$a;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lb/a$a;->S5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lb/a$a;->S5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lb/a$a;->A3()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lb/a$a;->A3()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/r2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public g0()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lb/a$a;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lb/a$a;->b:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getConfig()Lcom/android/aapt/ConfigurationOuterClass$Configuration;
    .locals 1

    iget-object v0, p0, Lb/a$a;->c:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getDefaultInstance()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getConfigOrBuilder()Lcom/android/aapt/ConfigurationOuterClass$ConfigurationOrBuilder;
    .locals 1

    iget-object v0, p0, Lb/a$a;->c:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getDefaultInstance()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a$a;->F6()Lb/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lb/a$a;->F6()Lb/a$a;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lb/a$a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lb/a$a;->o:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lb/a$a;->b:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/w0;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/a$a;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lb/a$a;->c:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lb/a$a;->getConfig()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget v2, p0, Lb/a$a;->d:I

    sget-object v3, Lcom/android/aapt/Resources$FileReference$Type;->UNKNOWN:Lcom/android/aapt/Resources$FileReference$Type;

    invoke-virtual {v3}, Lcom/android/aapt/Resources$FileReference$Type;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_3

    const/4 v2, 0x3

    iget v3, p0, Lb/a$a;->d:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    iget-object v2, p0, Lb/a$a;->e:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/protobuf/w0;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x4

    iget-object v3, p0, Lb/a$a;->e:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    :goto_1
    iget-object v2, p0, Lb/a$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lb/a$a;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/b1;

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getType()Lcom/android/aapt/Resources$FileReference$Type;
    .locals 1

    iget v0, p0, Lb/a$a;->d:I

    invoke-static {v0}, Lcom/android/aapt/Resources$FileReference$Type;->forNumber(I)Lcom/android/aapt/Resources$FileReference$Type;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/Resources$FileReference$Type;->UNRECOGNIZED:Lcom/android/aapt/Resources$FileReference$Type;

    :cond_0
    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    iget v0, p0, Lb/a$a;->d:I

    return v0
.end method

.method public hasConfig()Z
    .locals 1

    iget-object v0, p0, Lb/a$a;->c:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

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
    invoke-static {}, Lb/a$a;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lb/a$a;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lb/a$a;->hasConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lb/a$a;->getConfig()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lb/a$a;->d:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lb/a$a;->S5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lb/a$a;->S2()I

    move-result v0

    if-lez v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lb/a$a;->A3()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
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

    invoke-static {}, Lb/a;->d()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lb/a$a;

    const-class v2, Lb/a$a$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lb/a$a;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lb/a$a;->g:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a$a;->I6()Lb/a$a$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lb/a$a;->J6(Lcom/google/protobuf/w0$c;)Lb/a$a$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lb/a$a;->I6()Lb/a$a$b;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/w0$i;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lb/a$a;

    invoke-direct {p1}, Lb/a$a;-><init>()V

    return-object p1
.end method

.method public q2(I)Lb/a$a$c;
    .locals 1

    iget-object v0, p0, Lb/a$a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/a$a$c;

    return-object p1
.end method

.method public t3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lb/a$a$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/a$a;->f:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a$a;->W6()Lb/a$a$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lb/a$a;->W6()Lb/a$a$b;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a$a;->b:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/w0;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a$a;->b:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lb/a$a;->c:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lb/a$a;->getConfig()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_1
    iget v0, p0, Lb/a$a;->d:I

    sget-object v1, Lcom/android/aapt/Resources$FileReference$Type;->UNKNOWN:Lcom/android/aapt/Resources$FileReference$Type;

    invoke-virtual {v1}, Lcom/android/aapt/Resources$FileReference$Type;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lb/a$a;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_2
    iget-object v0, p0, Lb/a$a;->e:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/w0;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lb/a$a;->e:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lb/a$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lb/a$a;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/b1;

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public x4(I)Lb/a$a$d;
    .locals 1

    iget-object v0, p0, Lb/a$a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/a$a$d;

    return-object p1
.end method
