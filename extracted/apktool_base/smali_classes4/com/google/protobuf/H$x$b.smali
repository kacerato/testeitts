.class public final Lcom/google/protobuf/H$x$b;
.super Lcom/google/protobuf/w0;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/H$x$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/H$x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/H$x$b$b;,
        Lcom/google/protobuf/H$x$b$c;
    }
.end annotation


# static fields
.field public static final j:J = 0x0L

.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x3

.field public static final n:I = 0x4

.field public static final o:I = 0x5

.field public static final p:Lcom/google/protobuf/H$x$b;

.field public static final q:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$x$b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public b:I

.field public c:Lcom/google/protobuf/D0$g;

.field public d:I

.field public volatile e:Ljava/lang/Object;

.field public f:I

.field public g:I

.field public h:I

.field public i:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/H$x$b;

    invoke-direct {v0}, Lcom/google/protobuf/H$x$b;-><init>()V

    sput-object v0, Lcom/google/protobuf/H$x$b;->p:Lcom/google/protobuf/H$x$b;

    new-instance v0, Lcom/google/protobuf/H$x$b$a;

    invoke-direct {v0}, Lcom/google/protobuf/H$x$b$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/H$x$b;->q:Lcom/google/protobuf/w1;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/w0;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/google/protobuf/H$x$b;->d:I

    .line 11
    const-string v1, ""

    iput-object v1, p0, Lcom/google/protobuf/H$x$b;->e:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 12
    iput v2, p0, Lcom/google/protobuf/H$x$b;->f:I

    .line 13
    iput v2, p0, Lcom/google/protobuf/H$x$b;->g:I

    .line 14
    iput v2, p0, Lcom/google/protobuf/H$x$b;->h:I

    .line 15
    iput-byte v0, p0, Lcom/google/protobuf/H$x$b;->i:B

    .line 16
    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$x$b;->c:Lcom/google/protobuf/D0$g;

    .line 17
    iput-object v1, p0, Lcom/google/protobuf/H$x$b;->e:Ljava/lang/Object;

    .line 18
    iput v2, p0, Lcom/google/protobuf/H$x$b;->h:I

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/w0$b;)V
    .locals 1
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

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/google/protobuf/H$x$b;->d:I

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/H$x$b;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/protobuf/H$x$b;->f:I

    .line 6
    iput v0, p0, Lcom/google/protobuf/H$x$b;->g:I

    .line 7
    iput v0, p0, Lcom/google/protobuf/H$x$b;->h:I

    .line 8
    iput-byte p1, p0, Lcom/google/protobuf/H$x$b;->i:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/H$x$b;-><init>(Lcom/google/protobuf/w0$b;)V

    return-void
.end method

.method public static synthetic A6(Lcom/google/protobuf/H$x$b;I)I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$x$b;->b:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/H$x$b;->b:I

    return p1
.end method

.method public static B6()Lcom/google/protobuf/H$x$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$x$b;->p:Lcom/google/protobuf/H$x$b;

    return-object v0
.end method

.method public static D6()Lcom/google/protobuf/H$x$b$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$x$b;->p:Lcom/google/protobuf/H$x$b;

    invoke-virtual {v0}, Lcom/google/protobuf/H$x$b;->T6()Lcom/google/protobuf/H$x$b$b;

    move-result-object v0

    return-object v0
.end method

.method public static E6(Lcom/google/protobuf/H$x$b;)Lcom/google/protobuf/H$x$b$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$x$b;->p:Lcom/google/protobuf/H$x$b;

    invoke-virtual {v0}, Lcom/google/protobuf/H$x$b;->T6()Lcom/google/protobuf/H$x$b$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/H$x$b$b;->B6(Lcom/google/protobuf/H$x$b;)Lcom/google/protobuf/H$x$b$b;

    move-result-object p0

    return-object p0
.end method

.method public static H6(Ljava/io/InputStream;)Lcom/google/protobuf/H$x$b;
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

    sget-object v0, Lcom/google/protobuf/H$x$b;->q:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$x$b;

    return-object p0
.end method

.method public static I6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$x$b;
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

    sget-object v0, Lcom/google/protobuf/H$x$b;->q:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$x$b;

    return-object p0
.end method

.method public static J6(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$x$b;
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

    sget-object v0, Lcom/google/protobuf/H$x$b;->q:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$x$b;

    return-object p0
.end method

.method public static K6(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$x$b;
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

    sget-object v0, Lcom/google/protobuf/H$x$b;->q:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$x$b;

    return-object p0
.end method

.method public static L6(Lcom/google/protobuf/C;)Lcom/google/protobuf/H$x$b;
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

    sget-object v0, Lcom/google/protobuf/H$x$b;->q:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$x$b;

    return-object p0
.end method

.method public static M6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$x$b;
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

    sget-object v0, Lcom/google/protobuf/H$x$b;->q:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$x$b;

    return-object p0
.end method

.method public static N6(Ljava/io/InputStream;)Lcom/google/protobuf/H$x$b;
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

    sget-object v0, Lcom/google/protobuf/H$x$b;->q:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$x$b;

    return-object p0
.end method

.method public static O6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$x$b;
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

    sget-object v0, Lcom/google/protobuf/H$x$b;->q:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$x$b;

    return-object p0
.end method

.method public static P6(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/H$x$b;
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

    sget-object v0, Lcom/google/protobuf/H$x$b;->q:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$x$b;

    return-object p0
.end method

.method public static Q6(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$x$b;
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

    sget-object v0, Lcom/google/protobuf/H$x$b;->q:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$x$b;

    return-object p0
.end method

.method public static R6([B)Lcom/google/protobuf/H$x$b;
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

    sget-object v0, Lcom/google/protobuf/H$x$b;->q:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$x$b;

    return-object p0
.end method

.method public static S6([BLcom/google/protobuf/d0;)Lcom/google/protobuf/H$x$b;
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

    sget-object v0, Lcom/google/protobuf/H$x$b;->q:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$x$b;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->L()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$x$b;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$x$b;->q:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public static synthetic t6(Lcom/google/protobuf/H$x$b;)Lcom/google/protobuf/D0$g;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$x$b;->c:Lcom/google/protobuf/D0$g;

    return-object p0
.end method

.method public static synthetic u6(Lcom/google/protobuf/H$x$b;Lcom/google/protobuf/D0$g;)Lcom/google/protobuf/D0$g;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$x$b;->c:Lcom/google/protobuf/D0$g;

    return-object p1
.end method

.method public static synthetic v6(Lcom/google/protobuf/H$x$b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$x$b;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic w6(Lcom/google/protobuf/H$x$b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$x$b;->e:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic x6(Lcom/google/protobuf/H$x$b;I)I
    .locals 0

    iput p1, p0, Lcom/google/protobuf/H$x$b;->f:I

    return p1
.end method

.method public static synthetic y6(Lcom/google/protobuf/H$x$b;I)I
    .locals 0

    iput p1, p0, Lcom/google/protobuf/H$x$b;->g:I

    return p1
.end method

.method public static synthetic z6(Lcom/google/protobuf/H$x$b;I)I
    .locals 0

    iput p1, p0, Lcom/google/protobuf/H$x$b;->h:I

    return p1
.end method


# virtual methods
.method public B5()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$x$b;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C6()Lcom/google/protobuf/H$x$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$x$b;->p:Lcom/google/protobuf/H$x$b;

    return-object v0
.end method

.method public F6()Lcom/google/protobuf/H$x$b$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$x$b;->D6()Lcom/google/protobuf/H$x$b$b;

    move-result-object v0

    return-object v0
.end method

.method public G5()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$x$b;->e:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$x$b;->e:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public G6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/H$x$b$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/H$x$b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/H$x$b$b;-><init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/H$a;)V

    return-object v0
.end method

.method public I(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$x$b;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/D0$g;->getInt(I)I

    move-result p1

    return p1
.end method

.method public S()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$x$b;->c:Lcom/google/protobuf/D0$g;

    return-object v0
.end method

.method public T6()Lcom/google/protobuf/H$x$b$b;
    .locals 2

    sget-object v0, Lcom/google/protobuf/H$x$b;->p:Lcom/google/protobuf/H$x$b;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/H$x$b$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/H$x$b$b;-><init>(Lcom/google/protobuf/H$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/H$x$b$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/H$x$b$b;-><init>(Lcom/google/protobuf/H$a;)V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/H$x$b$b;->B6(Lcom/google/protobuf/H$x$b;)Lcom/google/protobuf/H$x$b$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public Y0()Lcom/google/protobuf/H$x$b$c;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$x$b;->h:I

    invoke-static {v0}, Lcom/google/protobuf/H$x$b$c;->a(I)Lcom/google/protobuf/H$x$b$c;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/H$x$b$c;->NONE:Lcom/google/protobuf/H$x$b$c;

    :cond_0
    return-object v0
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
    instance-of v1, p1, Lcom/google/protobuf/H$x$b;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/protobuf/H$x$b;

    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->S()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$x$b;->S()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->hasSourceFile()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$x$b;->hasSourceFile()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->hasSourceFile()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->getSourceFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$x$b;->getSourceFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->B5()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$x$b;->B5()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->B5()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->getBegin()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$x$b;->getBegin()I

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->q()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$x$b;->q()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->q()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->getEnd()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$x$b;->getEnd()I

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->q1()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$x$b;->q1()Z

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->q1()Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/google/protobuf/H$x$b;->h:I

    iget v3, p1, Lcom/google/protobuf/H$x$b;->h:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/r2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public getBegin()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$x$b;->f:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->C6()Lcom/google/protobuf/H$x$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->C6()Lcom/google/protobuf/H$x$b;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$x$b;->g:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$x$b;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$x$b;->q:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/H$x$b;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/H$x$b;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v2, v0}, Lcom/google/protobuf/D0$g;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->x0(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->S()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->x0(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput v1, p0, Lcom/google/protobuf/H$x$b;->d:I

    iget v1, p0, Lcom/google/protobuf/H$x$b;->b:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/protobuf/H$x$b;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/google/protobuf/H$x$b;->b:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/protobuf/H$x$b;->f:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->w0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/google/protobuf/H$x$b;->b:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/google/protobuf/H$x$b;->g:I

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->w0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/google/protobuf/H$x$b;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/protobuf/H$x$b;->h:I

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

.method public getSourceFile()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$x$b;->e:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/protobuf/H$x$b;->e:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public hasSourceFile()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$x$b;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

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
    invoke-static {}, Lcom/google/protobuf/H$x$b;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->o0()I

    move-result v0

    if-lez v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->S()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->hasSourceFile()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->B5()Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->getBegin()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->getEnd()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->q1()Z

    move-result v0

    if-eqz v0, :cond_5

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/google/protobuf/H$x$b;->h:I

    add-int/2addr v1, v0

    :cond_5
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

    invoke-static {}, Lcom/google/protobuf/H;->M()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/H$x$b;

    const-class v2, Lcom/google/protobuf/H$x$b$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/google/protobuf/H$x$b;->i:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/H$x$b;->i:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->F6()Lcom/google/protobuf/H$x$b$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$x$b;->G6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/H$x$b$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->F6()Lcom/google/protobuf/H$x$b$b;

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

    new-instance p1, Lcom/google/protobuf/H$x$b;

    invoke-direct {p1}, Lcom/google/protobuf/H$x$b;-><init>()V

    return-object p1
.end method

.method public o0()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$x$b;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$x$b;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q1()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$x$b;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->T6()Lcom/google/protobuf/H$x$b$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->T6()Lcom/google/protobuf/H$x$b$b;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
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

    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->getSerializedSize()I

    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b;->S()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->h2(I)V

    iget v0, p0, Lcom/google/protobuf/H$x$b;->d:I

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->h2(I)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/H$x$b;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/H$x$b;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v1, v0}, Lcom/google/protobuf/D0$g;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->J1(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/protobuf/H$x$b;->b:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/H$x$b;->e:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2
    iget v0, p0, Lcom/google/protobuf/H$x$b;->b:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/protobuf/H$x$b;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->i(II)V

    :cond_3
    iget v0, p0, Lcom/google/protobuf/H$x$b;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/protobuf/H$x$b;->g:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->i(II)V

    :cond_4
    iget v0, p0, Lcom/google/protobuf/H$x$b;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    iget v1, p0, Lcom/google/protobuf/H$x$b;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
