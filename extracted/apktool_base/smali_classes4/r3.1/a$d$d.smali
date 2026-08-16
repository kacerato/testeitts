.class public final Lr3/a$d$d;
.super Lcom/google/protobuf/w0;
.source "SourceFile"

# interfaces
.implements Lr3/a$d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr3/a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr3/a$d$d$b;
    }
.end annotation


# static fields
.field public static final h:J = 0x0L

.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0xf

.field public static final l:I = 0x10

.field public static final m:Lr3/a$d$d;

.field public static final n:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lr3/a$d$d;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public b:I

.field public volatile c:Ljava/lang/Object;

.field public volatile d:Ljava/lang/Object;

.field public volatile e:Ljava/lang/Object;

.field public f:Lcom/google/protobuf/H$x;

.field public g:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr3/a$d$d;

    invoke-direct {v0}, Lr3/a$d$d;-><init>()V

    sput-object v0, Lr3/a$d$d;->m:Lr3/a$d$d;

    new-instance v0, Lr3/a$d$d$a;

    invoke-direct {v0}, Lr3/a$d$d$a;-><init>()V

    sput-object v0, Lr3/a$d$d;->n:Lcom/google/protobuf/w1;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/w0;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lr3/a$d$d;->c:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lr3/a$d$d;->d:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lr3/a$d$d;->e:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 11
    iput-byte v1, p0, Lr3/a$d$d;->g:B

    .line 12
    iput-object v0, p0, Lr3/a$d$d;->c:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lr3/a$d$d;->d:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lr3/a$d$d;->e:Ljava/lang/Object;

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

    iput-object p1, p0, Lr3/a$d$d;->c:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lr3/a$d$d;->d:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lr3/a$d$d;->e:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 6
    iput-byte p1, p0, Lr3/a$d$d;->g:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$b;Lr3/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lr3/a$d$d;-><init>(Lcom/google/protobuf/w0$b;)V

    return-void
.end method

.method public static synthetic A6(Lr3/a$d$d;Lcom/google/protobuf/H$x;)Lcom/google/protobuf/H$x;
    .locals 0

    iput-object p1, p0, Lr3/a$d$d;->f:Lcom/google/protobuf/H$x;

    return-object p1
.end method

.method public static synthetic B6(Lr3/a$d$d;I)I
    .locals 1

    iget v0, p0, Lr3/a$d$d;->b:I

    or-int/2addr p1, v0

    iput p1, p0, Lr3/a$d$d;->b:I

    return p1
.end method

.method public static C6()Lr3/a$d$d;
    .locals 1

    sget-object v0, Lr3/a$d$d;->m:Lr3/a$d$d;

    return-object v0
.end method

.method public static E6()Lr3/a$d$d$b;
    .locals 1

    sget-object v0, Lr3/a$d$d;->m:Lr3/a$d$d;

    invoke-virtual {v0}, Lr3/a$d$d;->U6()Lr3/a$d$d$b;

    move-result-object v0

    return-object v0
.end method

.method public static F6(Lr3/a$d$d;)Lr3/a$d$d$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lr3/a$d$d;->m:Lr3/a$d$d;

    invoke-virtual {v0}, Lr3/a$d$d;->U6()Lr3/a$d$d$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lr3/a$d$d$b;->A6(Lr3/a$d$d;)Lr3/a$d$d$b;

    move-result-object p0

    return-object p0
.end method

.method public static I6(Ljava/io/InputStream;)Lr3/a$d$d;
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

    sget-object v0, Lr3/a$d$d;->n:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lr3/a$d$d;

    return-object p0
.end method

.method public static J6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lr3/a$d$d;
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

    sget-object v0, Lr3/a$d$d;->n:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lr3/a$d$d;

    return-object p0
.end method

.method public static K6(Lcom/google/protobuf/x;)Lr3/a$d$d;
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

    sget-object v0, Lr3/a$d$d;->n:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr3/a$d$d;

    return-object p0
.end method

.method public static L6(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lr3/a$d$d;
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

    sget-object v0, Lr3/a$d$d;->n:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr3/a$d$d;

    return-object p0
.end method

.method public static M6(Lcom/google/protobuf/C;)Lr3/a$d$d;
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

    sget-object v0, Lr3/a$d$d;->n:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lr3/a$d$d;

    return-object p0
.end method

.method public static N6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lr3/a$d$d;
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

    sget-object v0, Lr3/a$d$d;->n:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lr3/a$d$d;

    return-object p0
.end method

.method public static O6(Ljava/io/InputStream;)Lr3/a$d$d;
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

    sget-object v0, Lr3/a$d$d;->n:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lr3/a$d$d;

    return-object p0
.end method

.method public static P6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lr3/a$d$d;
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

    sget-object v0, Lr3/a$d$d;->n:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lr3/a$d$d;

    return-object p0
.end method

.method public static Q6(Ljava/nio/ByteBuffer;)Lr3/a$d$d;
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

    sget-object v0, Lr3/a$d$d;->n:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr3/a$d$d;

    return-object p0
.end method

.method public static R6(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lr3/a$d$d;
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

    sget-object v0, Lr3/a$d$d;->n:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr3/a$d$d;

    return-object p0
.end method

.method public static S6([B)Lr3/a$d$d;
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

    sget-object v0, Lr3/a$d$d;->n:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr3/a$d$d;

    return-object p0
.end method

.method public static T6([BLcom/google/protobuf/d0;)Lr3/a$d$d;
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

    sget-object v0, Lr3/a$d$d;->n:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr3/a$d$d;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lr3/a;->g()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lr3/a$d$d;",
            ">;"
        }
    .end annotation

    sget-object v0, Lr3/a$d$d;->n:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public static synthetic t6()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/w0;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic u6(Lr3/a$d$d;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lr3/a$d$d;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic v6(Lr3/a$d$d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lr3/a$d$d;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic w6(Lr3/a$d$d;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lr3/a$d$d;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic x6(Lr3/a$d$d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lr3/a$d$d;->d:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic y6(Lr3/a$d$d;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lr3/a$d$d;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic z6(Lr3/a$d$d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lr3/a$d$d;->e:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public B0()Lcom/google/protobuf/H$y;
    .locals 1

    iget-object v0, p0, Lr3/a$d$d;->f:Lcom/google/protobuf/H$x;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/H$x;->v6()Lcom/google/protobuf/H$x;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public B4()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lr3/a$d$d;->d:Ljava/lang/Object;

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

    iput-object v1, p0, Lr3/a$d$d;->d:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public C4()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lr3/a$d$d;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lr3/a$d$d;->d:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public D6()Lr3/a$d$d;
    .locals 1

    sget-object v0, Lr3/a$d$d;->m:Lr3/a$d$d;

    return-object v0
.end method

.method public G6()Lr3/a$d$d$b;
    .locals 1

    invoke-static {}, Lr3/a$d$d;->E6()Lr3/a$d$d$b;

    move-result-object v0

    return-object v0
.end method

.method public H6(Lcom/google/protobuf/w0$c;)Lr3/a$d$d$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    new-instance v0, Lr3/a$d$d$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lr3/a$d$d$b;-><init>(Lcom/google/protobuf/w0$c;Lr3/a$a;)V

    return-object v0
.end method

.method public M2()Z
    .locals 1

    iget v0, p0, Lr3/a$d$d;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public U5()Z
    .locals 1

    iget v0, p0, Lr3/a$d$d;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public U6()Lr3/a$d$d$b;
    .locals 2

    sget-object v0, Lr3/a$d$d;->m:Lr3/a$d$d;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lr3/a$d$d$b;

    invoke-direct {v0, v1}, Lr3/a$d$d$b;-><init>(Lr3/a$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lr3/a$d$d$b;

    invoke-direct {v0, v1}, Lr3/a$d$d$b;-><init>(Lr3/a$a;)V

    invoke-virtual {v0, p0}, Lr3/a$d$d$b;->A6(Lr3/a$d$d;)Lr3/a$d$d$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public a2()Lcom/google/protobuf/H$x;
    .locals 1

    iget-object v0, p0, Lr3/a$d$d;->f:Lcom/google/protobuf/H$x;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/H$x;->v6()Lcom/google/protobuf/H$x;

    move-result-object v0

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
    instance-of v1, p1, Lr3/a$d$d;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lr3/a$d$d;

    invoke-virtual {p0}, Lr3/a$d$d;->hasName()Z

    move-result v1

    invoke-virtual {p1}, Lr3/a$d$d;->hasName()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lr3/a$d$d;->hasName()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lr3/a$d$d;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lr3/a$d$d;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lr3/a$d$d;->M2()Z

    move-result v1

    invoke-virtual {p1}, Lr3/a$d$d;->M2()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lr3/a$d$d;->M2()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lr3/a$d$d;->B4()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lr3/a$d$d;->B4()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lr3/a$d$d;->U5()Z

    move-result v1

    invoke-virtual {p1}, Lr3/a$d$d;->U5()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Lr3/a$d$d;->U5()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lr3/a$d$d;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lr3/a$d$d;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lr3/a$d$d;->w4()Z

    move-result v1

    invoke-virtual {p1}, Lr3/a$d$d;->w4()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Lr3/a$d$d;->w4()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lr3/a$d$d;->a2()Lcom/google/protobuf/H$x;

    move-result-object v1

    invoke-virtual {p1}, Lr3/a$d$d;->a2()Lcom/google/protobuf/H$x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/H$x;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/r2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v3

    :cond_a
    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lr3/a$d$d;->e:Ljava/lang/Object;

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

    iput-object v1, p0, Lr3/a$d$d;->e:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr3/a$d$d;->D6()Lr3/a$d$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lr3/a$d$d;->D6()Lr3/a$d$d;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lr3/a$d$d;->c:Ljava/lang/Object;

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

    iput-object v1, p0, Lr3/a$d$d;->c:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getNameBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lr3/a$d$d;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lr3/a$d$d;->c:Ljava/lang/Object;

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
            "Lr3/a$d$d;",
            ">;"
        }
    .end annotation

    sget-object v0, Lr3/a$d$d;->n:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lr3/a$d$d;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr3/a$d$d;->c:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lr3/a$d$d;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lr3/a$d$d;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lr3/a$d$d;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    const/16 v1, 0xf

    iget-object v2, p0, Lr3/a$d$d;->e:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lr3/a$d$d;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    const/16 v1, 0x10

    invoke-virtual {p0}, Lr3/a$d$d;->a2()Lcom/google/protobuf/H$x;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public h6()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lr3/a$d$d;->e:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lr3/a$d$d;->e:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public hasName()Z
    .locals 2

    iget v0, p0, Lr3/a$d$d;->b:I

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
    invoke-static {}, Lr3/a$d$d;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lr3/a$d$d;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lr3/a$d$d;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lr3/a$d$d;->M2()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lr3/a$d$d;->B4()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    invoke-virtual {p0}, Lr3/a$d$d;->U5()Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lr3/a$d$d;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    invoke-virtual {p0}, Lr3/a$d$d;->w4()Z

    move-result v0

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lr3/a$d$d;->a2()Lcom/google/protobuf/H$x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$x;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
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

    invoke-static {}, Lr3/a;->h()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lr3/a$d$d;

    const-class v2, Lr3/a$d$d$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lr3/a$d$d;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lr3/a$d$d;->g:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr3/a$d$d;->G6()Lr3/a$d$d$b;

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
    invoke-virtual {p0, p1}, Lr3/a$d$d;->H6(Lcom/google/protobuf/w0$c;)Lr3/a$d$d$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lr3/a$d$d;->G6()Lr3/a$d$d$b;

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

    new-instance p1, Lr3/a$d$d;

    invoke-direct {p1}, Lr3/a$d$d;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr3/a$d$d;->U6()Lr3/a$d$d$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lr3/a$d$d;->U6()Lr3/a$d$d$b;

    move-result-object v0

    return-object v0
.end method

.method public w4()Z
    .locals 1

    iget v0, p0, Lr3/a$d$d;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    iget v0, p0, Lr3/a$d$d;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr3/a$d$d;->c:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lr3/a$d$d;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr3/a$d$d;->d:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    iget v0, p0, Lr3/a$d$d;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const/16 v0, 0xf

    iget-object v1, p0, Lr3/a$d$d;->e:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2
    iget v0, p0, Lr3/a$d$d;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const/16 v0, 0x10

    invoke-virtual {p0}, Lr3/a$d$d;->a2()Lcom/google/protobuf/H$x;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
