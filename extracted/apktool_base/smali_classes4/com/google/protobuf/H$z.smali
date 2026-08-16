.class public final Lcom/google/protobuf/H$z;
.super Lcom/google/protobuf/w0$e;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/H$A;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "z"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/H$z$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$e<",
        "Lcom/google/protobuf/H$z;",
        ">;",
        "Lcom/google/protobuf/H$A;"
    }
.end annotation


# static fields
.field public static final l:J = 0x0L

.field public static final m:I = 0x1

.field public static final n:I = 0x2

.field public static final o:I = 0x3

.field public static final p:I = 0x7

.field public static final q:I = 0xb

.field public static final r:I = 0x3e7

.field public static final s:Lcom/google/protobuf/H$z;

.field public static final t:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$z;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$P;",
            ">;"
        }
    .end annotation
.end field

.field public k:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/H$z;

    invoke-direct {v0}, Lcom/google/protobuf/H$z;-><init>()V

    sput-object v0, Lcom/google/protobuf/H$z;->s:Lcom/google/protobuf/H$z;

    new-instance v0, Lcom/google/protobuf/H$z$a;

    invoke-direct {v0}, Lcom/google/protobuf/H$z$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/H$z;->t:Lcom/google/protobuf/w1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/w0$e;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/protobuf/H$z;->e:Z

    .line 11
    iput-boolean v0, p0, Lcom/google/protobuf/H$z;->f:Z

    .line 12
    iput-boolean v0, p0, Lcom/google/protobuf/H$z;->g:Z

    .line 13
    iput-boolean v0, p0, Lcom/google/protobuf/H$z;->h:Z

    .line 14
    iput-boolean v0, p0, Lcom/google/protobuf/H$z;->i:Z

    const/4 v0, -0x1

    .line 15
    iput-byte v0, p0, Lcom/google/protobuf/H$z;->k:B

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$z;->j:Ljava/util/List;

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
            "Lcom/google/protobuf/H$z;",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$e;-><init>(Lcom/google/protobuf/w0$d;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/google/protobuf/H$z;->e:Z

    .line 4
    iput-boolean p1, p0, Lcom/google/protobuf/H$z;->f:Z

    .line 5
    iput-boolean p1, p0, Lcom/google/protobuf/H$z;->g:Z

    .line 6
    iput-boolean p1, p0, Lcom/google/protobuf/H$z;->h:Z

    .line 7
    iput-boolean p1, p0, Lcom/google/protobuf/H$z;->i:Z

    const/4 p1, -0x1

    .line 8
    iput-byte p1, p0, Lcom/google/protobuf/H$z;->k:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$d;Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/H$z;-><init>(Lcom/google/protobuf/w0$d;)V

    return-void
.end method

.method public static synthetic C6(Lcom/google/protobuf/H$z;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$z;->j:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic D6(Lcom/google/protobuf/H$z;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$z;->j:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic E6(Lcom/google/protobuf/H$z;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/H$z;->e:Z

    return p1
.end method

.method public static synthetic F6(Lcom/google/protobuf/H$z;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/H$z;->f:Z

    return p1
.end method

.method public static synthetic G6(Lcom/google/protobuf/H$z;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/H$z;->g:Z

    return p1
.end method

.method public static synthetic H6(Lcom/google/protobuf/H$z;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/H$z;->h:Z

    return p1
.end method

.method public static synthetic I6(Lcom/google/protobuf/H$z;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/H$z;->i:Z

    return p1
.end method

.method public static synthetic J6(Lcom/google/protobuf/H$z;I)I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$z;->d:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/H$z;->d:I

    return p1
.end method

.method public static K6()Lcom/google/protobuf/H$z;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$z;->s:Lcom/google/protobuf/H$z;

    return-object v0
.end method

.method public static M6()Lcom/google/protobuf/H$z$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$z;->s:Lcom/google/protobuf/H$z;

    invoke-virtual {v0}, Lcom/google/protobuf/H$z;->c7()Lcom/google/protobuf/H$z$b;

    move-result-object v0

    return-object v0
.end method

.method public static N6(Lcom/google/protobuf/H$z;)Lcom/google/protobuf/H$z$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$z;->s:Lcom/google/protobuf/H$z;

    invoke-virtual {v0}, Lcom/google/protobuf/H$z;->c7()Lcom/google/protobuf/H$z$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/H$z$b;->j7(Lcom/google/protobuf/H$z;)Lcom/google/protobuf/H$z$b;

    move-result-object p0

    return-object p0
.end method

.method public static Q6(Ljava/io/InputStream;)Lcom/google/protobuf/H$z;
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

    sget-object v0, Lcom/google/protobuf/H$z;->t:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$z;

    return-object p0
.end method

.method public static R6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$z;
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

    sget-object v0, Lcom/google/protobuf/H$z;->t:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$z;

    return-object p0
.end method

.method public static S6(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$z;
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

    sget-object v0, Lcom/google/protobuf/H$z;->t:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$z;

    return-object p0
.end method

.method public static T6(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$z;
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

    sget-object v0, Lcom/google/protobuf/H$z;->t:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$z;

    return-object p0
.end method

.method public static U6(Lcom/google/protobuf/C;)Lcom/google/protobuf/H$z;
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

    sget-object v0, Lcom/google/protobuf/H$z;->t:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$z;

    return-object p0
.end method

.method public static V6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$z;
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

    sget-object v0, Lcom/google/protobuf/H$z;->t:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$z;

    return-object p0
.end method

.method public static W6(Ljava/io/InputStream;)Lcom/google/protobuf/H$z;
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

    sget-object v0, Lcom/google/protobuf/H$z;->t:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$z;

    return-object p0
.end method

.method public static X6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$z;
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

    sget-object v0, Lcom/google/protobuf/H$z;->t:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$z;

    return-object p0
.end method

.method public static Y6(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/H$z;
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

    sget-object v0, Lcom/google/protobuf/H$z;->t:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$z;

    return-object p0
.end method

.method public static Z6(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$z;
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

    sget-object v0, Lcom/google/protobuf/H$z;->t:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$z;

    return-object p0
.end method

.method public static a7([B)Lcom/google/protobuf/H$z;
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

    sget-object v0, Lcom/google/protobuf/H$z;->t:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$z;

    return-object p0
.end method

.method public static b7([BLcom/google/protobuf/d0;)Lcom/google/protobuf/H$z;
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

    sget-object v0, Lcom/google/protobuf/H$z;->t:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$z;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->k()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$z;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$z;->t:Lcom/google/protobuf/w1;

    return-object v0
.end method


# virtual methods
.method public E3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$z;->h:Z

    return v0
.end method

.method public L6()Lcom/google/protobuf/H$z;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$z;->s:Lcom/google/protobuf/H$z;

    return-object v0
.end method

.method public O6()Lcom/google/protobuf/H$z$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$z;->M6()Lcom/google/protobuf/H$z$b;

    move-result-object v0

    return-object v0
.end method

.method public P6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/H$z$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/H$z$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/H$z$b;-><init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/H$a;)V

    return-object v0
.end method

.method public X2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$z;->e:Z

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

    iget-object v0, p0, Lcom/google/protobuf/H$z;->j:Ljava/util/List;

    return-object v0
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

    iget-object v0, p0, Lcom/google/protobuf/H$z;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$P;

    return-object p1
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

    iget-object v0, p0, Lcom/google/protobuf/H$z;->j:Ljava/util/List;

    return-object v0
.end method

.method public c7()Lcom/google/protobuf/H$z$b;
    .locals 2

    sget-object v0, Lcom/google/protobuf/H$z;->s:Lcom/google/protobuf/H$z;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/H$z$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/H$z$b;-><init>(Lcom/google/protobuf/H$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/H$z$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/H$z$b;-><init>(Lcom/google/protobuf/H$a;)V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/H$z$b;->j7(Lcom/google/protobuf/H$z;)Lcom/google/protobuf/H$z$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$z;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public e0()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/protobuf/H$z;->i:Z

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
    instance-of v1, p1, Lcom/google/protobuf/H$z;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/protobuf/H$z;

    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->o6()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$z;->o6()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->o6()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->X2()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$z;->X2()Z

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->g6()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$z;->g6()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->g6()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->g3()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$z;->g3()Z

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->h()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$z;->h()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->h()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->i()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$z;->i()Z

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->r3()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$z;->r3()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->r3()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->E3()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$z;->E3()Z

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->t0()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$z;->t0()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->t0()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->e0()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$z;->e0()Z

    move-result v2

    if-eq v1, v2, :cond_b

    return v3

    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$z;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    :cond_c
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/r2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/w0$e;->x6()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0$e;->x6()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v3

    :cond_e
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

    iget-object v0, p0, Lcom/google/protobuf/H$z;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$Q;

    return-object p1
.end method

.method public g3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$z;->f:Z

    return v0
.end method

.method public g6()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$z;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->L6()Lcom/google/protobuf/H$z;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->L6()Lcom/google/protobuf/H$z;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$z;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$z;->t:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/H$z;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/protobuf/H$z;->e:Z

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v1, p0, Lcom/google/protobuf/H$z;->d:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/protobuf/H$z;->f:Z

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/google/protobuf/H$z;->d:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    iget-boolean v3, p0, Lcom/google/protobuf/H$z;->g:Z

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/google/protobuf/H$z;->d:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    iget-boolean v3, p0, Lcom/google/protobuf/H$z;->h:Z

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/google/protobuf/H$z;->d:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    const/16 v1, 0xb

    iget-boolean v3, p0, Lcom/google/protobuf/H$z;->i:Z

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/H$z;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    iget-object v1, p0, Lcom/google/protobuf/H$z;->j:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/b1;

    const/16 v3, 0x3e7

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
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

.method public h()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$z;->d:I

    and-int/lit8 v0, v0, 0x4

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
    invoke-static {}, Lcom/google/protobuf/H$z;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->o6()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->X2()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->g6()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->g3()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->i()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->r3()Z

    move-result v0

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->E3()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->t0()Z

    move-result v0

    if-eqz v0, :cond_5

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->e0()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->d()I

    move-result v0

    if-lez v0, :cond_6

    mul-int/lit8 v1, v1, 0x25

    add-int/lit16 v1, v1, 0x3e7

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
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

    iget-boolean v0, p0, Lcom/google/protobuf/H$z;->g:Z

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/google/protobuf/H;->l()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/H$z;

    const-class v2, Lcom/google/protobuf/H$z$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/google/protobuf/H$z;->k:B

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
    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->d()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$z;->b(I)Lcom/google/protobuf/H$P;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/H$P;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/google/protobuf/H$z;->k:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/w0$e;->u6()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/google/protobuf/H$z;->k:B

    return v2

    :cond_4
    iput-byte v1, p0, Lcom/google/protobuf/H$z;->k:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->O6()Lcom/google/protobuf/H$z$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$z;->P6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/H$z$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->O6()Lcom/google/protobuf/H$z$b;

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

    new-instance p1, Lcom/google/protobuf/H$z;

    invoke-direct {p1}, Lcom/google/protobuf/H$z;-><init>()V

    return-object p1
.end method

.method public o6()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$z;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public r3()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$z;->d:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t0()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/protobuf/H$z;->d:I

    and-int/lit8 v0, v0, 0x10

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
    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->c7()Lcom/google/protobuf/H$z$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$z;->c7()Lcom/google/protobuf/H$z$b;

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

    iget v1, p0, Lcom/google/protobuf/H$z;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/protobuf/H$z;->e:Z

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_0
    iget v1, p0, Lcom/google/protobuf/H$z;->d:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/protobuf/H$z;->f:Z

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_1
    iget v1, p0, Lcom/google/protobuf/H$z;->d:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/protobuf/H$z;->g:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_2
    iget v1, p0, Lcom/google/protobuf/H$z;->d:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/protobuf/H$z;->h:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_3
    iget v1, p0, Lcom/google/protobuf/H$z;->d:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/google/protobuf/H$z;->i:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_4
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/H$z;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/google/protobuf/H$z;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/b1;

    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/w0$e$a;->a(ILcom/google/protobuf/CodedOutputStream;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
