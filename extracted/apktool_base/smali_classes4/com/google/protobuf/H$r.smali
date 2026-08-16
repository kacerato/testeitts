.class public final Lcom/google/protobuf/H$r;
.super Lcom/google/protobuf/w0;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/H$s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/H$r$b;
    }
.end annotation


# static fields
.field public static final A:I = 0x8

.field public static final B:I = 0x9

.field public static final C:I = 0xc

.field public static final D:I = 0xd

.field public static final E:Lcom/google/protobuf/H$r;

.field public static final F:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$r;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final q:J = 0x0L

.field public static final r:I = 0x1

.field public static final s:I = 0x2

.field public static final t:I = 0x3

.field public static final u:I = 0xa

.field public static final v:I = 0xb

.field public static final w:I = 0x4

.field public static final x:I = 0x5

.field public static final y:I = 0x6

.field public static final z:I = 0x7


# instance fields
.field public b:I

.field public volatile c:Ljava/lang/Object;

.field public volatile d:Ljava/lang/Object;

.field public e:Lcom/google/protobuf/J0;

.field public f:Lcom/google/protobuf/D0$g;

.field public g:Lcom/google/protobuf/D0$g;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$b;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$d;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$J;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$n;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lcom/google/protobuf/H$v;

.field public m:Lcom/google/protobuf/H$N;

.field public volatile n:Ljava/lang/Object;

.field public volatile o:Ljava/lang/Object;

.field public p:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/H$r;

    invoke-direct {v0}, Lcom/google/protobuf/H$r;-><init>()V

    sput-object v0, Lcom/google/protobuf/H$r;->E:Lcom/google/protobuf/H$r;

    new-instance v0, Lcom/google/protobuf/H$r$a;

    invoke-direct {v0}, Lcom/google/protobuf/H$r$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/H$r;->F:Lcom/google/protobuf/w1;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/w0;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/H$r;->c:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/google/protobuf/H$r;->d:Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/google/protobuf/J0;->n()Lcom/google/protobuf/J0;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r;->e:Lcom/google/protobuf/J0;

    .line 13
    iput-object v0, p0, Lcom/google/protobuf/H$r;->n:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lcom/google/protobuf/H$r;->o:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 15
    iput-byte v1, p0, Lcom/google/protobuf/H$r;->p:B

    .line 16
    iput-object v0, p0, Lcom/google/protobuf/H$r;->c:Ljava/lang/Object;

    .line 17
    iput-object v0, p0, Lcom/google/protobuf/H$r;->d:Ljava/lang/Object;

    .line 18
    invoke-static {}, Lcom/google/protobuf/J0;->n()Lcom/google/protobuf/J0;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r;->e:Lcom/google/protobuf/J0;

    .line 19
    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r;->f:Lcom/google/protobuf/D0$g;

    .line 20
    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r;->g:Lcom/google/protobuf/D0$g;

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r;->h:Ljava/util/List;

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r;->i:Ljava/util/List;

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r;->j:Ljava/util/List;

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r;->k:Ljava/util/List;

    .line 25
    iput-object v0, p0, Lcom/google/protobuf/H$r;->n:Ljava/lang/Object;

    .line 26
    iput-object v0, p0, Lcom/google/protobuf/H$r;->o:Ljava/lang/Object;

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

    .line 3
    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/H$r;->c:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/H$r;->d:Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/google/protobuf/J0;->n()Lcom/google/protobuf/J0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r;->e:Lcom/google/protobuf/J0;

    .line 6
    iput-object p1, p0, Lcom/google/protobuf/H$r;->n:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lcom/google/protobuf/H$r;->o:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 8
    iput-byte p1, p0, Lcom/google/protobuf/H$r;->p:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/H$r;-><init>(Lcom/google/protobuf/w0$b;)V

    return-void
.end method

.method public static synthetic A6(Lcom/google/protobuf/H$r;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$r;->i:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic B6(Lcom/google/protobuf/H$r;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$r;->j:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic C6(Lcom/google/protobuf/H$r;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$r;->j:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic D6(Lcom/google/protobuf/H$r;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$r;->k:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic E6(Lcom/google/protobuf/H$r;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$r;->k:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic F6(Lcom/google/protobuf/H$r;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$r;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic G6(Lcom/google/protobuf/H$r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$r;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic H6(Lcom/google/protobuf/H$r;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$r;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic I6(Lcom/google/protobuf/H$r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$r;->d:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic J6(Lcom/google/protobuf/H$r;)Lcom/google/protobuf/J0;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$r;->e:Lcom/google/protobuf/J0;

    return-object p0
.end method

.method public static synthetic K6(Lcom/google/protobuf/H$r;Lcom/google/protobuf/J0;)Lcom/google/protobuf/J0;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$r;->e:Lcom/google/protobuf/J0;

    return-object p1
.end method

.method public static synthetic L6(Lcom/google/protobuf/H$r;Lcom/google/protobuf/H$v;)Lcom/google/protobuf/H$v;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$r;->l:Lcom/google/protobuf/H$v;

    return-object p1
.end method

.method public static synthetic M6(Lcom/google/protobuf/H$r;Lcom/google/protobuf/H$N;)Lcom/google/protobuf/H$N;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$r;->m:Lcom/google/protobuf/H$N;

    return-object p1
.end method

.method public static synthetic N6(Lcom/google/protobuf/H$r;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$r;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic O6(Lcom/google/protobuf/H$r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$r;->n:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic P6(Lcom/google/protobuf/H$r;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$r;->o:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic Q6(Lcom/google/protobuf/H$r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$r;->o:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic R6(Lcom/google/protobuf/H$r;I)I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$r;->b:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/H$r;->b:I

    return p1
.end method

.method public static S6()Lcom/google/protobuf/H$r;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$r;->E:Lcom/google/protobuf/H$r;

    return-object v0
.end method

.method public static V6()Lcom/google/protobuf/H$r$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$r;->E:Lcom/google/protobuf/H$r;

    invoke-virtual {v0}, Lcom/google/protobuf/H$r;->l7()Lcom/google/protobuf/H$r$b;

    move-result-object v0

    return-object v0
.end method

.method public static W6(Lcom/google/protobuf/H$r;)Lcom/google/protobuf/H$r$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$r;->E:Lcom/google/protobuf/H$r;

    invoke-virtual {v0}, Lcom/google/protobuf/H$r;->l7()Lcom/google/protobuf/H$r$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/H$r$b;->O7(Lcom/google/protobuf/H$r;)Lcom/google/protobuf/H$r$b;

    move-result-object p0

    return-object p0
.end method

.method public static Z6(Ljava/io/InputStream;)Lcom/google/protobuf/H$r;
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

    sget-object v0, Lcom/google/protobuf/H$r;->F:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$r;

    return-object p0
.end method

.method public static a7(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$r;
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

    sget-object v0, Lcom/google/protobuf/H$r;->F:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$r;

    return-object p0
.end method

.method public static b7(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$r;
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

    sget-object v0, Lcom/google/protobuf/H$r;->F:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$r;

    return-object p0
.end method

.method public static c7(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$r;
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

    sget-object v0, Lcom/google/protobuf/H$r;->F:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$r;

    return-object p0
.end method

.method public static d7(Lcom/google/protobuf/C;)Lcom/google/protobuf/H$r;
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

    sget-object v0, Lcom/google/protobuf/H$r;->F:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$r;

    return-object p0
.end method

.method public static e7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$r;
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

    sget-object v0, Lcom/google/protobuf/H$r;->F:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$r;

    return-object p0
.end method

.method public static f7(Ljava/io/InputStream;)Lcom/google/protobuf/H$r;
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

    sget-object v0, Lcom/google/protobuf/H$r;->F:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$r;

    return-object p0
.end method

.method public static g7(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$r;
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

    sget-object v0, Lcom/google/protobuf/H$r;->F:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$r;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->S()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static h7(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/H$r;
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

    sget-object v0, Lcom/google/protobuf/H$r;->F:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$r;

    return-object p0
.end method

.method public static i7(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$r;
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

    sget-object v0, Lcom/google/protobuf/H$r;->F:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$r;

    return-object p0
.end method

.method public static j7([B)Lcom/google/protobuf/H$r;
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

    sget-object v0, Lcom/google/protobuf/H$r;->F:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$r;

    return-object p0
.end method

.method public static k7([BLcom/google/protobuf/d0;)Lcom/google/protobuf/H$r;
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

    sget-object v0, Lcom/google/protobuf/H$r;->F:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$r;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$r;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$r;->F:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public static synthetic t6(Lcom/google/protobuf/H$r;)Lcom/google/protobuf/D0$g;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$r;->f:Lcom/google/protobuf/D0$g;

    return-object p0
.end method

.method public static synthetic u6(Lcom/google/protobuf/H$r;Lcom/google/protobuf/D0$g;)Lcom/google/protobuf/D0$g;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$r;->f:Lcom/google/protobuf/D0$g;

    return-object p1
.end method

.method public static synthetic v6(Lcom/google/protobuf/H$r;)Lcom/google/protobuf/D0$g;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$r;->g:Lcom/google/protobuf/D0$g;

    return-object p0
.end method

.method public static synthetic w6(Lcom/google/protobuf/H$r;Lcom/google/protobuf/D0$g;)Lcom/google/protobuf/D0$g;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$r;->g:Lcom/google/protobuf/D0$g;

    return-object p1
.end method

.method public static synthetic x6(Lcom/google/protobuf/H$r;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$r;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic y6(Lcom/google/protobuf/H$r;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$r;->h:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic z6(Lcom/google/protobuf/H$r;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$r;->i:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public C()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r;->i:Ljava/util/List;

    return-object v0
.end method

.method public C1()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$r;->n:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r;->n:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public D1()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$r;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D4(I)Lcom/google/protobuf/H$K;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$K;

    return-object p1
.end method

.method public F0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$r;->o:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/google/protobuf/H$r;->o:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public H1(I)Lcom/google/protobuf/H$J;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$J;

    return-object p1
.end method

.method public J5()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$r;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r;->d:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public L()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/H$e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r;->i:Ljava/util/List;

    return-object v0
.end method

.method public P()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public Q3(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r;->g:Lcom/google/protobuf/D0$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/D0$g;->getInt(I)I

    move-result p1

    return p1
.end method

.method public T6()Lcom/google/protobuf/H$r;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$r;->E:Lcom/google/protobuf/H$r;

    return-object v0
.end method

.method public U0()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$r;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public U1(I)Lcom/google/protobuf/x;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r;->e:Lcom/google/protobuf/J0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/J0;->ub(I)Lcom/google/protobuf/x;

    move-result-object p1

    return-object p1
.end method

.method public U3(I)Lcom/google/protobuf/H$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$c;

    return-object p1
.end method

.method public U4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/H$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r;->h:Ljava/util/List;

    return-object v0
.end method

.method public U6()Lcom/google/protobuf/C1;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r;->e:Lcom/google/protobuf/J0;

    return-object v0
.end method

.method public V5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/H$K;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r;->j:Ljava/util/List;

    return-object v0
.end method

.method public W2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$J;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r;->j:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic W4()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->U6()Lcom/google/protobuf/C1;

    move-result-object v0

    return-object v0
.end method

.method public X6()Lcom/google/protobuf/H$r$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$r;->V6()Lcom/google/protobuf/H$r$b;

    move-result-object v0

    return-object v0
.end method

.method public Y6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/H$r$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/H$r$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/H$r$b;-><init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/H$a;)V

    return-object v0
.end method

.method public c0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$n;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r;->k:Ljava/util/List;

    return-object v0
.end method

.method public d2()Lcom/google/protobuf/H$N;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r;->m:Lcom/google/protobuf/H$N;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/H$N;->v6()Lcom/google/protobuf/H$N;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public d4()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r;->e:Lcom/google/protobuf/J0;

    invoke-virtual {v0}, Lcom/google/protobuf/J0;->size()I

    move-result v0

    return v0
.end method

.method public d6()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r;->g:Lcom/google/protobuf/D0$g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$r;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e2()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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
    instance-of v1, p1, Lcom/google/protobuf/H$r;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/protobuf/H$r;

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->hasName()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->hasName()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->hasName()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->hasPackage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->hasPackage()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->hasPackage()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->U6()Lcom/google/protobuf/C1;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->U6()Lcom/google/protobuf/C1;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->l5()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->l5()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->x1()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->x1()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->f2()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->f2()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->C()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->C()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->W2()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->W2()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->c0()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->c0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    :cond_c
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->e()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->e()Z

    move-result v2

    if-eq v1, v2, :cond_d

    return v3

    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->e()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->getOptions()Lcom/google/protobuf/H$v;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->getOptions()Lcom/google/protobuf/H$v;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/H$v;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v3

    :cond_e
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->D1()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->D1()Z

    move-result v2

    if-eq v1, v2, :cond_f

    return v3

    :cond_f
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->D1()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->d2()Lcom/google/protobuf/H$N;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->d2()Lcom/google/protobuf/H$N;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/H$N;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v3

    :cond_10
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->U0()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->U0()Z

    move-result v2

    if-eq v1, v2, :cond_11

    return v3

    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->U0()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v3

    :cond_12
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->u4()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->u4()Z

    move-result v2

    if-eq v1, v2, :cond_13

    return v3

    :cond_13
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->u4()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->F0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->F0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v3

    :cond_14
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/r2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    return v3

    :cond_15
    return v0
.end method

.method public f()Lcom/google/protobuf/H$w;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r;->l:Lcom/google/protobuf/H$v;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/H$v;->j7()Lcom/google/protobuf/H$v;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public f0()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public f2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r;->h:Ljava/util/List;

    return-object v0
.end method

.method public f4(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r;->e:Lcom/google/protobuf/J0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/J0;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g4(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r;->f:Lcom/google/protobuf/D0$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/D0$g;->getInt(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->T6()Lcom/google/protobuf/H$r;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->T6()Lcom/google/protobuf/H$r;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$r;->c:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/google/protobuf/H$r;->c:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getNameBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$r;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getOptions()Lcom/google/protobuf/H$v;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r;->l:Lcom/google/protobuf/H$v;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/H$v;->j7()Lcom/google/protobuf/H$v;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$r;->d:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/google/protobuf/H$r;->d:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$r;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$r;->F:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/H$r;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/H$r;->c:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v1, p0, Lcom/google/protobuf/H$r;->b:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/protobuf/H$r;->d:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    move v1, v2

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/google/protobuf/H$r;->e:Lcom/google/protobuf/J0;

    invoke-virtual {v4}, Lcom/google/protobuf/J0;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/google/protobuf/H$r;->e:Lcom/google/protobuf/J0;

    invoke-virtual {v4, v1}, Lcom/google/protobuf/J0;->Ee(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/w0;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->U6()Lcom/google/protobuf/C1;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    move v1, v2

    :goto_2
    iget-object v3, p0, Lcom/google/protobuf/H$r;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/google/protobuf/H$r;->h:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/b1;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_3
    iget-object v3, p0, Lcom/google/protobuf/H$r;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/google/protobuf/H$r;->i:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/b1;

    const/4 v5, 0x5

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_4
    iget-object v3, p0, Lcom/google/protobuf/H$r;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/google/protobuf/H$r;->j:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/b1;

    const/4 v5, 0x6

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_5
    iget-object v3, p0, Lcom/google/protobuf/H$r;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    iget-object v3, p0, Lcom/google/protobuf/H$r;->k:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/b1;

    const/4 v5, 0x7

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    iget v1, p0, Lcom/google/protobuf/H$r;->b:I

    and-int/2addr v1, v4

    const/16 v3, 0x8

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->getOptions()Lcom/google/protobuf/H$v;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/google/protobuf/H$r;->b:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->d2()Lcom/google/protobuf/H$N;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    move v1, v2

    move v3, v1

    :goto_6
    iget-object v4, p0, Lcom/google/protobuf/H$r;->f:Lcom/google/protobuf/D0$g;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_a

    iget-object v4, p0, Lcom/google/protobuf/H$r;->f:Lcom/google/protobuf/D0$g;

    invoke-interface {v4, v1}, Lcom/google/protobuf/D0$g;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->x0(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->l5()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    move v1, v2

    :goto_7
    iget-object v3, p0, Lcom/google/protobuf/H$r;->g:Lcom/google/protobuf/D0$g;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    iget-object v3, p0, Lcom/google/protobuf/H$r;->g:Lcom/google/protobuf/D0$g;

    invoke-interface {v3, v2}, Lcom/google/protobuf/D0$g;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->x0(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->x1()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/H$r;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_c

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/protobuf/H$r;->n:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget v1, p0, Lcom/google/protobuf/H$r;->b:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_d

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/protobuf/H$r;->o:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public h0(I)Lcom/google/protobuf/H$e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$e;

    return-object p1
.end method

.method public hasName()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$r;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasPackage()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$r;->b:I

    and-int/lit8 v0, v0, 0x2

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
    invoke-static {}, Lcom/google/protobuf/H$r;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->hasPackage()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->d4()I

    move-result v0

    if-lez v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->U6()Lcom/google/protobuf/C1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->n1()I

    move-result v0

    if-lez v0, :cond_4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->l5()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->d6()I

    move-result v0

    if-lez v0, :cond_5

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->x1()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->z4()I

    move-result v0

    if-lez v0, :cond_6

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->f2()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->f0()I

    move-result v0

    if-lez v0, :cond_7

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->C()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->e2()I

    move-result v0

    if-lez v0, :cond_8

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->W2()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->P()I

    move-result v0

    if-lez v0, :cond_9

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->c0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->getOptions()Lcom/google/protobuf/H$v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$v;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->D1()Z

    move-result v0

    if-eqz v0, :cond_b

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->d2()Lcom/google/protobuf/H$N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$N;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->U0()Z

    move-result v0

    if-eqz v0, :cond_c

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_c
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->u4()Z

    move-result v0

    if-eqz v0, :cond_d

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->F0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_d
    mul-int/lit8 v1, v1, 0x1d

    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/r2;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v1
.end method

.method public i0(I)Lcom/google/protobuf/H$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$d;

    return-object p1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/google/protobuf/H;->V()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/H$r;

    const-class v2, Lcom/google/protobuf/H$r$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/google/protobuf/H$r;->p:B

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
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->z4()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$r;->j4(I)Lcom/google/protobuf/H$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/H$b;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/google/protobuf/H$r;->p:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->f0()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$r;->i0(I)Lcom/google/protobuf/H$d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/H$d;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    iput-byte v2, p0, Lcom/google/protobuf/H$r;->p:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->e2()I

    move-result v3

    if-ge v0, v3, :cond_7

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$r;->H1(I)Lcom/google/protobuf/H$J;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/H$J;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v2, p0, Lcom/google/protobuf/H$r;->p:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->P()I

    move-result v3

    if-ge v0, v3, :cond_9

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$r;->u0(I)Lcom/google/protobuf/H$n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/H$n;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_8

    iput-byte v2, p0, Lcom/google/protobuf/H$r;->p:B

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->getOptions()Lcom/google/protobuf/H$v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$v;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_a

    iput-byte v2, p0, Lcom/google/protobuf/H$r;->p:B

    return v2

    :cond_a
    iput-byte v1, p0, Lcom/google/protobuf/H$r;->p:B

    return v1
.end method

.method public j4(I)Lcom/google/protobuf/H$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$b;

    return-object p1
.end method

.method public l5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r;->f:Lcom/google/protobuf/D0$g;

    return-object v0
.end method

.method public l7()Lcom/google/protobuf/H$r$b;
    .locals 2

    sget-object v0, Lcom/google/protobuf/H$r;->E:Lcom/google/protobuf/H$r;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/H$r$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/H$r$b;-><init>(Lcom/google/protobuf/H$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/H$r$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/H$r$b;-><init>(Lcom/google/protobuf/H$a;)V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/H$r$b;->O7(Lcom/google/protobuf/H$r;)Lcom/google/protobuf/H$r$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$r;->n:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/google/protobuf/H$r;->n:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public m0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/H$o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r;->k:Ljava/util/List;

    return-object v0
.end method

.method public n1()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r;->f:Lcom/google/protobuf/D0$g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->X6()Lcom/google/protobuf/H$r$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$r;->Y6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/H$r$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->X6()Lcom/google/protobuf/H$r$b;

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

    new-instance p1, Lcom/google/protobuf/H$r;

    invoke-direct {p1}, Lcom/google/protobuf/H$r;-><init>()V

    return-object p1
.end method

.method public o5()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$r;->o:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r;->o:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public r2()Lcom/google/protobuf/H$O;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r;->m:Lcom/google/protobuf/H$N;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/H$N;->v6()Lcom/google/protobuf/H$N;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->l7()Lcom/google/protobuf/H$r$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->l7()Lcom/google/protobuf/H$r$b;

    move-result-object v0

    return-object v0
.end method

.method public u0(I)Lcom/google/protobuf/H$n;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$n;

    return-object p1
.end method

.method public u4()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$r;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
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

    iget v0, p0, Lcom/google/protobuf/H$r;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r;->c:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/google/protobuf/H$r;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/H$r;->d:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/H$r;->e:Lcom/google/protobuf/J0;

    invoke-virtual {v2}, Lcom/google/protobuf/J0;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/protobuf/H$r;->e:Lcom/google/protobuf/J0;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/J0;->Ee(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p1, v3, v2}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/H$r;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/H$r;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/b1;

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/google/protobuf/H$r;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/google/protobuf/H$r;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/b1;

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/google/protobuf/H$r;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/google/protobuf/H$r;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/b1;

    const/4 v4, 0x6

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_4
    iget-object v2, p0, Lcom/google/protobuf/H$r;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/google/protobuf/H$r;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/b1;

    const/4 v4, 0x7

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    iget v1, p0, Lcom/google/protobuf/H$r;->b:I

    and-int/2addr v1, v3

    const/16 v2, 0x8

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->getOptions()Lcom/google/protobuf/H$v;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_7
    iget v1, p0, Lcom/google/protobuf/H$r;->b:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->d2()Lcom/google/protobuf/H$N;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_8
    move v1, v0

    :goto_5
    iget-object v2, p0, Lcom/google/protobuf/H$r;->f:Lcom/google/protobuf/D0$g;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Lcom/google/protobuf/H$r;->f:Lcom/google/protobuf/D0$g;

    invoke-interface {v2, v1}, Lcom/google/protobuf/D0$g;->getInt(I)I

    move-result v2

    const/16 v3, 0xa

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->i(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    iget-object v1, p0, Lcom/google/protobuf/H$r;->g:Lcom/google/protobuf/D0$g;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Lcom/google/protobuf/H$r;->g:Lcom/google/protobuf/D0$g;

    invoke-interface {v1, v0}, Lcom/google/protobuf/D0$g;->getInt(I)I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->i(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    iget v0, p0, Lcom/google/protobuf/H$r;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/protobuf/H$r;->n:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_b
    iget v0, p0, Lcom/google/protobuf/H$r;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/protobuf/H$r;->o:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public x1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r;->g:Lcom/google/protobuf/D0$g;

    return-object v0
.end method

.method public z0(I)Lcom/google/protobuf/H$o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$o;

    return-object p1
.end method

.method public z4()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
