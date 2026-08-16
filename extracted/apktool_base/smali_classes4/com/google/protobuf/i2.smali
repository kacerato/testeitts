.class public final Lcom/google/protobuf/i2;
.super Lcom/google/protobuf/w0;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/j2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/i2$b;
    }
.end annotation


# static fields
.field public static final i:J = 0x0L

.field public static final j:I = 0x1

.field public static final k:I = 0x2

.field public static final l:I = 0x3

.field public static final m:I = 0x4

.field public static final n:I = 0x5

.field public static final o:I = 0x6

.field public static final p:Lcom/google/protobuf/i2;

.field public static final q:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/i2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public volatile b:Ljava/lang/Object;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/i0;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/google/protobuf/J0;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/u1;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/google/protobuf/S1;

.field public g:I

.field public h:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/i2;

    invoke-direct {v0}, Lcom/google/protobuf/i2;-><init>()V

    sput-object v0, Lcom/google/protobuf/i2;->p:Lcom/google/protobuf/i2;

    new-instance v0, Lcom/google/protobuf/i2$a;

    invoke-direct {v0}, Lcom/google/protobuf/i2$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/i2;->q:Lcom/google/protobuf/w1;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/w0;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/i2;->b:Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/google/protobuf/J0;->n()Lcom/google/protobuf/J0;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/i2;->d:Lcom/google/protobuf/J0;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/google/protobuf/i2;->g:I

    const/4 v2, -0x1

    .line 11
    iput-byte v2, p0, Lcom/google/protobuf/i2;->h:B

    .line 12
    iput-object v0, p0, Lcom/google/protobuf/i2;->b:Ljava/lang/Object;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i2;->c:Ljava/util/List;

    .line 14
    invoke-static {}, Lcom/google/protobuf/J0;->n()Lcom/google/protobuf/J0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i2;->d:Lcom/google/protobuf/J0;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i2;->e:Ljava/util/List;

    .line 16
    iput v1, p0, Lcom/google/protobuf/i2;->g:I

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/w0$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

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

    iput-object p1, p0, Lcom/google/protobuf/i2;->b:Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/google/protobuf/J0;->n()Lcom/google/protobuf/J0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/i2;->d:Lcom/google/protobuf/J0;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/google/protobuf/i2;->g:I

    const/4 p1, -0x1

    .line 6
    iput-byte p1, p0, Lcom/google/protobuf/i2;->h:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/i2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/i2;-><init>(Lcom/google/protobuf/w0$b;)V

    return-void
.end method

.method public static synthetic A6(Lcom/google/protobuf/i2;Lcom/google/protobuf/J0;)Lcom/google/protobuf/J0;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/i2;->d:Lcom/google/protobuf/J0;

    return-object p1
.end method

.method public static synthetic B6(Lcom/google/protobuf/i2;Lcom/google/protobuf/S1;)Lcom/google/protobuf/S1;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/i2;->f:Lcom/google/protobuf/S1;

    return-object p1
.end method

.method public static synthetic C6(Lcom/google/protobuf/i2;)I
    .locals 0

    iget p0, p0, Lcom/google/protobuf/i2;->g:I

    return p0
.end method

.method public static synthetic D6(Lcom/google/protobuf/i2;I)I
    .locals 0

    iput p1, p0, Lcom/google/protobuf/i2;->g:I

    return p1
.end method

.method public static E6()Lcom/google/protobuf/i2;
    .locals 1

    sget-object v0, Lcom/google/protobuf/i2;->p:Lcom/google/protobuf/i2;

    return-object v0
.end method

.method public static H6()Lcom/google/protobuf/i2$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/i2;->p:Lcom/google/protobuf/i2;

    invoke-virtual {v0}, Lcom/google/protobuf/i2;->X6()Lcom/google/protobuf/i2$b;

    move-result-object v0

    return-object v0
.end method

.method public static I6(Lcom/google/protobuf/i2;)Lcom/google/protobuf/i2$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/i2;->p:Lcom/google/protobuf/i2;

    invoke-virtual {v0}, Lcom/google/protobuf/i2;->X6()Lcom/google/protobuf/i2$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/i2$b;->d7(Lcom/google/protobuf/i2;)Lcom/google/protobuf/i2$b;

    move-result-object p0

    return-object p0
.end method

.method public static L6(Ljava/io/InputStream;)Lcom/google/protobuf/i2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/i2;->q:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/i2;

    return-object p0
.end method

.method public static M6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/i2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/i2;->q:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/i2;

    return-object p0
.end method

.method public static N6(Lcom/google/protobuf/x;)Lcom/google/protobuf/i2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/i2;->q:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/i2;

    return-object p0
.end method

.method public static O6(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/i2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/i2;->q:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/i2;

    return-object p0
.end method

.method public static P6(Lcom/google/protobuf/C;)Lcom/google/protobuf/i2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/i2;->q:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/i2;

    return-object p0
.end method

.method public static Q6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/i2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/i2;->q:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/i2;

    return-object p0
.end method

.method public static R6(Ljava/io/InputStream;)Lcom/google/protobuf/i2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/i2;->q:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/i2;

    return-object p0
.end method

.method public static S6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/i2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/i2;->q:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/i2;

    return-object p0
.end method

.method public static T6(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/i2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/i2;->q:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/i2;

    return-object p0
.end method

.method public static U6(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/google/protobuf/i2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/i2;->q:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/i2;

    return-object p0
.end method

.method public static V6([B)Lcom/google/protobuf/i2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/i2;->q:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/i2;

    return-object p0
.end method

.method public static W6([BLcom/google/protobuf/d0;)Lcom/google/protobuf/i2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/i2;->q:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/i2;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/k2;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/i2;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/i2;->q:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public static synthetic t6(Lcom/google/protobuf/i2;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/i2;->c:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic u6(Lcom/google/protobuf/i2;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/i2;->c:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic v6(Lcom/google/protobuf/i2;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/i2;->e:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic w6(Lcom/google/protobuf/i2;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/i2;->e:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic x6(Lcom/google/protobuf/i2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/i2;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic y6(Lcom/google/protobuf/i2;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/i2;->b:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic z6(Lcom/google/protobuf/i2;)Lcom/google/protobuf/J0;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/i2;->d:Lcom/google/protobuf/J0;

    return-object p0
.end method


# virtual methods
.method public E1()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/i2;->d:Lcom/google/protobuf/J0;

    invoke-virtual {v0}, Lcom/google/protobuf/J0;->size()I

    move-result v0

    return v0
.end method

.method public F6()Lcom/google/protobuf/i2;
    .locals 1

    sget-object v0, Lcom/google/protobuf/i2;->p:Lcom/google/protobuf/i2;

    return-object v0
.end method

.method public G6()Lcom/google/protobuf/C1;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/i2;->d:Lcom/google/protobuf/J0;

    return-object v0
.end method

.method public J6()Lcom/google/protobuf/i2$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/i2;->H6()Lcom/google/protobuf/i2$b;

    move-result-object v0

    return-object v0
.end method

.method public K6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/i2$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/i2$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/i2$b;-><init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/i2$a;)V

    return-object v0
.end method

.method public T4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/n0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i2;->c:Ljava/util/List;

    return-object v0
.end method

.method public X0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/i0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i2;->c:Ljava/util/List;

    return-object v0
.end method

.method public X6()Lcom/google/protobuf/i2$b;
    .locals 2

    sget-object v0, Lcom/google/protobuf/i2;->p:Lcom/google/protobuf/i2;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/i2$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/i2$b;-><init>(Lcom/google/protobuf/i2$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/i2$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/i2$b;-><init>(Lcom/google/protobuf/i2$a;)V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/i2$b;->d7(Lcom/google/protobuf/i2;)Lcom/google/protobuf/i2$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public c5(I)Lcom/google/protobuf/i0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i2;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/i0;

    return-object p1
.end method

.method public e3(I)Lcom/google/protobuf/n0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i2;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/n0;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/i2;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/protobuf/i2;

    invoke-virtual {p0}, Lcom/google/protobuf/i2;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/i2;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/i2;->X0()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/i2;->X0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/i2;->G6()Lcom/google/protobuf/C1;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/i2;->G6()Lcom/google/protobuf/C1;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/i2;->j()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/i2;->j()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/i2;->v()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/i2;->v()Z

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/i2;->v()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/protobuf/i2;->x()Lcom/google/protobuf/S1;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/i2;->x()Lcom/google/protobuf/S1;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/S1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/google/protobuf/i2;->g:I

    iget v3, p1, Lcom/google/protobuf/i2;->g:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/r2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i2;->F6()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/i2;->F6()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getFieldsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/i2;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/i2;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i2;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/i2;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i2;->b:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/i2;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/i2;->q:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/i2;->b:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/w0;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/i2;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/i2;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/google/protobuf/i2;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/b1;

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    move v3, v2

    :goto_2
    iget-object v4, p0, Lcom/google/protobuf/i2;->d:Lcom/google/protobuf/J0;

    invoke-virtual {v4}, Lcom/google/protobuf/J0;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/google/protobuf/i2;->d:Lcom/google/protobuf/J0;

    invoke-virtual {v4, v2}, Lcom/google/protobuf/J0;->Ee(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/w0;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/google/protobuf/i2;->G6()Lcom/google/protobuf/C1;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    :goto_3
    iget-object v2, p0, Lcom/google/protobuf/i2;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/google/protobuf/i2;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/b1;

    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/i2;->f:Lcom/google/protobuf/S1;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/protobuf/i2;->x()Lcom/google/protobuf/S1;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/google/protobuf/i2;->g:I

    sget-object v2, Lcom/google/protobuf/b2;->SYNTAX_PROTO2:Lcom/google/protobuf/b2;

    invoke-virtual {v2}, Lcom/google/protobuf/b2;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_6

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/protobuf/i2;->g:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

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

.method public h4(I)Lcom/google/protobuf/x;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i2;->d:Lcom/google/protobuf/J0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/J0;->ub(I)Lcom/google/protobuf/x;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/i2;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/i2;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/google/protobuf/i2;->getFieldsCount()I

    move-result v0

    if-lez v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/i2;->X0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/i2;->E1()I

    move-result v0

    if-lez v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/i2;->G6()Lcom/google/protobuf/C1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/i2;->n()I

    move-result v0

    if-lez v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/i2;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/i2;->v()Z

    move-result v0

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/i2;->x()Lcom/google/protobuf/S1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/S1;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/google/protobuf/i2;->g:I

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

    sget-object v0, Lcom/google/protobuf/k2;->b:Lcom/google/protobuf/w0$h;

    const-class v1, Lcom/google/protobuf/i2;

    const-class v2, Lcom/google/protobuf/i2$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/google/protobuf/i2;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/i2;->h:B

    return v1
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/u1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i2;->e:Ljava/util/List;

    return-object v0
.end method

.method public k(I)Lcom/google/protobuf/u1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i2;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/u1;

    return-object p1
.end method

.method public l(I)Lcom/google/protobuf/v1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i2;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/v1;

    return-object p1
.end method

.method public m()Lcom/google/protobuf/b2;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/i2;->g:I

    invoke-static {v0}, Lcom/google/protobuf/b2;->a(I)Lcom/google/protobuf/b2;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/b2;->UNRECOGNIZED:Lcom/google/protobuf/b2;

    :cond_0
    return-object v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/i2;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic n3()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/i2;->G6()Lcom/google/protobuf/C1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i2;->J6()Lcom/google/protobuf/i2$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "parent"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/i2;->K6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/i2$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/i2;->J6()Lcom/google/protobuf/i2$b;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/w0$i;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unused"
        }
    .end annotation

    new-instance p1, Lcom/google/protobuf/i2;

    invoke-direct {p1}, Lcom/google/protobuf/i2;-><init>()V

    return-object p1
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/v1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i2;->e:Ljava/util/List;

    return-object v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/i2;->g:I

    return v0
.end method

.method public p5(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i2;->d:Lcom/google/protobuf/J0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/J0;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i2;->X6()Lcom/google/protobuf/i2$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/i2;->X6()Lcom/google/protobuf/i2$b;

    move-result-object v0

    return-object v0
.end method

.method public v()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/i2;->f:Lcom/google/protobuf/S1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i2;->b:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/w0;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/i2;->b:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/i2;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/i2;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/b1;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/i2;->d:Lcom/google/protobuf/J0;

    invoke-virtual {v2}, Lcom/google/protobuf/J0;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/protobuf/i2;->d:Lcom/google/protobuf/J0;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/J0;->Ee(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p1, v3, v2}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/google/protobuf/i2;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/protobuf/i2;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/b1;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/i2;->f:Lcom/google/protobuf/S1;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/protobuf/i2;->x()Lcom/google/protobuf/S1;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_4
    iget v0, p0, Lcom/google/protobuf/i2;->g:I

    sget-object v1, Lcom/google/protobuf/b2;->SYNTAX_PROTO2:Lcom/google/protobuf/b2;

    invoke-virtual {v1}, Lcom/google/protobuf/b2;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Lcom/google/protobuf/i2;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public x()Lcom/google/protobuf/S1;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/i2;->f:Lcom/google/protobuf/S1;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/S1;->v6()Lcom/google/protobuf/S1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public y()Lcom/google/protobuf/T1;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/i2;->f:Lcom/google/protobuf/S1;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/S1;->v6()Lcom/google/protobuf/S1;

    move-result-object v0

    :cond_0
    return-object v0
.end method
