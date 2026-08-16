.class public final Lcom/google/protobuf/H$D;
.super Lcom/google/protobuf/w0$e;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/H$E;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "D"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/H$D$b;,
        Lcom/google/protobuf/H$D$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$e<",
        "Lcom/google/protobuf/H$D;",
        ">;",
        "Lcom/google/protobuf/H$E;"
    }
.end annotation


# static fields
.field public static final i:J = 0x0L

.field public static final j:I = 0x21

.field public static final k:I = 0x22

.field public static final l:I = 0x3e7

.field public static final m:Lcom/google/protobuf/H$D;

.field public static final n:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$D;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public d:I

.field public e:Z

.field public f:I

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$P;",
            ">;"
        }
    .end annotation
.end field

.field public h:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/H$D;

    invoke-direct {v0}, Lcom/google/protobuf/H$D;-><init>()V

    sput-object v0, Lcom/google/protobuf/H$D;->m:Lcom/google/protobuf/H$D;

    new-instance v0, Lcom/google/protobuf/H$D$a;

    invoke-direct {v0}, Lcom/google/protobuf/H$D$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/H$D;->n:Lcom/google/protobuf/w1;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/w0$e;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/protobuf/H$D;->e:Z

    const/4 v1, -0x1

    .line 8
    iput-byte v1, p0, Lcom/google/protobuf/H$D;->h:B

    .line 9
    iput v0, p0, Lcom/google/protobuf/H$D;->f:I

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$D;->g:Ljava/util/List;

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
            "Lcom/google/protobuf/H$D;",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$e;-><init>(Lcom/google/protobuf/w0$d;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/google/protobuf/H$D;->e:Z

    .line 4
    iput p1, p0, Lcom/google/protobuf/H$D;->f:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lcom/google/protobuf/H$D;->h:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$d;Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/H$D;-><init>(Lcom/google/protobuf/w0$d;)V

    return-void
.end method

.method public static synthetic C6(Lcom/google/protobuf/H$D;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$D;->g:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic D6(Lcom/google/protobuf/H$D;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$D;->g:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic E6(Lcom/google/protobuf/H$D;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/H$D;->e:Z

    return p1
.end method

.method public static synthetic F6(Lcom/google/protobuf/H$D;I)I
    .locals 0

    iput p1, p0, Lcom/google/protobuf/H$D;->f:I

    return p1
.end method

.method public static synthetic G6(Lcom/google/protobuf/H$D;I)I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$D;->d:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/H$D;->d:I

    return p1
.end method

.method public static H6()Lcom/google/protobuf/H$D;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$D;->m:Lcom/google/protobuf/H$D;

    return-object v0
.end method

.method public static J6()Lcom/google/protobuf/H$D$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$D;->m:Lcom/google/protobuf/H$D;

    invoke-virtual {v0}, Lcom/google/protobuf/H$D;->Z6()Lcom/google/protobuf/H$D$b;

    move-result-object v0

    return-object v0
.end method

.method public static K6(Lcom/google/protobuf/H$D;)Lcom/google/protobuf/H$D$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$D;->m:Lcom/google/protobuf/H$D;

    invoke-virtual {v0}, Lcom/google/protobuf/H$D;->Z6()Lcom/google/protobuf/H$D$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/H$D$b;->g7(Lcom/google/protobuf/H$D;)Lcom/google/protobuf/H$D$b;

    move-result-object p0

    return-object p0
.end method

.method public static N6(Ljava/io/InputStream;)Lcom/google/protobuf/H$D;
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

    sget-object v0, Lcom/google/protobuf/H$D;->n:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$D;

    return-object p0
.end method

.method public static O6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$D;
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

    sget-object v0, Lcom/google/protobuf/H$D;->n:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$D;

    return-object p0
.end method

.method public static P6(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$D;
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

    sget-object v0, Lcom/google/protobuf/H$D;->n:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$D;

    return-object p0
.end method

.method public static Q6(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$D;
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

    sget-object v0, Lcom/google/protobuf/H$D;->n:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$D;

    return-object p0
.end method

.method public static R6(Lcom/google/protobuf/C;)Lcom/google/protobuf/H$D;
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

    sget-object v0, Lcom/google/protobuf/H$D;->n:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$D;

    return-object p0
.end method

.method public static S6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$D;
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

    sget-object v0, Lcom/google/protobuf/H$D;->n:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$D;

    return-object p0
.end method

.method public static T6(Ljava/io/InputStream;)Lcom/google/protobuf/H$D;
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

    sget-object v0, Lcom/google/protobuf/H$D;->n:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$D;

    return-object p0
.end method

.method public static U6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$D;
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

    sget-object v0, Lcom/google/protobuf/H$D;->n:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$D;

    return-object p0
.end method

.method public static V6(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/H$D;
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

    sget-object v0, Lcom/google/protobuf/H$D;->n:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$D;

    return-object p0
.end method

.method public static W6(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$D;
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

    sget-object v0, Lcom/google/protobuf/H$D;->n:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$D;

    return-object p0
.end method

.method public static X6([B)Lcom/google/protobuf/H$D;
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

    sget-object v0, Lcom/google/protobuf/H$D;->n:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$D;

    return-object p0
.end method

.method public static Y6([BLcom/google/protobuf/d0;)Lcom/google/protobuf/H$D;
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

    sget-object v0, Lcom/google/protobuf/H$D;->n:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$D;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->w()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$D;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$D;->n:Lcom/google/protobuf/w1;

    return-object v0
.end method


# virtual methods
.method public I6()Lcom/google/protobuf/H$D;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$D;->m:Lcom/google/protobuf/H$D;

    return-object v0
.end method

.method public L6()Lcom/google/protobuf/H$D$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$D;->J6()Lcom/google/protobuf/H$D$b;

    move-result-object v0

    return-object v0
.end method

.method public M6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/H$D$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/H$D$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/H$D$b;-><init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/H$a;)V

    return-object v0
.end method

.method public Z6()Lcom/google/protobuf/H$D$b;
    .locals 2

    sget-object v0, Lcom/google/protobuf/H$D;->m:Lcom/google/protobuf/H$D;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/H$D$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/H$D$b;-><init>(Lcom/google/protobuf/H$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/H$D$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/H$D$b;-><init>(Lcom/google/protobuf/H$a;)V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/H$D$b;->g7(Lcom/google/protobuf/H$D;)Lcom/google/protobuf/H$D$b;

    move-result-object v0

    :goto_0
    return-object v0
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

    iget-object v0, p0, Lcom/google/protobuf/H$D;->g:Ljava/util/List;

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

    iget-object v0, p0, Lcom/google/protobuf/H$D;->g:Ljava/util/List;

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

    iget-object v0, p0, Lcom/google/protobuf/H$D;->g:Ljava/util/List;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$D;->g:Ljava/util/List;

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
    instance-of v1, p1, Lcom/google/protobuf/H$D;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/protobuf/H$D;

    invoke-virtual {p0}, Lcom/google/protobuf/H$D;->h()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$D;->h()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/H$D;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/protobuf/H$D;->i()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$D;->i()Z

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/H$D;->g2()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$D;->g2()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/H$D;->g2()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/google/protobuf/H$D;->f:I

    iget v2, p1, Lcom/google/protobuf/H$D;->f:I

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/H$D;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$D;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/r2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/w0$e;->x6()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0$e;->x6()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v3

    :cond_8
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

    iget-object v0, p0, Lcom/google/protobuf/H$D;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$Q;

    return-object p1
.end method

.method public g2()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$D;->d:I

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
    invoke-virtual {p0}, Lcom/google/protobuf/H$D;->I6()Lcom/google/protobuf/H$D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$D;->I6()Lcom/google/protobuf/H$D;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$D;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$D;->n:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/H$D;->d:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x21

    iget-boolean v2, p0, Lcom/google/protobuf/H$D;->e:Z

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/google/protobuf/H$D;->d:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    const/16 v2, 0x22

    iget v3, p0, Lcom/google/protobuf/H$D;->f:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/H$D;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/H$D;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/b1;

    const/16 v3, 0x3e7

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
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
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$D;->d:I

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
    invoke-static {}, Lcom/google/protobuf/H$D;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/google/protobuf/H$D;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x21

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$D;->i()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/H$D;->g2()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x22

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/google/protobuf/H$D;->f:I

    add-int/2addr v1, v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/H$D;->d()I

    move-result v0

    if-lez v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit16 v1, v1, 0x3e7

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$D;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
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

    iget-boolean v0, p0, Lcom/google/protobuf/H$D;->e:Z

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/google/protobuf/H;->x()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/H$D;

    const-class v2, Lcom/google/protobuf/H$D$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/google/protobuf/H$D;->h:B

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
    invoke-virtual {p0}, Lcom/google/protobuf/H$D;->d()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$D;->b(I)Lcom/google/protobuf/H$P;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/H$P;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/google/protobuf/H$D;->h:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/w0$e;->u6()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/google/protobuf/H$D;->h:B

    return v2

    :cond_4
    iput-byte v1, p0, Lcom/google/protobuf/H$D;->h:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$D;->L6()Lcom/google/protobuf/H$D$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$D;->M6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/H$D$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/H$D;->L6()Lcom/google/protobuf/H$D$b;

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

    new-instance p1, Lcom/google/protobuf/H$D;

    invoke-direct {p1}, Lcom/google/protobuf/H$D;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$D;->Z6()Lcom/google/protobuf/H$D$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$D;->Z6()Lcom/google/protobuf/H$D$b;

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

    iget v1, p0, Lcom/google/protobuf/H$D;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x21

    iget-boolean v2, p0, Lcom/google/protobuf/H$D;->e:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_0
    iget v1, p0, Lcom/google/protobuf/H$D;->d:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x22

    iget v2, p0, Lcom/google/protobuf/H$D;->f:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/H$D;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/protobuf/H$D;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/b1;

    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/w0$e$a;->a(ILcom/google/protobuf/CodedOutputStream;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public y3()Lcom/google/protobuf/H$D$c;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$D;->f:I

    invoke-static {v0}, Lcom/google/protobuf/H$D$c;->a(I)Lcom/google/protobuf/H$D$c;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/H$D$c;->IDEMPOTENCY_UNKNOWN:Lcom/google/protobuf/H$D$c;

    :cond_0
    return-object v0
.end method
