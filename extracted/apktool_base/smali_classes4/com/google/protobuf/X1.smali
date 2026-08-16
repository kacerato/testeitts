.class public final Lcom/google/protobuf/X1;
.super Lcom/google/protobuf/w0;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Y1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/X1$b;,
        Lcom/google/protobuf/X1$c;
    }
.end annotation


# static fields
.field public static final d:J = 0x0L

.field public static final e:I = 0x1

.field public static final f:Lcom/google/protobuf/X1;

.field public static final g:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/X1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Lcom/google/protobuf/S0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/S0<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/y2;",
            ">;"
        }
    .end annotation
.end field

.field public c:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/X1;

    invoke-direct {v0}, Lcom/google/protobuf/X1;-><init>()V

    sput-object v0, Lcom/google/protobuf/X1;->f:Lcom/google/protobuf/X1;

    new-instance v0, Lcom/google/protobuf/X1$a;

    invoke-direct {v0}, Lcom/google/protobuf/X1$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/X1;->g:Lcom/google/protobuf/w1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/w0;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput-byte v0, p0, Lcom/google/protobuf/X1;->c:B

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

    const/4 p1, -0x1

    .line 3
    iput-byte p1, p0, Lcom/google/protobuf/X1;->c:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/X1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/X1;-><init>(Lcom/google/protobuf/w0$b;)V

    return-void
.end method

.method public static A6(Lcom/google/protobuf/X1;)Lcom/google/protobuf/X1$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/X1;->f:Lcom/google/protobuf/X1;

    invoke-virtual {v0}, Lcom/google/protobuf/X1;->P6()Lcom/google/protobuf/X1$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/X1$b;->x6(Lcom/google/protobuf/X1;)Lcom/google/protobuf/X1$b;

    move-result-object p0

    return-object p0
.end method

.method public static D6(Ljava/io/InputStream;)Lcom/google/protobuf/X1;
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

    sget-object v0, Lcom/google/protobuf/X1;->g:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/X1;

    return-object p0
.end method

.method public static E6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/X1;
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

    sget-object v0, Lcom/google/protobuf/X1;->g:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/X1;

    return-object p0
.end method

.method public static F6(Lcom/google/protobuf/x;)Lcom/google/protobuf/X1;
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

    sget-object v0, Lcom/google/protobuf/X1;->g:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/X1;

    return-object p0
.end method

.method public static G6(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/X1;
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

    sget-object v0, Lcom/google/protobuf/X1;->g:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/X1;

    return-object p0
.end method

.method public static H6(Lcom/google/protobuf/C;)Lcom/google/protobuf/X1;
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

    sget-object v0, Lcom/google/protobuf/X1;->g:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/X1;

    return-object p0
.end method

.method public static I6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/X1;
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

    sget-object v0, Lcom/google/protobuf/X1;->g:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/X1;

    return-object p0
.end method

.method public static J6(Ljava/io/InputStream;)Lcom/google/protobuf/X1;
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

    sget-object v0, Lcom/google/protobuf/X1;->g:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/X1;

    return-object p0
.end method

.method public static K6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/X1;
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

    sget-object v0, Lcom/google/protobuf/X1;->g:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/X1;

    return-object p0
.end method

.method public static L6(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/X1;
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

    sget-object v0, Lcom/google/protobuf/X1;->g:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/X1;

    return-object p0
.end method

.method public static M6(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/google/protobuf/X1;
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

    sget-object v0, Lcom/google/protobuf/X1;->g:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/X1;

    return-object p0
.end method

.method public static N6([B)Lcom/google/protobuf/X1;
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

    sget-object v0, Lcom/google/protobuf/X1;->g:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/X1;

    return-object p0
.end method

.method public static O6([BLcom/google/protobuf/d0;)Lcom/google/protobuf/X1;
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

    sget-object v0, Lcom/google/protobuf/X1;->g:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/X1;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Z1;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/X1;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/X1;->g:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public static synthetic t6(Lcom/google/protobuf/X1;)Lcom/google/protobuf/S0;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/X1;->b:Lcom/google/protobuf/S0;

    return-object p0
.end method

.method public static synthetic u6(Lcom/google/protobuf/X1;Lcom/google/protobuf/S0;)Lcom/google/protobuf/S0;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/X1;->b:Lcom/google/protobuf/S0;

    return-object p1
.end method

.method public static synthetic v6(Lcom/google/protobuf/X1;)Lcom/google/protobuf/S0;
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/X1;->y6()Lcom/google/protobuf/S0;

    move-result-object p0

    return-object p0
.end method

.method public static w6()Lcom/google/protobuf/X1;
    .locals 1

    sget-object v0, Lcom/google/protobuf/X1;->f:Lcom/google/protobuf/X1;

    return-object v0
.end method

.method private y6()Lcom/google/protobuf/S0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/S0<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/y2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/X1;->b:Lcom/google/protobuf/S0;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/X1$c;->a:Lcom/google/protobuf/Q0;

    invoke-static {v0}, Lcom/google/protobuf/S0;->h(Lcom/google/protobuf/Q0;)Lcom/google/protobuf/S0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static z6()Lcom/google/protobuf/X1$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/X1;->f:Lcom/google/protobuf/X1;

    invoke-virtual {v0}, Lcom/google/protobuf/X1;->P6()Lcom/google/protobuf/X1$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public B6()Lcom/google/protobuf/X1$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/X1;->z6()Lcom/google/protobuf/X1$b;

    move-result-object v0

    return-object v0
.end method

.method public C6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/X1$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/X1$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/X1$b;-><init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/X1$a;)V

    return-object v0
.end method

.method public P2(Ljava/lang/String;Lcom/google/protobuf/y2;)Lcom/google/protobuf/y2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/protobuf/X1;->y6()Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/S0;->j()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/google/protobuf/y2;

    :cond_0
    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "map key"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public P6()Lcom/google/protobuf/X1$b;
    .locals 2

    sget-object v0, Lcom/google/protobuf/X1;->f:Lcom/google/protobuf/X1;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/X1$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/X1$b;-><init>(Lcom/google/protobuf/X1$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/X1$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/X1$b;-><init>(Lcom/google/protobuf/X1$a;)V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/X1$b;->x6(Lcom/google/protobuf/X1;)Lcom/google/protobuf/X1$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
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
    instance-of v1, p1, Lcom/google/protobuf/X1;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/protobuf/X1;

    invoke-direct {p0}, Lcom/google/protobuf/X1;->y6()Lcom/google/protobuf/S0;

    move-result-object v1

    invoke-direct {p1}, Lcom/google/protobuf/X1;->y6()Lcom/google/protobuf/S0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/S0;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/r2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/X1;->x6()Lcom/google/protobuf/X1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/X1;->x6()Lcom/google/protobuf/X1;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/y2;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/X1;->s2()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFieldsCount()I
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/X1;->y6()Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/S0;->j()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/X1;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/X1;->g:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/X1;->y6()Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/S0;->j()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    sget-object v3, Lcom/google/protobuf/X1$c;->a:Lcom/google/protobuf/Q0;

    invoke-virtual {v3}, Lcom/google/protobuf/Q0;->w6()Lcom/google/protobuf/Q0$b;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/protobuf/Q0$b;->w6(Ljava/lang/Object;)Lcom/google/protobuf/Q0$b;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/y2;

    invoke-virtual {v3, v2}, Lcom/google/protobuf/Q0$b;->z6(Ljava/lang/Object;)Lcom/google/protobuf/Q0$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Q0$b;->T0()Lcom/google/protobuf/Q0;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/X1;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    invoke-direct {p0}, Lcom/google/protobuf/X1;->y6()Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/S0;->j()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-direct {p0}, Lcom/google/protobuf/X1;->y6()Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/S0;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
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

    sget-object v0, Lcom/google/protobuf/Z1;->b:Lcom/google/protobuf/w0$h;

    const-class v1, Lcom/google/protobuf/X1;

    const-class v2, Lcom/google/protobuf/X1$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public internalGetMapField(I)Lcom/google/protobuf/S0;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/X1;->y6()Lcom/google/protobuf/S0;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/google/protobuf/X1;->c:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/X1;->c:B

    return v1
.end method

.method public k3(Ljava/lang/String;)Lcom/google/protobuf/y2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/protobuf/X1;->y6()Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/S0;->j()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/y2;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "map key"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n5(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/X1;->y6()Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/S0;->j()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "map key"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/X1;->B6()Lcom/google/protobuf/X1$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/X1;->C6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/X1$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/X1;->B6()Lcom/google/protobuf/X1$b;

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

    new-instance p1, Lcom/google/protobuf/X1;

    invoke-direct {p1}, Lcom/google/protobuf/X1;-><init>()V

    return-object p1
.end method

.method public s2()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/y2;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/X1;->y6()Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/S0;->j()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/X1;->P6()Lcom/google/protobuf/X1$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/X1;->P6()Lcom/google/protobuf/X1$b;

    move-result-object v0

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

    invoke-direct {p0}, Lcom/google/protobuf/X1;->y6()Lcom/google/protobuf/S0;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/X1$c;->a:Lcom/google/protobuf/Q0;

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/w0;->serializeStringMapTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/S0;Lcom/google/protobuf/Q0;I)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public x6()Lcom/google/protobuf/X1;
    .locals 1

    sget-object v0, Lcom/google/protobuf/X1;->f:Lcom/google/protobuf/X1;

    return-object v0
.end method
