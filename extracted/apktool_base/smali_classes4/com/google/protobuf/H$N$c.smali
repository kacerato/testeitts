.class public final Lcom/google/protobuf/H$N$c;
.super Lcom/google/protobuf/w0;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/H$N$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/H$N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/H$N$c$b;
    }
.end annotation


# static fields
.field public static final k:J = 0x0L

.field public static final l:I = 0x1

.field public static final m:I = 0x2

.field public static final n:I = 0x3

.field public static final o:I = 0x4

.field public static final p:I = 0x6

.field public static final q:Lcom/google/protobuf/H$N$c;

.field public static final r:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$N$c;",
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

.field public e:Lcom/google/protobuf/D0$g;

.field public f:I

.field public volatile g:Ljava/lang/Object;

.field public volatile h:Ljava/lang/Object;

.field public i:Lcom/google/protobuf/J0;

.field public j:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/H$N$c;

    invoke-direct {v0}, Lcom/google/protobuf/H$N$c;-><init>()V

    sput-object v0, Lcom/google/protobuf/H$N$c;->q:Lcom/google/protobuf/H$N$c;

    new-instance v0, Lcom/google/protobuf/H$N$c$a;

    invoke-direct {v0}, Lcom/google/protobuf/H$N$c$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/H$N$c;->r:Lcom/google/protobuf/w1;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/w0;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/google/protobuf/H$N$c;->d:I

    .line 11
    iput v0, p0, Lcom/google/protobuf/H$N$c;->f:I

    .line 12
    const-string v1, ""

    iput-object v1, p0, Lcom/google/protobuf/H$N$c;->g:Ljava/lang/Object;

    .line 13
    iput-object v1, p0, Lcom/google/protobuf/H$N$c;->h:Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/google/protobuf/J0;->n()Lcom/google/protobuf/J0;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/H$N$c;->i:Lcom/google/protobuf/J0;

    .line 15
    iput-byte v0, p0, Lcom/google/protobuf/H$N$c;->j:B

    .line 16
    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c;->c:Lcom/google/protobuf/D0$g;

    .line 17
    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c;->e:Lcom/google/protobuf/D0$g;

    .line 18
    iput-object v1, p0, Lcom/google/protobuf/H$N$c;->g:Ljava/lang/Object;

    .line 19
    iput-object v1, p0, Lcom/google/protobuf/H$N$c;->h:Ljava/lang/Object;

    .line 20
    invoke-static {}, Lcom/google/protobuf/J0;->n()Lcom/google/protobuf/J0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c;->i:Lcom/google/protobuf/J0;

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
    iput p1, p0, Lcom/google/protobuf/H$N$c;->d:I

    .line 4
    iput p1, p0, Lcom/google/protobuf/H$N$c;->f:I

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/H$N$c;->g:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/H$N$c;->h:Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/google/protobuf/J0;->n()Lcom/google/protobuf/J0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c;->i:Lcom/google/protobuf/J0;

    .line 8
    iput-byte p1, p0, Lcom/google/protobuf/H$N$c;->j:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/H$N$c;-><init>(Lcom/google/protobuf/w0$b;)V

    return-void
.end method

.method public static synthetic A6(Lcom/google/protobuf/H$N$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$N$c;->h:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic B6(Lcom/google/protobuf/H$N$c;)Lcom/google/protobuf/J0;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$N$c;->i:Lcom/google/protobuf/J0;

    return-object p0
.end method

.method public static synthetic C6(Lcom/google/protobuf/H$N$c;Lcom/google/protobuf/J0;)Lcom/google/protobuf/J0;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$N$c;->i:Lcom/google/protobuf/J0;

    return-object p1
.end method

.method public static synthetic D6(Lcom/google/protobuf/H$N$c;I)I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$N$c;->b:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/H$N$c;->b:I

    return p1
.end method

.method public static E6()Lcom/google/protobuf/H$N$c;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$N$c;->q:Lcom/google/protobuf/H$N$c;

    return-object v0
.end method

.method public static H6()Lcom/google/protobuf/H$N$c$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$N$c;->q:Lcom/google/protobuf/H$N$c;

    invoke-virtual {v0}, Lcom/google/protobuf/H$N$c;->X6()Lcom/google/protobuf/H$N$c$b;

    move-result-object v0

    return-object v0
.end method

.method public static I6(Lcom/google/protobuf/H$N$c;)Lcom/google/protobuf/H$N$c$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$N$c;->q:Lcom/google/protobuf/H$N$c;

    invoke-virtual {v0}, Lcom/google/protobuf/H$N$c;->X6()Lcom/google/protobuf/H$N$c$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/H$N$c$b;->I6(Lcom/google/protobuf/H$N$c;)Lcom/google/protobuf/H$N$c$b;

    move-result-object p0

    return-object p0
.end method

.method public static L6(Ljava/io/InputStream;)Lcom/google/protobuf/H$N$c;
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

    sget-object v0, Lcom/google/protobuf/H$N$c;->r:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$N$c;

    return-object p0
.end method

.method public static M6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$N$c;
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

    sget-object v0, Lcom/google/protobuf/H$N$c;->r:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$N$c;

    return-object p0
.end method

.method public static N6(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$N$c;
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

    sget-object v0, Lcom/google/protobuf/H$N$c;->r:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$N$c;

    return-object p0
.end method

.method public static O6(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$N$c;
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

    sget-object v0, Lcom/google/protobuf/H$N$c;->r:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$N$c;

    return-object p0
.end method

.method public static P6(Lcom/google/protobuf/C;)Lcom/google/protobuf/H$N$c;
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

    sget-object v0, Lcom/google/protobuf/H$N$c;->r:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$N$c;

    return-object p0
.end method

.method public static Q6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$N$c;
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

    sget-object v0, Lcom/google/protobuf/H$N$c;->r:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$N$c;

    return-object p0
.end method

.method public static R6(Ljava/io/InputStream;)Lcom/google/protobuf/H$N$c;
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

    sget-object v0, Lcom/google/protobuf/H$N$c;->r:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$N$c;

    return-object p0
.end method

.method public static S6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$N$c;
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

    sget-object v0, Lcom/google/protobuf/H$N$c;->r:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$N$c;

    return-object p0
.end method

.method public static T6(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/H$N$c;
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

    sget-object v0, Lcom/google/protobuf/H$N$c;->r:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$N$c;

    return-object p0
.end method

.method public static U6(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$N$c;
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

    sget-object v0, Lcom/google/protobuf/H$N$c;->r:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$N$c;

    return-object p0
.end method

.method public static V6([B)Lcom/google/protobuf/H$N$c;
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

    sget-object v0, Lcom/google/protobuf/H$N$c;->r:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$N$c;

    return-object p0
.end method

.method public static W6([BLcom/google/protobuf/d0;)Lcom/google/protobuf/H$N$c;
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

    sget-object v0, Lcom/google/protobuf/H$N$c;->r:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$N$c;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->F()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$N$c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$N$c;->r:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public static synthetic t6(Lcom/google/protobuf/H$N$c;)Lcom/google/protobuf/D0$g;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$N$c;->c:Lcom/google/protobuf/D0$g;

    return-object p0
.end method

.method public static synthetic u6(Lcom/google/protobuf/H$N$c;Lcom/google/protobuf/D0$g;)Lcom/google/protobuf/D0$g;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$N$c;->c:Lcom/google/protobuf/D0$g;

    return-object p1
.end method

.method public static synthetic v6(Lcom/google/protobuf/H$N$c;)Lcom/google/protobuf/D0$g;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$N$c;->e:Lcom/google/protobuf/D0$g;

    return-object p0
.end method

.method public static synthetic w6(Lcom/google/protobuf/H$N$c;Lcom/google/protobuf/D0$g;)Lcom/google/protobuf/D0$g;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$N$c;->e:Lcom/google/protobuf/D0$g;

    return-object p1
.end method

.method public static synthetic x6(Lcom/google/protobuf/H$N$c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$N$c;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic y6(Lcom/google/protobuf/H$N$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$N$c;->g:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic z6(Lcom/google/protobuf/H$N$c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$N$c;->h:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public F1()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$N$c;->g:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/google/protobuf/H$N$c;->g:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public F6()Lcom/google/protobuf/H$N$c;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$N$c;->q:Lcom/google/protobuf/H$N$c;

    return-object v0
.end method

.method public G2(I)Lcom/google/protobuf/x;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$N$c;->i:Lcom/google/protobuf/J0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/J0;->ub(I)Lcom/google/protobuf/x;

    move-result-object p1

    return-object p1
.end method

.method public G6()Lcom/google/protobuf/C1;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$N$c;->i:Lcom/google/protobuf/J0;

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

    iget-object v0, p0, Lcom/google/protobuf/H$N$c;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/D0$g;->getInt(I)I

    move-result p1

    return p1
.end method

.method public J6()Lcom/google/protobuf/H$N$c$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$N$c;->H6()Lcom/google/protobuf/H$N$c$b;

    move-result-object v0

    return-object v0
.end method

.method public K6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/H$N$c$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/H$N$c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/H$N$c$b;-><init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/H$a;)V

    return-object v0
.end method

.method public R1()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$N$c;->i:Lcom/google/protobuf/J0;

    invoke-virtual {v0}, Lcom/google/protobuf/J0;->size()I

    move-result v0

    return v0
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

    iget-object v0, p0, Lcom/google/protobuf/H$N$c;->c:Lcom/google/protobuf/D0$g;

    return-object v0
.end method

.method public V2()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$N$c;->g:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c;->g:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public X6()Lcom/google/protobuf/H$N$c$b;
    .locals 2

    sget-object v0, Lcom/google/protobuf/H$N$c;->q:Lcom/google/protobuf/H$N$c;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/H$N$c$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/H$N$c$b;-><init>(Lcom/google/protobuf/H$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/H$N$c$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/H$N$c$b;-><init>(Lcom/google/protobuf/H$a;)V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/H$N$c$b;->I6(Lcom/google/protobuf/H$N$c;)Lcom/google/protobuf/H$N$c$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public Z0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$N$c;->h:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/google/protobuf/H$N$c;->h:Ljava/lang/Object;

    :cond_1
    return-object v1
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
    instance-of v1, p1, Lcom/google/protobuf/H$N$c;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/protobuf/H$N$c;

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->S()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$N$c;->S()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->getSpanList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$N$c;->getSpanList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->v2()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$N$c;->v2()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->v2()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->F1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$N$c;->F1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->o2()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$N$c;->o2()Z

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->o2()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->Z0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$N$c;->Z0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->G6()Lcom/google/protobuf/C1;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$N$c;->G6()Lcom/google/protobuf/C1;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

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

.method public f5(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$N$c;->i:Lcom/google/protobuf/J0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/J0;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->F6()Lcom/google/protobuf/H$N$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->F6()Lcom/google/protobuf/H$N$c;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$N$c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$N$c;->r:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/H$N$c;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/H$N$c;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v3, v1}, Lcom/google/protobuf/D0$g;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->x0(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->S()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v1, v2, 0x1

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->x0(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput v2, p0, Lcom/google/protobuf/H$N$c;->d:I

    move v2, v0

    move v3, v2

    :goto_2
    iget-object v4, p0, Lcom/google/protobuf/H$N$c;->e:Lcom/google/protobuf/D0$g;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/google/protobuf/H$N$c;->e:Lcom/google/protobuf/D0$g;

    invoke-interface {v4, v2}, Lcom/google/protobuf/D0$g;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->x0(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->getSpanList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->x0(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_4
    iput v3, p0, Lcom/google/protobuf/H$N$c;->f:I

    iget v2, p0, Lcom/google/protobuf/H$N$c;->b:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protobuf/H$N$c;->g:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_5
    iget v2, p0, Lcom/google/protobuf/H$N$c;->b:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/protobuf/H$N$c;->h:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_6
    move v2, v0

    :goto_3
    iget-object v3, p0, Lcom/google/protobuf/H$N$c;->i:Lcom/google/protobuf/J0;

    invoke-virtual {v3}, Lcom/google/protobuf/J0;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/google/protobuf/H$N$c;->i:Lcom/google/protobuf/J0;

    invoke-virtual {v3, v0}, Lcom/google/protobuf/J0;->Ee(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/w0;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->G6()Lcom/google/protobuf/C1;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v1
.end method

.method public getSpan(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$N$c;->e:Lcom/google/protobuf/D0$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/D0$g;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getSpanCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$N$c;->e:Lcom/google/protobuf/D0$g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSpanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$N$c;->e:Lcom/google/protobuf/D0$g;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/H$N$c;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->o0()I

    move-result v0

    if-lez v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->S()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->getSpanCount()I

    move-result v0

    if-lez v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->getSpanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->v2()Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->F1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->o2()Z

    move-result v0

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->Z0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->R1()I

    move-result v0

    if-lez v0, :cond_5

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->G6()Lcom/google/protobuf/C1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

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

    invoke-static {}, Lcom/google/protobuf/H;->G()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/H$N$c;

    const-class v2, Lcom/google/protobuf/H$N$c$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/google/protobuf/H$N$c;->j:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/H$N$c;->j:B

    return v1
.end method

.method public bridge synthetic l1()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->G6()Lcom/google/protobuf/C1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->J6()Lcom/google/protobuf/H$N$c$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$N$c;->K6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/H$N$c$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->J6()Lcom/google/protobuf/H$N$c$b;

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

    new-instance p1, Lcom/google/protobuf/H$N$c;

    invoke-direct {p1}, Lcom/google/protobuf/H$N$c;-><init>()V

    return-object p1
.end method

.method public o0()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$N$c;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public o2()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$N$c;->b:I

    and-int/lit8 v0, v0, 0x2

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
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->X6()Lcom/google/protobuf/H$N$c$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->X6()Lcom/google/protobuf/H$N$c$b;

    move-result-object v0

    return-object v0
.end method

.method public v2()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$N$c;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public w5()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$N$c;->h:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c;->h:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
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

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->getSerializedSize()I

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->S()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->h2(I)V

    iget v0, p0, Lcom/google/protobuf/H$N$c;->d:I

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->h2(I)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/H$N$c;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/H$N$c;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v2, v1}, Lcom/google/protobuf/D0$g;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->J1(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c;->getSpanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/16 v1, 0x12

    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->h2(I)V

    iget v1, p0, Lcom/google/protobuf/H$N$c;->f:I

    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->h2(I)V

    :cond_2
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/H$N$c;->e:Lcom/google/protobuf/D0$g;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/H$N$c;->e:Lcom/google/protobuf/D0$g;

    invoke-interface {v2, v1}, Lcom/google/protobuf/D0$g;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->J1(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/google/protobuf/H$N$c;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/protobuf/H$N$c;->g:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_4
    iget v1, p0, Lcom/google/protobuf/H$N$c;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/protobuf/H$N$c;->h:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/google/protobuf/H$N$c;->i:Lcom/google/protobuf/J0;

    invoke-virtual {v1}, Lcom/google/protobuf/J0;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/google/protobuf/H$N$c;->i:Lcom/google/protobuf/J0;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/J0;->Ee(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {p1, v2, v1}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
