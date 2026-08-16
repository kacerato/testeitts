.class public final Lcom/google/protobuf/H$p;
.super Lcom/google/protobuf/w0$e;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/H$q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/H$p$b;,
        Lcom/google/protobuf/H$p$f;,
        Lcom/google/protobuf/H$p$e;,
        Lcom/google/protobuf/H$p$d;,
        Lcom/google/protobuf/H$p$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$e<",
        "Lcom/google/protobuf/H$p;",
        ">;",
        "Lcom/google/protobuf/H$q;"
    }
.end annotation


# static fields
.field public static final A:I = 0x12

.field public static final B:I = 0x3e7

.field public static final C:Lcom/google/protobuf/H$p;

.field public static final D:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$p;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final q:J = 0x0L

.field public static final r:I = 0x1

.field public static final s:I = 0x2

.field public static final t:I = 0x6

.field public static final u:I = 0x5

.field public static final v:I = 0xf

.field public static final w:I = 0x3

.field public static final x:I = 0xa

.field public static final y:I = 0x10

.field public static final z:I = 0x11


# instance fields
.field public d:I

.field public e:I

.field public f:Z

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$P;",
            ">;"
        }
    .end annotation
.end field

.field public p:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/H$p;

    invoke-direct {v0}, Lcom/google/protobuf/H$p;-><init>()V

    sput-object v0, Lcom/google/protobuf/H$p;->C:Lcom/google/protobuf/H$p;

    new-instance v0, Lcom/google/protobuf/H$p$a;

    invoke-direct {v0}, Lcom/google/protobuf/H$p$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/H$p;->D:Lcom/google/protobuf/w1;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/w0$e;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/google/protobuf/H$p;->f:Z

    .line 16
    iput-boolean v0, p0, Lcom/google/protobuf/H$p;->h:Z

    .line 17
    iput-boolean v0, p0, Lcom/google/protobuf/H$p;->i:Z

    .line 18
    iput-boolean v0, p0, Lcom/google/protobuf/H$p;->j:Z

    .line 19
    iput-boolean v0, p0, Lcom/google/protobuf/H$p;->k:Z

    .line 20
    iput-boolean v0, p0, Lcom/google/protobuf/H$p;->l:Z

    const/4 v1, -0x1

    .line 21
    iput-byte v1, p0, Lcom/google/protobuf/H$p;->p:B

    .line 22
    iput v0, p0, Lcom/google/protobuf/H$p;->e:I

    .line 23
    iput v0, p0, Lcom/google/protobuf/H$p;->g:I

    .line 24
    iput v0, p0, Lcom/google/protobuf/H$p;->m:I

    .line 25
    iput v0, p0, Lcom/google/protobuf/H$p;->n:I

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$p;->o:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/w0$d;)V
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
            "Lcom/google/protobuf/w0$d<",
            "Lcom/google/protobuf/H$p;",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$e;-><init>(Lcom/google/protobuf/w0$d;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/protobuf/H$p;->e:I

    .line 4
    iput-boolean p1, p0, Lcom/google/protobuf/H$p;->f:Z

    .line 5
    iput p1, p0, Lcom/google/protobuf/H$p;->g:I

    .line 6
    iput-boolean p1, p0, Lcom/google/protobuf/H$p;->h:Z

    .line 7
    iput-boolean p1, p0, Lcom/google/protobuf/H$p;->i:Z

    .line 8
    iput-boolean p1, p0, Lcom/google/protobuf/H$p;->j:Z

    .line 9
    iput-boolean p1, p0, Lcom/google/protobuf/H$p;->k:Z

    .line 10
    iput-boolean p1, p0, Lcom/google/protobuf/H$p;->l:Z

    .line 11
    iput p1, p0, Lcom/google/protobuf/H$p;->m:I

    .line 12
    iput p1, p0, Lcom/google/protobuf/H$p;->n:I

    const/4 p1, -0x1

    .line 13
    iput-byte p1, p0, Lcom/google/protobuf/H$p;->p:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$d;Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/H$p;-><init>(Lcom/google/protobuf/w0$d;)V

    return-void
.end method

.method public static synthetic C6(Lcom/google/protobuf/H$p;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$p;->o:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic D6(Lcom/google/protobuf/H$p;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$p;->o:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic E6(Lcom/google/protobuf/H$p;I)I
    .locals 0

    iput p1, p0, Lcom/google/protobuf/H$p;->e:I

    return p1
.end method

.method public static synthetic F6(Lcom/google/protobuf/H$p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/H$p;->f:Z

    return p1
.end method

.method public static synthetic G6(Lcom/google/protobuf/H$p;I)I
    .locals 0

    iput p1, p0, Lcom/google/protobuf/H$p;->g:I

    return p1
.end method

.method public static synthetic H6(Lcom/google/protobuf/H$p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/H$p;->h:Z

    return p1
.end method

.method public static synthetic I6(Lcom/google/protobuf/H$p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/H$p;->i:Z

    return p1
.end method

.method public static synthetic J6(Lcom/google/protobuf/H$p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/H$p;->j:Z

    return p1
.end method

.method public static synthetic K6(Lcom/google/protobuf/H$p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/H$p;->k:Z

    return p1
.end method

.method public static synthetic L6(Lcom/google/protobuf/H$p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/H$p;->l:Z

    return p1
.end method

.method public static synthetic M6(Lcom/google/protobuf/H$p;I)I
    .locals 0

    iput p1, p0, Lcom/google/protobuf/H$p;->m:I

    return p1
.end method

.method public static synthetic N6(Lcom/google/protobuf/H$p;I)I
    .locals 0

    iput p1, p0, Lcom/google/protobuf/H$p;->n:I

    return p1
.end method

.method public static synthetic O6(Lcom/google/protobuf/H$p;I)I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p;->d:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/H$p;->d:I

    return p1
.end method

.method public static P6()Lcom/google/protobuf/H$p;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$p;->C:Lcom/google/protobuf/H$p;

    return-object v0
.end method

.method public static R6()Lcom/google/protobuf/H$p$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$p;->C:Lcom/google/protobuf/H$p;

    invoke-virtual {v0}, Lcom/google/protobuf/H$p;->h7()Lcom/google/protobuf/H$p$b;

    move-result-object v0

    return-object v0
.end method

.method public static S6(Lcom/google/protobuf/H$p;)Lcom/google/protobuf/H$p$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$p;->C:Lcom/google/protobuf/H$p;

    invoke-virtual {v0}, Lcom/google/protobuf/H$p;->h7()Lcom/google/protobuf/H$p$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/H$p$b;->o7(Lcom/google/protobuf/H$p;)Lcom/google/protobuf/H$p$b;

    move-result-object p0

    return-object p0
.end method

.method public static V6(Ljava/io/InputStream;)Lcom/google/protobuf/H$p;
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

    sget-object v0, Lcom/google/protobuf/H$p;->D:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$p;

    return-object p0
.end method

.method public static W6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$p;
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

    sget-object v0, Lcom/google/protobuf/H$p;->D:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$p;

    return-object p0
.end method

.method public static X6(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$p;
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

    sget-object v0, Lcom/google/protobuf/H$p;->D:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$p;

    return-object p0
.end method

.method public static Y6(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$p;
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

    sget-object v0, Lcom/google/protobuf/H$p;->D:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$p;

    return-object p0
.end method

.method public static Z6(Lcom/google/protobuf/C;)Lcom/google/protobuf/H$p;
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

    sget-object v0, Lcom/google/protobuf/H$p;->D:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$p;

    return-object p0
.end method

.method public static a7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$p;
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

    sget-object v0, Lcom/google/protobuf/H$p;->D:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$p;

    return-object p0
.end method

.method public static b7(Ljava/io/InputStream;)Lcom/google/protobuf/H$p;
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

    sget-object v0, Lcom/google/protobuf/H$p;->D:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$p;

    return-object p0
.end method

.method public static c7(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$p;
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

    sget-object v0, Lcom/google/protobuf/H$p;->D:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$p;

    return-object p0
.end method

.method public static d7(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/H$p;
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

    sget-object v0, Lcom/google/protobuf/H$p;->D:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$p;

    return-object p0
.end method

.method public static e7(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$p;
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

    sget-object v0, Lcom/google/protobuf/H$p;->D:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$p;

    return-object p0
.end method

.method public static f7([B)Lcom/google/protobuf/H$p;
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

    sget-object v0, Lcom/google/protobuf/H$p;->D:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$p;

    return-object p0
.end method

.method public static g7([BLcom/google/protobuf/d0;)Lcom/google/protobuf/H$p;
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

    sget-object v0, Lcom/google/protobuf/H$p;->D:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$p;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->m()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$p;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$p;->D:Lcom/google/protobuf/w1;

    return-object v0
.end method


# virtual methods
.method public H0()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p;->d:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public L4()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$p;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public M0()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p;->d:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Q6()Lcom/google/protobuf/H$p;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$p;->C:Lcom/google/protobuf/H$p;

    return-object v0
.end method

.method public R4()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p;->d:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public T2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$p;->h:Z

    return v0
.end method

.method public T6()Lcom/google/protobuf/H$p$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$p;->R6()Lcom/google/protobuf/H$p$b;

    move-result-object v0

    return-object v0
.end method

.method public U6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/H$p$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/H$p$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/H$p$b;-><init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/H$a;)V

    return-object v0
.end method

.method public V1()Lcom/google/protobuf/H$p$c;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p;->e:I

    invoke-static {v0}, Lcom/google/protobuf/H$p$c;->a(I)Lcom/google/protobuf/H$p$c;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/H$p$c;->STRING:Lcom/google/protobuf/H$p$c;

    :cond_0
    return-object v0
.end method

.method public X3()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p;->d:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$P;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$p;->o:Ljava/util/List;

    return-object v0
.end method

.method public a6()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p;->d:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(I)Lcom/google/protobuf/H$P;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$p;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$P;

    return-object p1
.end method

.method public b4()Lcom/google/protobuf/H$p$d;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p;->g:I

    invoke-static {v0}, Lcom/google/protobuf/H$p$d;->a(I)Lcom/google/protobuf/H$p$d;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/H$p$d;->JS_NORMAL:Lcom/google/protobuf/H$p$d;

    :cond_0
    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/H$Q;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$p;->o:Ljava/util/List;

    return-object v0
.end method

.method public c4()Lcom/google/protobuf/H$p$f;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p;->n:I

    invoke-static {v0}, Lcom/google/protobuf/H$p$f;->a(I)Lcom/google/protobuf/H$p$f;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/H$p$f;->TARGET_TYPE_UNKNOWN:Lcom/google/protobuf/H$p$f;

    :cond_0
    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$p;->o:Ljava/util/List;

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
    instance-of v1, p1, Lcom/google/protobuf/H$p;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/protobuf/H$p;

    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->L4()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->L4()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->L4()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/google/protobuf/H$p;->e:I

    iget v2, p1, Lcom/google/protobuf/H$p;->e:I

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->m2()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->m2()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->m2()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->k0()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->k0()Z

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->H0()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->H0()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->H0()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/google/protobuf/H$p;->g:I

    iget v2, p1, Lcom/google/protobuf/H$p;->g:I

    if-eq v1, v2, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->a6()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->a6()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->a6()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->T2()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->T2()Z

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->M0()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->M0()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->M0()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->l6()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->l6()Z

    move-result v2

    if-eq v1, v2, :cond_b

    return v3

    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->h()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->h()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    :cond_c
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->h()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->i()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->i()Z

    move-result v2

    if-eq v1, v2, :cond_d

    return v3

    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->X3()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->X3()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    :cond_e
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->X3()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->getWeak()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->getWeak()Z

    move-result v2

    if-eq v1, v2, :cond_f

    return v3

    :cond_f
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->R4()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->R4()Z

    move-result v2

    if-eq v1, v2, :cond_10

    return v3

    :cond_10
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->R4()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->m4()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->m4()Z

    move-result v2

    if-eq v1, v2, :cond_11

    return v3

    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->hasRetention()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->hasRetention()Z

    move-result v2

    if-eq v1, v2, :cond_12

    return v3

    :cond_12
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->hasRetention()Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/google/protobuf/H$p;->m:I

    iget v2, p1, Lcom/google/protobuf/H$p;->m:I

    if-eq v1, v2, :cond_13

    return v3

    :cond_13
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->h2()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->h2()Z

    move-result v2

    if-eq v1, v2, :cond_14

    return v3

    :cond_14
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->h2()Z

    move-result v1

    if-eqz v1, :cond_15

    iget v1, p0, Lcom/google/protobuf/H$p;->n:I

    iget v2, p1, Lcom/google/protobuf/H$p;->n:I

    if-eq v1, v2, :cond_15

    return v3

    :cond_15
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v3

    :cond_16
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/r2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v3

    :cond_17
    invoke-virtual {p0}, Lcom/google/protobuf/w0$e;->x6()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0$e;->x6()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    return v3

    :cond_18
    return v0
.end method

.method public g(I)Lcom/google/protobuf/H$Q;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$p;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$Q;

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->Q6()Lcom/google/protobuf/H$p;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->Q6()Lcom/google/protobuf/H$p;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$p;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$p;->D:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getRetention()Lcom/google/protobuf/H$p$e;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p;->m:I

    invoke-static {v0}, Lcom/google/protobuf/H$p$e;->a(I)Lcom/google/protobuf/H$p$e;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/H$p$e;->RETENTION_UNKNOWN:Lcom/google/protobuf/H$p$e;

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/H$p;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/H$p;->e:I

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v1, p0, Lcom/google/protobuf/H$p;->d:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/protobuf/H$p;->f:Z

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/google/protobuf/H$p;->d:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    iget-boolean v3, p0, Lcom/google/protobuf/H$p;->j:Z

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/google/protobuf/H$p;->d:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-boolean v3, p0, Lcom/google/protobuf/H$p;->h:Z

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/google/protobuf/H$p;->d:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget v3, p0, Lcom/google/protobuf/H$p;->g:I

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/google/protobuf/H$p;->d:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    const/16 v1, 0xa

    iget-boolean v3, p0, Lcom/google/protobuf/H$p;->k:Z

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/google/protobuf/H$p;->d:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-eqz v1, :cond_7

    const/16 v1, 0xf

    iget-boolean v4, p0, Lcom/google/protobuf/H$p;->i:Z

    invoke-static {v1, v4}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/google/protobuf/H$p;->d:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/google/protobuf/H$p;->l:Z

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/google/protobuf/H$p;->d:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_9

    const/16 v1, 0x11

    iget v3, p0, Lcom/google/protobuf/H$p;->m:I

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/google/protobuf/H$p;->d:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_a

    const/16 v1, 0x12

    iget v3, p0, Lcom/google/protobuf/H$p;->n:I

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/H$p;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_b

    iget-object v1, p0, Lcom/google/protobuf/H$p;->o:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/b1;

    const/16 v3, 0x3e7

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/w0$e;->v6()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getWeak()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$p;->k:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p;->d:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h2()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p;->d:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h7()Lcom/google/protobuf/H$p$b;
    .locals 2

    sget-object v0, Lcom/google/protobuf/H$p;->C:Lcom/google/protobuf/H$p;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/H$p$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/H$p$b;-><init>(Lcom/google/protobuf/H$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/H$p$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/H$p$b;-><init>(Lcom/google/protobuf/H$a;)V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/H$p$b;->o7(Lcom/google/protobuf/H$p;)Lcom/google/protobuf/H$p$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hasRetention()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p;->d:I

    and-int/lit16 v0, v0, 0x100

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
    invoke-static {}, Lcom/google/protobuf/H$p;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->L4()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/google/protobuf/H$p;->e:I

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->m2()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->k0()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->H0()Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/google/protobuf/H$p;->g:I

    add-int/2addr v1, v0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->a6()Z

    move-result v0

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->T2()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->M0()Z

    move-result v0

    if-eqz v0, :cond_5

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->l6()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->i()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->X3()Z

    move-result v0

    if-eqz v0, :cond_7

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->getWeak()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->R4()Z

    move-result v0

    if-eqz v0, :cond_8

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->m4()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->hasRetention()Z

    move-result v0

    if-eqz v0, :cond_9

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x11

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/google/protobuf/H$p;->m:I

    add-int/2addr v1, v0

    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->h2()Z

    move-result v0

    if-eqz v0, :cond_a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x12

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/google/protobuf/H$p;->n:I

    add-int/2addr v1, v0

    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->d()I

    move-result v0

    if-lez v0, :cond_b

    mul-int/lit8 v1, v1, 0x25

    add-int/lit16 v1, v1, 0x3e7

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/w0$e;->x6()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/a;->hashFields(ILjava/util/Map;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$p;->j:Z

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/google/protobuf/H;->n()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/H$p;

    const-class v2, Lcom/google/protobuf/H$p$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/google/protobuf/H$p;->p:B

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
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->d()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$p;->b(I)Lcom/google/protobuf/H$P;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/H$P;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/google/protobuf/H$p;->p:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/w0$e;->u6()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/google/protobuf/H$p;->p:B

    return v2

    :cond_4
    iput-byte v1, p0, Lcom/google/protobuf/H$p;->p:B

    return v1
.end method

.method public k0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$p;->f:Z

    return v0
.end method

.method public l6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$p;->i:Z

    return v0
.end method

.method public m2()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$p;->l:Z

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->T6()Lcom/google/protobuf/H$p$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$p;->U6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/H$p$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->T6()Lcom/google/protobuf/H$p$b;

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

    new-instance p1, Lcom/google/protobuf/H$p;

    invoke-direct {p1}, Lcom/google/protobuf/H$p;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->h7()Lcom/google/protobuf/H$p$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$p;->h7()Lcom/google/protobuf/H$p$b;

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0}, Lcom/google/protobuf/w0$e;->y6()Lcom/google/protobuf/w0$e$a;

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/H$p;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/protobuf/H$p;->e:I

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_0
    iget v1, p0, Lcom/google/protobuf/H$p;->d:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/protobuf/H$p;->f:Z

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_1
    iget v1, p0, Lcom/google/protobuf/H$p;->d:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/protobuf/H$p;->j:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_2
    iget v1, p0, Lcom/google/protobuf/H$p;->d:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/protobuf/H$p;->h:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_3
    iget v1, p0, Lcom/google/protobuf/H$p;->d:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/protobuf/H$p;->g:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_4
    iget v1, p0, Lcom/google/protobuf/H$p;->d:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/protobuf/H$p;->k:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_5
    iget v1, p0, Lcom/google/protobuf/H$p;->d:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    const/16 v1, 0xf

    iget-boolean v3, p0, Lcom/google/protobuf/H$p;->i:Z

    invoke-virtual {p1, v1, v3}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_6
    iget v1, p0, Lcom/google/protobuf/H$p;->d:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/google/protobuf/H$p;->l:Z

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_7
    iget v1, p0, Lcom/google/protobuf/H$p;->d:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    const/16 v1, 0x11

    iget v2, p0, Lcom/google/protobuf/H$p;->m:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_8
    iget v1, p0, Lcom/google/protobuf/H$p;->d:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    const/16 v1, 0x12

    iget v2, p0, Lcom/google/protobuf/H$p;->n:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_9
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/H$p;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    iget-object v2, p0, Lcom/google/protobuf/H$p;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/b1;

    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_a
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/w0$e$a;->a(ILcom/google/protobuf/CodedOutputStream;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
