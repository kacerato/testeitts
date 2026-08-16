.class public final Lcom/google/protobuf/H$n;
.super Lcom/google/protobuf/w0;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/H$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/H$n$b;,
        Lcom/google/protobuf/H$n$c;,
        Lcom/google/protobuf/H$n$d;
    }
.end annotation


# static fields
.field public static final A:Lcom/google/protobuf/H$n;

.field public static final B:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$n;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final o:J = 0x0L

.field public static final p:I = 0x1

.field public static final q:I = 0x3

.field public static final r:I = 0x4

.field public static final s:I = 0x5

.field public static final t:I = 0x6

.field public static final u:I = 0x2

.field public static final v:I = 0x7

.field public static final w:I = 0x9

.field public static final x:I = 0xa

.field public static final y:I = 0x8

.field public static final z:I = 0x11


# instance fields
.field public b:I

.field public volatile c:Ljava/lang/Object;

.field public d:I

.field public e:I

.field public f:I

.field public volatile g:Ljava/lang/Object;

.field public volatile h:Ljava/lang/Object;

.field public volatile i:Ljava/lang/Object;

.field public j:I

.field public volatile k:Ljava/lang/Object;

.field public l:Lcom/google/protobuf/H$p;

.field public m:Z

.field public n:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/H$n;

    invoke-direct {v0}, Lcom/google/protobuf/H$n;-><init>()V

    sput-object v0, Lcom/google/protobuf/H$n;->A:Lcom/google/protobuf/H$n;

    new-instance v0, Lcom/google/protobuf/H$n$a;

    invoke-direct {v0}, Lcom/google/protobuf/H$n$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/H$n;->B:Lcom/google/protobuf/w1;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/w0;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/H$n;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lcom/google/protobuf/H$n;->d:I

    const/4 v2, 0x1

    .line 17
    iput v2, p0, Lcom/google/protobuf/H$n;->e:I

    .line 18
    iput v2, p0, Lcom/google/protobuf/H$n;->f:I

    .line 19
    iput-object v0, p0, Lcom/google/protobuf/H$n;->g:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lcom/google/protobuf/H$n;->h:Ljava/lang/Object;

    .line 21
    iput-object v0, p0, Lcom/google/protobuf/H$n;->i:Ljava/lang/Object;

    .line 22
    iput v1, p0, Lcom/google/protobuf/H$n;->j:I

    .line 23
    iput-object v0, p0, Lcom/google/protobuf/H$n;->k:Ljava/lang/Object;

    .line 24
    iput-boolean v1, p0, Lcom/google/protobuf/H$n;->m:Z

    const/4 v1, -0x1

    .line 25
    iput-byte v1, p0, Lcom/google/protobuf/H$n;->n:B

    .line 26
    iput-object v0, p0, Lcom/google/protobuf/H$n;->c:Ljava/lang/Object;

    .line 27
    iput v2, p0, Lcom/google/protobuf/H$n;->e:I

    .line 28
    iput v2, p0, Lcom/google/protobuf/H$n;->f:I

    .line 29
    iput-object v0, p0, Lcom/google/protobuf/H$n;->g:Ljava/lang/Object;

    .line 30
    iput-object v0, p0, Lcom/google/protobuf/H$n;->h:Ljava/lang/Object;

    .line 31
    iput-object v0, p0, Lcom/google/protobuf/H$n;->i:Ljava/lang/Object;

    .line 32
    iput-object v0, p0, Lcom/google/protobuf/H$n;->k:Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/google/protobuf/H$n;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/protobuf/H$n;->d:I

    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lcom/google/protobuf/H$n;->e:I

    .line 6
    iput v1, p0, Lcom/google/protobuf/H$n;->f:I

    .line 7
    iput-object p1, p0, Lcom/google/protobuf/H$n;->g:Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lcom/google/protobuf/H$n;->h:Ljava/lang/Object;

    .line 9
    iput-object p1, p0, Lcom/google/protobuf/H$n;->i:Ljava/lang/Object;

    .line 10
    iput v0, p0, Lcom/google/protobuf/H$n;->j:I

    .line 11
    iput-object p1, p0, Lcom/google/protobuf/H$n;->k:Ljava/lang/Object;

    .line 12
    iput-boolean v0, p0, Lcom/google/protobuf/H$n;->m:Z

    const/4 p1, -0x1

    .line 13
    iput-byte p1, p0, Lcom/google/protobuf/H$n;->n:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/H$n;-><init>(Lcom/google/protobuf/w0$b;)V

    return-void
.end method

.method public static synthetic A6(Lcom/google/protobuf/H$n;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$n;->h:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic B6(Lcom/google/protobuf/H$n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$n;->h:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic C6(Lcom/google/protobuf/H$n;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$n;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic D6(Lcom/google/protobuf/H$n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$n;->i:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic E6(Lcom/google/protobuf/H$n;I)I
    .locals 0

    iput p1, p0, Lcom/google/protobuf/H$n;->j:I

    return p1
.end method

.method public static synthetic F6(Lcom/google/protobuf/H$n;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$n;->k:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic G6(Lcom/google/protobuf/H$n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$n;->k:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic H6(Lcom/google/protobuf/H$n;Lcom/google/protobuf/H$p;)Lcom/google/protobuf/H$p;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$n;->l:Lcom/google/protobuf/H$p;

    return-object p1
.end method

.method public static synthetic I6(Lcom/google/protobuf/H$n;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/H$n;->m:Z

    return p1
.end method

.method public static synthetic J6(Lcom/google/protobuf/H$n;I)I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/H$n;->b:I

    return p1
.end method

.method public static K6()Lcom/google/protobuf/H$n;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$n;->A:Lcom/google/protobuf/H$n;

    return-object v0
.end method

.method public static M6()Lcom/google/protobuf/H$n$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$n;->A:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->c7()Lcom/google/protobuf/H$n$b;

    move-result-object v0

    return-object v0
.end method

.method public static N6(Lcom/google/protobuf/H$n;)Lcom/google/protobuf/H$n$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$n;->A:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->c7()Lcom/google/protobuf/H$n$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/H$n$b;->G6(Lcom/google/protobuf/H$n;)Lcom/google/protobuf/H$n$b;

    move-result-object p0

    return-object p0
.end method

.method public static Q6(Ljava/io/InputStream;)Lcom/google/protobuf/H$n;
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

    sget-object v0, Lcom/google/protobuf/H$n;->B:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$n;

    return-object p0
.end method

.method public static R6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$n;
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

    sget-object v0, Lcom/google/protobuf/H$n;->B:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$n;

    return-object p0
.end method

.method public static S6(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$n;
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

    sget-object v0, Lcom/google/protobuf/H$n;->B:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$n;

    return-object p0
.end method

.method public static T6(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$n;
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

    sget-object v0, Lcom/google/protobuf/H$n;->B:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$n;

    return-object p0
.end method

.method public static U6(Lcom/google/protobuf/C;)Lcom/google/protobuf/H$n;
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

    sget-object v0, Lcom/google/protobuf/H$n;->B:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$n;

    return-object p0
.end method

.method public static V6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$n;
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

    sget-object v0, Lcom/google/protobuf/H$n;->B:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$n;

    return-object p0
.end method

.method public static W6(Ljava/io/InputStream;)Lcom/google/protobuf/H$n;
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

    sget-object v0, Lcom/google/protobuf/H$n;->B:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$n;

    return-object p0
.end method

.method public static X6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$n;
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

    sget-object v0, Lcom/google/protobuf/H$n;->B:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$n;

    return-object p0
.end method

.method public static Y6(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/H$n;
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

    sget-object v0, Lcom/google/protobuf/H$n;->B:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$n;

    return-object p0
.end method

.method public static Z6(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$n;
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

    sget-object v0, Lcom/google/protobuf/H$n;->B:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$n;

    return-object p0
.end method

.method public static a7([B)Lcom/google/protobuf/H$n;
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

    sget-object v0, Lcom/google/protobuf/H$n;->B:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$n;

    return-object p0
.end method

.method public static b7([BLcom/google/protobuf/d0;)Lcom/google/protobuf/H$n;
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

    sget-object v0, Lcom/google/protobuf/H$n;->B:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$n;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->T()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$n;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$n;->B:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public static synthetic t6(Lcom/google/protobuf/H$n;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$n;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic u6(Lcom/google/protobuf/H$n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$n;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic v6(Lcom/google/protobuf/H$n;I)I
    .locals 0

    iput p1, p0, Lcom/google/protobuf/H$n;->d:I

    return p1
.end method

.method public static synthetic w6(Lcom/google/protobuf/H$n;I)I
    .locals 0

    iput p1, p0, Lcom/google/protobuf/H$n;->e:I

    return p1
.end method

.method public static synthetic x6(Lcom/google/protobuf/H$n;I)I
    .locals 0

    iput p1, p0, Lcom/google/protobuf/H$n;->f:I

    return p1
.end method

.method public static synthetic y6(Lcom/google/protobuf/H$n;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$n;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic z6(Lcom/google/protobuf/H$n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$n;->g:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public F()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$n;->i:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$n;->i:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public I2()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$n;->h:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$n;->h:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public I5()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$n;->h:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/google/protobuf/H$n;->h:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public J()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n;->j:I

    return v0
.end method

.method public L6()Lcom/google/protobuf/H$n;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$n;->A:Lcom/google/protobuf/H$n;

    return-object v0
.end method

.method public N0()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public O6()Lcom/google/protobuf/H$n$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$n;->M6()Lcom/google/protobuf/H$n$b;

    move-result-object v0

    return-object v0
.end method

.method public P6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/H$n$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/H$n$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/H$n$b;-><init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/H$a;)V

    return-object v0
.end method

.method public S3()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public W3()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$n;->m:Z

    return v0
.end method

.method public c7()Lcom/google/protobuf/H$n$b;
    .locals 2

    sget-object v0, Lcom/google/protobuf/H$n;->A:Lcom/google/protobuf/H$n;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/H$n$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/H$n$b;-><init>(Lcom/google/protobuf/H$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/H$n$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/H$n$b;-><init>(Lcom/google/protobuf/H$a;)V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/H$n$b;->G6(Lcom/google/protobuf/H$n;)Lcom/google/protobuf/H$n$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public e()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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
    instance-of v1, p1, Lcom/google/protobuf/H$n;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/protobuf/H$n;

    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->hasName()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->hasName()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->hasName()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->p0()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->p0()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->p0()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->getNumber()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->N0()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->N0()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->N0()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/google/protobuf/H$n;->e:I

    iget v2, p1, Lcom/google/protobuf/H$n;->e:I

    if-eq v1, v2, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->j2()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->j2()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->j2()Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/google/protobuf/H$n;->f:I

    iget v2, p1, Lcom/google/protobuf/H$n;->f:I

    if-eq v1, v2, :cond_9

    return v3

    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->n4()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->n4()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->n4()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->W3()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->W3()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    :cond_c
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->W3()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->I5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->I5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->h3()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->h3()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    :cond_e
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->h3()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    :cond_f
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->z5()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->z5()Z

    move-result v2

    if-eq v1, v2, :cond_10

    return v3

    :cond_10
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->z5()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->J()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->J()I

    move-result v2

    if-eq v1, v2, :cond_11

    return v3

    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->w3()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->w3()Z

    move-result v2

    if-eq v1, v2, :cond_12

    return v3

    :cond_12
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->w3()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->v0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->v0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v3

    :cond_13
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->e()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->e()Z

    move-result v2

    if-eq v1, v2, :cond_14

    return v3

    :cond_14
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->e()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->getOptions()Lcom/google/protobuf/H$p;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->getOptions()Lcom/google/protobuf/H$p;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/H$p;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v3

    :cond_15
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->S3()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->S3()Z

    move-result v2

    if-eq v1, v2, :cond_16

    return v3

    :cond_16
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->S3()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->c2()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->c2()Z

    move-result v2

    if-eq v1, v2, :cond_17

    return v3

    :cond_17
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/r2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    return v3

    :cond_18
    return v0
.end method

.method public f()Lcom/google/protobuf/H$q;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$n;->l:Lcom/google/protobuf/H$p;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/H$p;->P6()Lcom/google/protobuf/H$p;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->L6()Lcom/google/protobuf/H$n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->L6()Lcom/google/protobuf/H$n;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$n;->i:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/google/protobuf/H$n;->i:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getLabel()Lcom/google/protobuf/H$n$c;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n;->e:I

    invoke-static {v0}, Lcom/google/protobuf/H$n$c;->a(I)Lcom/google/protobuf/H$n$c;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/H$n$c;->LABEL_OPTIONAL:Lcom/google/protobuf/H$n$c;

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$n;->c:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/google/protobuf/H$n;->c:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getNameBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$n;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$n;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n;->d:I

    return v0
.end method

.method public getOptions()Lcom/google/protobuf/H$p;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$n;->l:Lcom/google/protobuf/H$p;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/H$p;->P6()Lcom/google/protobuf/H$p;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$n;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$n;->B:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/H$n;->c:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/lit8 v1, v1, 0x20

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/protobuf/H$n;->h:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/protobuf/H$n;->d:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->w0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/google/protobuf/H$n;->b:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/google/protobuf/H$n;->e:I

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/google/protobuf/H$n;->b:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    iget v3, p0, Lcom/google/protobuf/H$n;->f:I

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    iget-object v3, p0, Lcom/google/protobuf/H$n;->g:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    iget-object v3, p0, Lcom/google/protobuf/H$n;->i:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->getOptions()Lcom/google/protobuf/H$p;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    iget v2, p0, Lcom/google/protobuf/H$n;->j:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->w0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/protobuf/H$n;->k:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_b

    const/16 v1, 0x11

    iget-boolean v2, p0, Lcom/google/protobuf/H$n;->m:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getType()Lcom/google/protobuf/H$n$d;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n;->f:I

    invoke-static {v0}, Lcom/google/protobuf/H$n$d;->a(I)Lcom/google/protobuf/H$n$d;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/H$n$d;->TYPE_DOUBLE:Lcom/google/protobuf/H$n$d;

    :cond_0
    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$n;->g:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/google/protobuf/H$n;->g:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public h3()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasName()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

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
    invoke-static {}, Lcom/google/protobuf/H$n;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->p0()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->getNumber()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->N0()Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/google/protobuf/H$n;->e:I

    add-int/2addr v1, v0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->j2()Z

    move-result v0

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/google/protobuf/H$n;->f:I

    add-int/2addr v1, v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->n4()Z

    move-result v0

    if-eqz v0, :cond_5

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->W3()Z

    move-result v0

    if-eqz v0, :cond_6

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->I5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->h3()Z

    move-result v0

    if-eqz v0, :cond_7

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->z5()Z

    move-result v0

    if-eqz v0, :cond_8

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->J()I

    move-result v0

    add-int/2addr v1, v0

    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->w3()Z

    move-result v0

    if-eqz v0, :cond_9

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->v0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->getOptions()Lcom/google/protobuf/H$p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$p;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->S3()Z

    move-result v0

    if-eqz v0, :cond_b

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x11

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->c2()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_b
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

    invoke-static {}, Lcom/google/protobuf/H;->U()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/H$n;

    const-class v2, Lcom/google/protobuf/H$n$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    iget-byte v0, p0, Lcom/google/protobuf/H$n;->n:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->getOptions()Lcom/google/protobuf/H$p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$p;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcom/google/protobuf/H$n;->n:B

    return v2

    :cond_2
    iput-byte v1, p0, Lcom/google/protobuf/H$n;->n:B

    return v1
.end method

.method public j2()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n4()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->O6()Lcom/google/protobuf/H$n$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$n;->P6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/H$n$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->O6()Lcom/google/protobuf/H$n$b;

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

    new-instance p1, Lcom/google/protobuf/H$n;

    invoke-direct {p1}, Lcom/google/protobuf/H$n;-><init>()V

    return-object p1
.end method

.method public p0()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

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
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->c7()Lcom/google/protobuf/H$n$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->c7()Lcom/google/protobuf/H$n$b;

    move-result-object v0

    return-object v0
.end method

.method public v0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$n;->k:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/google/protobuf/H$n;->k:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public w3()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$n;->c:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/H$n;->h:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/protobuf/H$n;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->i(II)V

    :cond_2
    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/protobuf/H$n;->e:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_3
    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget v2, p0, Lcom/google/protobuf/H$n;->f:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_4
    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/protobuf/H$n;->g:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_5
    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/protobuf/H$n;->i:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_6
    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/protobuf/H$n;->getOptions()Lcom/google/protobuf/H$p;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_7
    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    iget v1, p0, Lcom/google/protobuf/H$n;->j:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->i(II)V

    :cond_8
    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/protobuf/H$n;->k:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_9
    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    const/16 v0, 0x11

    iget-boolean v1, p0, Lcom/google/protobuf/H$n;->m:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public x5()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$n;->g:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$n;->g:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public y0()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$n;->k:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$n;->k:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public z5()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n;->b:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
