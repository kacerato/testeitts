.class public final Lcom/google/protobuf/g;
.super Lcom/google/protobuf/w0;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/g$b;
    }
.end annotation


# static fields
.field public static final f:J = 0x0L

.field public static final g:I = 0x1

.field public static final h:I = 0x2

.field public static final i:Lcom/google/protobuf/g;

.field public static final j:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public volatile b:Lcom/google/protobuf/Y0;

.field public volatile c:Ljava/lang/Object;

.field public d:Lcom/google/protobuf/x;

.field public e:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/g;

    invoke-direct {v0}, Lcom/google/protobuf/g;-><init>()V

    sput-object v0, Lcom/google/protobuf/g;->i:Lcom/google/protobuf/g;

    new-instance v0, Lcom/google/protobuf/g$a;

    invoke-direct {v0}, Lcom/google/protobuf/g$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/g;->j:Lcom/google/protobuf/w1;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/w0;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/g;->c:Ljava/lang/Object;

    .line 8
    sget-object v1, Lcom/google/protobuf/x;->g:Lcom/google/protobuf/x;

    iput-object v1, p0, Lcom/google/protobuf/g;->d:Lcom/google/protobuf/x;

    const/4 v2, -0x1

    .line 9
    iput-byte v2, p0, Lcom/google/protobuf/g;->e:B

    .line 10
    iput-object v0, p0, Lcom/google/protobuf/g;->c:Ljava/lang/Object;

    .line 11
    iput-object v1, p0, Lcom/google/protobuf/g;->d:Lcom/google/protobuf/x;

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

    iput-object p1, p0, Lcom/google/protobuf/g;->c:Ljava/lang/Object;

    .line 4
    sget-object p1, Lcom/google/protobuf/x;->g:Lcom/google/protobuf/x;

    iput-object p1, p0, Lcom/google/protobuf/g;->d:Lcom/google/protobuf/x;

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lcom/google/protobuf/g;->e:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/g;-><init>(Lcom/google/protobuf/w0$b;)V

    return-void
.end method

.method public static C6()Lcom/google/protobuf/g$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/g;->i:Lcom/google/protobuf/g;

    invoke-virtual {v0}, Lcom/google/protobuf/g;->U6()Lcom/google/protobuf/g$b;

    move-result-object v0

    return-object v0
.end method

.method public static D6(Lcom/google/protobuf/g;)Lcom/google/protobuf/g$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/g;->i:Lcom/google/protobuf/g;

    invoke-virtual {v0}, Lcom/google/protobuf/g;->U6()Lcom/google/protobuf/g$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/g$b;->t6(Lcom/google/protobuf/g;)Lcom/google/protobuf/g$b;

    move-result-object p0

    return-object p0
.end method

.method public static G6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/Y0;",
            ">(TT;)",
            "Lcom/google/protobuf/g;"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/g;->C6()Lcom/google/protobuf/g$b;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/protobuf/e1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    const-string v2, "type.googleapis.com"

    invoke-static {v2, v1}, Lcom/google/protobuf/g;->z6(Ljava/lang/String;Lcom/google/protobuf/Descriptors$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/g$b;->x6(Ljava/lang/String;)Lcom/google/protobuf/g$b;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/protobuf/b1;->toByteString()Lcom/google/protobuf/x;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/g$b;->A6(Lcom/google/protobuf/x;)Lcom/google/protobuf/g$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/g$b;->m1()Lcom/google/protobuf/g;

    move-result-object p0

    return-object p0
.end method

.method public static H6(Lcom/google/protobuf/Y0;Ljava/lang/String;)Lcom/google/protobuf/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "typeUrlPrefix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/Y0;",
            ">(TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/protobuf/g;"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/g;->C6()Lcom/google/protobuf/g$b;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/protobuf/e1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/protobuf/g;->z6(Ljava/lang/String;Lcom/google/protobuf/Descriptors$b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/g$b;->x6(Ljava/lang/String;)Lcom/google/protobuf/g$b;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/protobuf/b1;->toByteString()Lcom/google/protobuf/x;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/g$b;->A6(Lcom/google/protobuf/x;)Lcom/google/protobuf/g$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/g$b;->m1()Lcom/google/protobuf/g;

    move-result-object p0

    return-object p0
.end method

.method public static I6(Ljava/io/InputStream;)Lcom/google/protobuf/g;
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

    sget-object v0, Lcom/google/protobuf/g;->j:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/g;

    return-object p0
.end method

.method public static J6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/g;
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

    sget-object v0, Lcom/google/protobuf/g;->j:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/g;

    return-object p0
.end method

.method public static K6(Lcom/google/protobuf/x;)Lcom/google/protobuf/g;
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

    sget-object v0, Lcom/google/protobuf/g;->j:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/g;

    return-object p0
.end method

.method public static L6(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/g;
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

    sget-object v0, Lcom/google/protobuf/g;->j:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/g;

    return-object p0
.end method

.method public static M6(Lcom/google/protobuf/C;)Lcom/google/protobuf/g;
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

    sget-object v0, Lcom/google/protobuf/g;->j:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/g;

    return-object p0
.end method

.method public static N6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/g;
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

    sget-object v0, Lcom/google/protobuf/g;->j:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/g;

    return-object p0
.end method

.method public static O6(Ljava/io/InputStream;)Lcom/google/protobuf/g;
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

    sget-object v0, Lcom/google/protobuf/g;->j:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/g;

    return-object p0
.end method

.method public static P6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/g;
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

    sget-object v0, Lcom/google/protobuf/g;->j:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/g;

    return-object p0
.end method

.method public static Q6(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/g;
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

    sget-object v0, Lcom/google/protobuf/g;->j:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/g;

    return-object p0
.end method

.method public static R6(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/google/protobuf/g;
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

    sget-object v0, Lcom/google/protobuf/g;->j:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/g;

    return-object p0
.end method

.method public static S6([B)Lcom/google/protobuf/g;
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

    sget-object v0, Lcom/google/protobuf/g;->j:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/g;

    return-object p0
.end method

.method public static T6([BLcom/google/protobuf/d0;)Lcom/google/protobuf/g;
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

    sget-object v0, Lcom/google/protobuf/g;->j:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/g;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/i;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/g;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/g;->j:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public static synthetic t6(Lcom/google/protobuf/g;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/g;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic u6(Lcom/google/protobuf/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/g;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic v6(Lcom/google/protobuf/g;Lcom/google/protobuf/x;)Lcom/google/protobuf/x;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/g;->d:Lcom/google/protobuf/x;

    return-object p1
.end method

.method public static w6()Lcom/google/protobuf/g;
    .locals 1

    sget-object v0, Lcom/google/protobuf/g;->i:Lcom/google/protobuf/g;

    return-object v0
.end method

.method public static y6(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeUrl"
        }
    .end annotation

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static z6(Ljava/lang/String;Lcom/google/protobuf/Descriptors$b;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeUrlPrefix",
            "descriptor"
        }
    .end annotation

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public A6(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/Y0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/D0;->j(Ljava/lang/Class;)Lcom/google/protobuf/b1;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Y0;

    invoke-virtual {p0}, Lcom/google/protobuf/g;->O()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/g;->y6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/protobuf/e1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public B6(Lcom/google/protobuf/Y0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/g;->O()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/g;->y6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/protobuf/e1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public E6()Lcom/google/protobuf/g$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/g;->C6()Lcom/google/protobuf/g$b;

    move-result-object v0

    return-object v0
.end method

.method public F6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/g$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/g$b;-><init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/g$a;)V

    return-object v0
.end method

.method public K()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/g;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/g;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/g;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/g;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public U6()Lcom/google/protobuf/g$b;
    .locals 2

    sget-object v0, Lcom/google/protobuf/g;->i:Lcom/google/protobuf/g;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/g$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/g$b;-><init>(Lcom/google/protobuf/g$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/g$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/g$b;-><init>(Lcom/google/protobuf/g$a;)V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/g$b;->t6(Lcom/google/protobuf/g;)Lcom/google/protobuf/g$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public V6(Ljava/lang/Class;)Lcom/google/protobuf/Y0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/Y0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/g;->b:Lcom/google/protobuf/Y0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/g;->b:Lcom/google/protobuf/Y0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/g;->b:Lcom/google/protobuf/Y0;

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g;->A6(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/D0;->j(Ljava/lang/Class;)Lcom/google/protobuf/b1;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Y0;

    invoke-interface {p1}, Lcom/google/protobuf/Y0;->getParserForType()Lcom/google/protobuf/w1;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/g;->getValue()Lcom/google/protobuf/x;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Y0;

    iput-object p1, p0, Lcom/google/protobuf/g;->b:Lcom/google/protobuf/Y0;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v0, "Type of the Any message does not match the given class."

    invoke-direct {p1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public W6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/Y0;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/g;->b:Lcom/google/protobuf/Y0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/g;->b:Lcom/google/protobuf/Y0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/g;->b:Lcom/google/protobuf/Y0;

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g;->B6(Lcom/google/protobuf/Y0;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/protobuf/Y0;->getParserForType()Lcom/google/protobuf/w1;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/g;->getValue()Lcom/google/protobuf/x;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Y0;

    iput-object p1, p0, Lcom/google/protobuf/g;->b:Lcom/google/protobuf/Y0;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v0, "Type of the Any message does not match the given exemplar."

    invoke-direct {p1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1
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
    instance-of v1, p1, Lcom/google/protobuf/g;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/protobuf/g;

    invoke-virtual {p0}, Lcom/google/protobuf/g;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/g;->O()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/g;->getValue()Lcom/google/protobuf/x;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/g;->getValue()Lcom/google/protobuf/x;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/x;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
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
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/g;->x6()Lcom/google/protobuf/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/g;->x6()Lcom/google/protobuf/g;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/g;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/g;->j:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/g;->c:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/w0;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/protobuf/g;->c:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/g;->d:Lcom/google/protobuf/x;

    invoke-virtual {v1}, Lcom/google/protobuf/x;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/g;->d:Lcom/google/protobuf/x;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->g0(ILcom/google/protobuf/x;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getValue()Lcom/google/protobuf/x;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/g;->d:Lcom/google/protobuf/x;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/g;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/g;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/g;->getValue()Lcom/google/protobuf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/x;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

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

    sget-object v0, Lcom/google/protobuf/i;->b:Lcom/google/protobuf/w0$h;

    const-class v1, Lcom/google/protobuf/g;

    const-class v2, Lcom/google/protobuf/g$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/google/protobuf/g;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/g;->e:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/g;->E6()Lcom/google/protobuf/g$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g;->F6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/g$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/g;->E6()Lcom/google/protobuf/g$b;

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

    new-instance p1, Lcom/google/protobuf/g;

    invoke-direct {p1}, Lcom/google/protobuf/g;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/g;->U6()Lcom/google/protobuf/g$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/g;->U6()Lcom/google/protobuf/g$b;

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

    iget-object v0, p0, Lcom/google/protobuf/g;->c:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/w0;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/protobuf/g;->c:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/g;->d:Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/protobuf/g;->d:Lcom/google/protobuf/x;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->h(ILcom/google/protobuf/x;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public x6()Lcom/google/protobuf/g;
    .locals 1

    sget-object v0, Lcom/google/protobuf/g;->i:Lcom/google/protobuf/g;

    return-object v0
.end method
