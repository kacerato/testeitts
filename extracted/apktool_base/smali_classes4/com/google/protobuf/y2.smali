.class public final Lcom/google/protobuf/y2;
.super Lcom/google/protobuf/w0;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/z2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/y2$c;,
        Lcom/google/protobuf/y2$d;
    }
.end annotation


# static fields
.field public static final e:J = 0x0L

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = 0x4

.field public static final j:I = 0x5

.field public static final k:I = 0x6

.field public static final l:Lcom/google/protobuf/y2;

.field public static final m:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/y2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/y2;

    invoke-direct {v0}, Lcom/google/protobuf/y2;-><init>()V

    sput-object v0, Lcom/google/protobuf/y2;->l:Lcom/google/protobuf/y2;

    new-instance v0, Lcom/google/protobuf/y2$a;

    invoke-direct {v0}, Lcom/google/protobuf/y2$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/y2;->m:Lcom/google/protobuf/w1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/w0;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/google/protobuf/y2;->d:B

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

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/protobuf/y2;->b:I

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/google/protobuf/y2;->d:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/y2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/y2;-><init>(Lcom/google/protobuf/w0$b;)V

    return-void
.end method

.method public static C6(Ljava/io/InputStream;)Lcom/google/protobuf/y2;
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

    sget-object v0, Lcom/google/protobuf/y2;->m:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/y2;

    return-object p0
.end method

.method public static D6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/y2;
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

    sget-object v0, Lcom/google/protobuf/y2;->m:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/y2;

    return-object p0
.end method

.method public static E6(Lcom/google/protobuf/x;)Lcom/google/protobuf/y2;
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

    sget-object v0, Lcom/google/protobuf/y2;->m:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/y2;

    return-object p0
.end method

.method public static F6(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/y2;
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

    sget-object v0, Lcom/google/protobuf/y2;->m:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/y2;

    return-object p0
.end method

.method public static G6(Lcom/google/protobuf/C;)Lcom/google/protobuf/y2;
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

    sget-object v0, Lcom/google/protobuf/y2;->m:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/y2;

    return-object p0
.end method

.method public static H6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/y2;
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

    sget-object v0, Lcom/google/protobuf/y2;->m:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/y2;

    return-object p0
.end method

.method public static I6(Ljava/io/InputStream;)Lcom/google/protobuf/y2;
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

    sget-object v0, Lcom/google/protobuf/y2;->m:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/y2;

    return-object p0
.end method

.method public static J6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/y2;
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

    sget-object v0, Lcom/google/protobuf/y2;->m:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/y2;

    return-object p0
.end method

.method public static K6(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/y2;
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

    sget-object v0, Lcom/google/protobuf/y2;->m:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/y2;

    return-object p0
.end method

.method public static L6(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/google/protobuf/y2;
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

    sget-object v0, Lcom/google/protobuf/y2;->m:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/y2;

    return-object p0
.end method

.method public static M6([B)Lcom/google/protobuf/y2;
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

    sget-object v0, Lcom/google/protobuf/y2;->m:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/y2;

    return-object p0
.end method

.method public static N6([BLcom/google/protobuf/d0;)Lcom/google/protobuf/y2;
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

    sget-object v0, Lcom/google/protobuf/y2;->m:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/y2;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Z1;->e:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/y2;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/y2;->m:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public static synthetic t6(Lcom/google/protobuf/y2;I)I
    .locals 0

    iput p1, p0, Lcom/google/protobuf/y2;->b:I

    return p1
.end method

.method public static synthetic u6(Lcom/google/protobuf/y2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic v6(Lcom/google/protobuf/y2;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public static w6()Lcom/google/protobuf/y2;
    .locals 1

    sget-object v0, Lcom/google/protobuf/y2;->l:Lcom/google/protobuf/y2;

    return-object v0
.end method

.method public static y6()Lcom/google/protobuf/y2$c;
    .locals 1

    sget-object v0, Lcom/google/protobuf/y2;->l:Lcom/google/protobuf/y2;

    invoke-virtual {v0}, Lcom/google/protobuf/y2;->O6()Lcom/google/protobuf/y2$c;

    move-result-object v0

    return-object v0
.end method

.method public static z6(Lcom/google/protobuf/y2;)Lcom/google/protobuf/y2$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/y2;->l:Lcom/google/protobuf/y2;

    invoke-virtual {v0}, Lcom/google/protobuf/y2;->O6()Lcom/google/protobuf/y2$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/y2$c;->F6(Lcom/google/protobuf/y2;)Lcom/google/protobuf/y2$c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A4()Lcom/google/protobuf/x;
    .locals 3

    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iget v2, p0, Lcom/google/protobuf/y2;->b:I

    if-ne v2, v1, :cond_1

    iput-object v0, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public A6()Lcom/google/protobuf/y2$c;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/y2;->y6()Lcom/google/protobuf/y2$c;

    move-result-object v0

    return-object v0
.end method

.method public B6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/y2$c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/y2$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/y2$c;-><init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/y2$a;)V

    return-object v0
.end method

.method public E()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E4()Lcom/google/protobuf/X1;
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/X1;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/X1;->w6()Lcom/google/protobuf/X1;

    move-result-object v0

    return-object v0
.end method

.method public F5()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public G4()Lcom/google/protobuf/y2$d;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    invoke-static {v0}, Lcom/google/protobuf/y2$d;->a(I)Lcom/google/protobuf/y2$d;

    move-result-object v0

    return-object v0
.end method

.method public K0()Lcom/google/protobuf/Y1;
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/X1;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/X1;->w6()Lcom/google/protobuf/X1;

    move-result-object v0

    return-object v0
.end method

.method public K4()Lcom/google/protobuf/N0;
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/M0;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/M0;->v6()Lcom/google/protobuf/M0;

    move-result-object v0

    return-object v0
.end method

.method public L2()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public O1()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public O6()Lcom/google/protobuf/y2$c;
    .locals 2

    sget-object v0, Lcom/google/protobuf/y2;->l:Lcom/google/protobuf/y2;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/y2$c;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y2$c;-><init>(Lcom/google/protobuf/y2$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/y2$c;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y2$c;-><init>(Lcom/google/protobuf/y2$a;)V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/y2$c;->F6(Lcom/google/protobuf/y2;)Lcom/google/protobuf/y2$c;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public P1()Lcom/google/protobuf/M0;
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/M0;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/M0;->v6()Lcom/google/protobuf/M0;

    move-result-object v0

    return-object v0
.end method

.method public e6()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

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
    instance-of v1, p1, Lcom/google/protobuf/y2;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/protobuf/y2;

    invoke-virtual {p0}, Lcom/google/protobuf/y2;->G4()Lcom/google/protobuf/y2$d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/y2;->G4()Lcom/google/protobuf/y2$d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/google/protobuf/y2;->b:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/y2;->P1()Lcom/google/protobuf/M0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/y2;->P1()Lcom/google/protobuf/M0;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/M0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/y2;->E4()Lcom/google/protobuf/X1;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/y2;->E4()Lcom/google/protobuf/X1;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/X1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/y2;->e6()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/y2;->e6()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/y2;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/y2;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/y2;->s5()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/protobuf/y2;->s5()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/y2;->L2()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/y2;->L2()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/r2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y2;->x6()Lcom/google/protobuf/y2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/y2;->x6()Lcom/google/protobuf/y2;

    move-result-object v0

    return-object v0
.end method

.method public getNullValue()Lcom/google/protobuf/s1;
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/s1;->a(I)Lcom/google/protobuf/s1;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/s1;->UNRECOGNIZED:Lcom/google/protobuf/s1;

    :cond_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/protobuf/s1;->NULL_VALUE:Lcom/google/protobuf/s1;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/y2;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/y2;->m:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->i0(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/X1;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/M0;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

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

.method public getStringValue()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/google/protobuf/y2;->b:I

    if-ne v2, v1, :cond_2

    iput-object v0, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public hasNullValue()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/y2;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/y2;->P1()Lcom/google/protobuf/M0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/M0;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    goto :goto_1

    :pswitch_1
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/y2;->E4()Lcom/google/protobuf/X1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/X1;->hashCode()I

    move-result v0

    goto :goto_0

    :pswitch_2
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/y2;->e6()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    goto :goto_0

    :pswitch_3
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/y2;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :pswitch_4
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/y2;->s5()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/D0;->s(J)I

    move-result v0

    goto :goto_0

    :pswitch_5
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/y2;->L2()I

    move-result v0

    goto :goto_0

    :goto_1
    mul-int/lit8 v1, v1, 0x1d

    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/r2;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    sget-object v0, Lcom/google/protobuf/Z1;->f:Lcom/google/protobuf/w0$h;

    const-class v1, Lcom/google/protobuf/y2;

    const-class v2, Lcom/google/protobuf/y2$c;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/google/protobuf/y2;->d:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/y2;->d:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y2;->A6()Lcom/google/protobuf/y2$c;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/y2;->B6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/y2$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/y2;->A6()Lcom/google/protobuf/y2$c;

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

    new-instance p1, Lcom/google/protobuf/y2;

    invoke-direct {p1}, Lcom/google/protobuf/y2;-><init>()V

    return-object p1
.end method

.method public s5()D
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public t2()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

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
    invoke-virtual {p0}, Lcom/google/protobuf/y2;->O6()Lcom/google/protobuf/y2$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/y2;->O6()Lcom/google/protobuf/y2$c;

    move-result-object v0

    return-object v0
.end method

.method public u2()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

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

    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_0
    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ID)V

    :cond_1
    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2
    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_3
    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/X1;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_4
    iget v0, p0, Lcom/google/protobuf/y2;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/protobuf/y2;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/M0;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public x6()Lcom/google/protobuf/y2;
    .locals 1

    sget-object v0, Lcom/google/protobuf/y2;->l:Lcom/google/protobuf/y2;

    return-object v0
.end method
