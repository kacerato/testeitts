.class public final Lcom/google/protobuf/H$P;
.super Lcom/google/protobuf/w0;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/H$Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "P"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/H$P$b;,
        Lcom/google/protobuf/H$P$c;,
        Lcom/google/protobuf/H$P$d;
    }
.end annotation


# static fields
.field public static final k:J = 0x0L

.field public static final l:I = 0x2

.field public static final m:I = 0x3

.field public static final n:I = 0x4

.field public static final o:I = 0x5

.field public static final p:I = 0x6

.field public static final q:I = 0x7

.field public static final r:I = 0x8

.field public static final s:Lcom/google/protobuf/H$P;

.field public static final t:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$P;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public b:I

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$P$c;",
            ">;"
        }
    .end annotation
.end field

.field public volatile d:Ljava/lang/Object;

.field public e:J

.field public f:J

.field public g:D

.field public h:Lcom/google/protobuf/x;

.field public volatile i:Ljava/lang/Object;

.field public j:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/H$P;

    invoke-direct {v0}, Lcom/google/protobuf/H$P;-><init>()V

    sput-object v0, Lcom/google/protobuf/H$P;->s:Lcom/google/protobuf/H$P;

    new-instance v0, Lcom/google/protobuf/H$P$a;

    invoke-direct {v0}, Lcom/google/protobuf/H$P$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/H$P;->t:Lcom/google/protobuf/w1;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/w0;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/H$P;->d:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Lcom/google/protobuf/H$P;->e:J

    .line 13
    iput-wide v1, p0, Lcom/google/protobuf/H$P;->f:J

    const-wide/16 v1, 0x0

    .line 14
    iput-wide v1, p0, Lcom/google/protobuf/H$P;->g:D

    .line 15
    sget-object v1, Lcom/google/protobuf/x;->g:Lcom/google/protobuf/x;

    iput-object v1, p0, Lcom/google/protobuf/H$P;->h:Lcom/google/protobuf/x;

    .line 16
    iput-object v0, p0, Lcom/google/protobuf/H$P;->i:Ljava/lang/Object;

    const/4 v2, -0x1

    .line 17
    iput-byte v2, p0, Lcom/google/protobuf/H$P;->j:B

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/H$P;->c:Ljava/util/List;

    .line 19
    iput-object v0, p0, Lcom/google/protobuf/H$P;->d:Ljava/lang/Object;

    .line 20
    iput-object v1, p0, Lcom/google/protobuf/H$P;->h:Lcom/google/protobuf/x;

    .line 21
    iput-object v0, p0, Lcom/google/protobuf/H$P;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/w0$b;)V
    .locals 2
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

    iput-object p1, p0, Lcom/google/protobuf/H$P;->d:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/google/protobuf/H$P;->e:J

    .line 5
    iput-wide v0, p0, Lcom/google/protobuf/H$P;->f:J

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/google/protobuf/H$P;->g:D

    .line 7
    sget-object v0, Lcom/google/protobuf/x;->g:Lcom/google/protobuf/x;

    iput-object v0, p0, Lcom/google/protobuf/H$P;->h:Lcom/google/protobuf/x;

    .line 8
    iput-object p1, p0, Lcom/google/protobuf/H$P;->i:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 9
    iput-byte p1, p0, Lcom/google/protobuf/H$P;->j:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/H$P;-><init>(Lcom/google/protobuf/w0$b;)V

    return-void
.end method

.method public static synthetic A6(Lcom/google/protobuf/H$P;Lcom/google/protobuf/x;)Lcom/google/protobuf/x;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$P;->h:Lcom/google/protobuf/x;

    return-object p1
.end method

.method public static synthetic B6(Lcom/google/protobuf/H$P;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$P;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic C6(Lcom/google/protobuf/H$P;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$P;->i:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic D6(Lcom/google/protobuf/H$P;I)I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$P;->b:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/H$P;->b:I

    return p1
.end method

.method public static E6()Lcom/google/protobuf/H$P;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$P;->s:Lcom/google/protobuf/H$P;

    return-object v0
.end method

.method public static G6()Lcom/google/protobuf/H$P$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$P;->s:Lcom/google/protobuf/H$P;

    invoke-virtual {v0}, Lcom/google/protobuf/H$P;->W6()Lcom/google/protobuf/H$P$b;

    move-result-object v0

    return-object v0
.end method

.method public static H6(Lcom/google/protobuf/H$P;)Lcom/google/protobuf/H$P$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$P;->s:Lcom/google/protobuf/H$P;

    invoke-virtual {v0}, Lcom/google/protobuf/H$P;->W6()Lcom/google/protobuf/H$P$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/H$P$b;->L6(Lcom/google/protobuf/H$P;)Lcom/google/protobuf/H$P$b;

    move-result-object p0

    return-object p0
.end method

.method public static K6(Ljava/io/InputStream;)Lcom/google/protobuf/H$P;
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

    sget-object v0, Lcom/google/protobuf/H$P;->t:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$P;

    return-object p0
.end method

.method public static L6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$P;
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

    sget-object v0, Lcom/google/protobuf/H$P;->t:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$P;

    return-object p0
.end method

.method public static M6(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$P;
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

    sget-object v0, Lcom/google/protobuf/H$P;->t:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$P;

    return-object p0
.end method

.method public static N6(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$P;
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

    sget-object v0, Lcom/google/protobuf/H$P;->t:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$P;

    return-object p0
.end method

.method public static O6(Lcom/google/protobuf/C;)Lcom/google/protobuf/H$P;
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

    sget-object v0, Lcom/google/protobuf/H$P;->t:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$P;

    return-object p0
.end method

.method public static P6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$P;
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

    sget-object v0, Lcom/google/protobuf/H$P;->t:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$P;

    return-object p0
.end method

.method public static Q6(Ljava/io/InputStream;)Lcom/google/protobuf/H$P;
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

    sget-object v0, Lcom/google/protobuf/H$P;->t:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$P;

    return-object p0
.end method

.method public static R6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$P;
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

    sget-object v0, Lcom/google/protobuf/H$P;->t:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$P;

    return-object p0
.end method

.method public static S6(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/H$P;
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

    sget-object v0, Lcom/google/protobuf/H$P;->t:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$P;

    return-object p0
.end method

.method public static T6(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$P;
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

    sget-object v0, Lcom/google/protobuf/H$P;->t:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$P;

    return-object p0
.end method

.method public static U6([B)Lcom/google/protobuf/H$P;
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

    sget-object v0, Lcom/google/protobuf/H$P;->t:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$P;

    return-object p0
.end method

.method public static V6([BLcom/google/protobuf/d0;)Lcom/google/protobuf/H$P;
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

    sget-object v0, Lcom/google/protobuf/H$P;->t:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$P;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->y()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$P;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$P;->t:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public static synthetic t6(Lcom/google/protobuf/H$P;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$P;->c:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic u6(Lcom/google/protobuf/H$P;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$P;->c:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic v6(Lcom/google/protobuf/H$P;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$P;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic w6(Lcom/google/protobuf/H$P;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$P;->d:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic x6(Lcom/google/protobuf/H$P;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/protobuf/H$P;->e:J

    return-wide p1
.end method

.method public static synthetic y6(Lcom/google/protobuf/H$P;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/protobuf/H$P;->f:J

    return-wide p1
.end method

.method public static synthetic z6(Lcom/google/protobuf/H$P;D)D
    .locals 0

    iput-wide p1, p0, Lcom/google/protobuf/H$P;->g:D

    return-wide p1
.end method


# virtual methods
.method public A1()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$P;->d:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/google/protobuf/H$P;->d:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public C3()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$P;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public E()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$P;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F6()Lcom/google/protobuf/H$P;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$P;->s:Lcom/google/protobuf/H$P;

    return-object v0
.end method

.method public I6()Lcom/google/protobuf/H$P$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$P;->G6()Lcom/google/protobuf/H$P$b;

    move-result-object v0

    return-object v0
.end method

.method public J6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/H$P$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/H$P$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/H$P$b;-><init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/H$a;)V

    return-object v0
.end method

.method public O3()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$P;->i:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$P;->i:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public R0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$P$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$P;->c:Ljava/util/List;

    return-object v0
.end method

.method public T1()J
    .locals 2

    iget-wide v0, p0, Lcom/google/protobuf/H$P;->f:J

    return-wide v0
.end method

.method public W6()Lcom/google/protobuf/H$P$b;
    .locals 2

    sget-object v0, Lcom/google/protobuf/H$P;->s:Lcom/google/protobuf/H$P;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/H$P$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/H$P$b;-><init>(Lcom/google/protobuf/H$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/H$P$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/H$P$b;-><init>(Lcom/google/protobuf/H$a;)V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/H$P$b;->L6(Lcom/google/protobuf/H$P;)Lcom/google/protobuf/H$P$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public Y4()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$P;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c6()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$P;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
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
    instance-of v1, p1, Lcom/google/protobuf/H$P;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/protobuf/H$P;

    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->R0()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$P;->R0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->k1()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$P;->k1()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->k1()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->A1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$P;->A1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->q3()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$P;->q3()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->q3()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->l2()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/protobuf/H$P;->l2()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->Y4()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$P;->Y4()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->Y4()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->T1()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/protobuf/H$P;->T1()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->q4()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$P;->q4()Z

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->q4()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->getDoubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/protobuf/H$P;->getDoubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->E()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$P;->E()Z

    move-result v3

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->E()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->getStringValue()Lcom/google/protobuf/x;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$P;->getStringValue()Lcom/google/protobuf/x;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/x;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->c6()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$P;->c6()Z

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->c6()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->v4()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$P;->v4()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/r2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->F6()Lcom/google/protobuf/H$P;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->F6()Lcom/google/protobuf/H$P;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    iget-wide v0, p0, Lcom/google/protobuf/H$P;->g:D

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$P;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$P;->t:Lcom/google/protobuf/w1;

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

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/H$P;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/H$P;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/b1;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/protobuf/H$P;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/protobuf/H$P;->d:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget v0, p0, Lcom/google/protobuf/H$P;->b:I

    and-int/2addr v0, v3

    const/4 v2, 0x4

    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/google/protobuf/H$P;->e:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->a1(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    iget v0, p0, Lcom/google/protobuf/H$P;->b:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/google/protobuf/H$P;->f:J

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->y0(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    iget v0, p0, Lcom/google/protobuf/H$P;->b:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-wide v3, p0, Lcom/google/protobuf/H$P;->g:D

    invoke-static {v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->i0(ID)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    iget v0, p0, Lcom/google/protobuf/H$P;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v3, p0, Lcom/google/protobuf/H$P;->h:Lcom/google/protobuf/x;

    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->g0(ILcom/google/protobuf/x;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    iget v0, p0, Lcom/google/protobuf/H$P;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/protobuf/H$P;->i:Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v1
.end method

.method public getStringValue()Lcom/google/protobuf/x;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$P;->h:Lcom/google/protobuf/x;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/H$P;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->C3()I

    move-result v0

    if-lez v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->R0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->k1()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->A1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->q3()Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->l2()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/D0;->s(J)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->Y4()Z

    move-result v0

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->T1()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/D0;->s(J)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->q4()Z

    move-result v0

    if-eqz v0, :cond_5

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->getDoubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/D0;->s(J)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->E()Z

    move-result v0

    if-eqz v0, :cond_6

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->getStringValue()Lcom/google/protobuf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/x;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->c6()Z

    move-result v0

    if-eqz v0, :cond_7

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->v4()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
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

    invoke-static {}, Lcom/google/protobuf/H;->z()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/H$P;

    const-class v2, Lcom/google/protobuf/H$P$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/google/protobuf/H$P;->j:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->C3()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$P;->w2(I)Lcom/google/protobuf/H$P$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/H$P$c;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/google/protobuf/H$P;->j:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput-byte v1, p0, Lcom/google/protobuf/H$P;->j:B

    return v1
.end method

.method public k1()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$P;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public k2(I)Lcom/google/protobuf/H$P$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$P;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$P$d;

    return-object p1
.end method

.method public l2()J
    .locals 2

    iget-wide v0, p0, Lcom/google/protobuf/H$P;->e:J

    return-wide v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->I6()Lcom/google/protobuf/H$P$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$P;->J6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/H$P$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->I6()Lcom/google/protobuf/H$P$b;

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

    new-instance p1, Lcom/google/protobuf/H$P;

    invoke-direct {p1}, Lcom/google/protobuf/H$P;-><init>()V

    return-object p1
.end method

.method public q3()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$P;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q4()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$P;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q5()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$P;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$P;->d:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->W6()Lcom/google/protobuf/H$P$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$P;->W6()Lcom/google/protobuf/H$P$b;

    move-result-object v0

    return-object v0
.end method

.method public v4()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$P;->i:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/google/protobuf/H$P;->i:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public w2(I)Lcom/google/protobuf/H$P$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$P;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$P$c;

    return-object p1
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

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/H$P;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/H$P;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/b1;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/H$P;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protobuf/H$P;->d:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/google/protobuf/H$P;->b:I

    and-int/2addr v0, v2

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/google/protobuf/H$P;->e:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->f(IJ)V

    :cond_2
    iget v0, p0, Lcom/google/protobuf/H$P;->b:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/protobuf/H$P;->f:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L(IJ)V

    :cond_3
    iget v0, p0, Lcom/google/protobuf/H$P;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/google/protobuf/H$P;->g:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ID)V

    :cond_4
    iget v0, p0, Lcom/google/protobuf/H$P;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/protobuf/H$P;->h:Lcom/google/protobuf/x;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->h(ILcom/google/protobuf/x;)V

    :cond_5
    iget v0, p0, Lcom/google/protobuf/H$P;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/H$P;->i:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public z3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/H$P$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$P;->c:Ljava/util/List;

    return-object v0
.end method
