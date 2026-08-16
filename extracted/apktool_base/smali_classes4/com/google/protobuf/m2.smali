.class public final Lcom/google/protobuf/m2;
.super Lcom/google/protobuf/w0;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/n2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/m2$b;
    }
.end annotation


# static fields
.field public static final d:J = 0x0L

.field public static final e:I = 0x1

.field public static final f:Lcom/google/protobuf/m2;

.field public static final g:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/m2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:I

.field public c:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/m2;

    invoke-direct {v0}, Lcom/google/protobuf/m2;-><init>()V

    sput-object v0, Lcom/google/protobuf/m2;->f:Lcom/google/protobuf/m2;

    new-instance v0, Lcom/google/protobuf/m2$a;

    invoke-direct {v0}, Lcom/google/protobuf/m2$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/m2;->g:Lcom/google/protobuf/w1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/w0;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/protobuf/m2;->b:I

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/google/protobuf/m2;->c:B

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
    iput p1, p0, Lcom/google/protobuf/m2;->b:I

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/google/protobuf/m2;->c:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/m2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/m2;-><init>(Lcom/google/protobuf/w0$b;)V

    return-void
.end method

.method public static A6(I)Lcom/google/protobuf/m2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/m2;->w6()Lcom/google/protobuf/m2$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/m2$b;->x6(I)Lcom/google/protobuf/m2$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/m2$b;->m1()Lcom/google/protobuf/m2;

    move-result-object p0

    return-object p0
.end method

.method public static B6(Ljava/io/InputStream;)Lcom/google/protobuf/m2;
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

    sget-object v0, Lcom/google/protobuf/m2;->g:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/m2;

    return-object p0
.end method

.method public static C6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/m2;
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

    sget-object v0, Lcom/google/protobuf/m2;->g:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/m2;

    return-object p0
.end method

.method public static D6(Lcom/google/protobuf/x;)Lcom/google/protobuf/m2;
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

    sget-object v0, Lcom/google/protobuf/m2;->g:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/m2;

    return-object p0
.end method

.method public static E6(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/m2;
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

    sget-object v0, Lcom/google/protobuf/m2;->g:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/m2;

    return-object p0
.end method

.method public static F6(Lcom/google/protobuf/C;)Lcom/google/protobuf/m2;
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

    sget-object v0, Lcom/google/protobuf/m2;->g:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/m2;

    return-object p0
.end method

.method public static G6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/m2;
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

    sget-object v0, Lcom/google/protobuf/m2;->g:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/m2;

    return-object p0
.end method

.method public static H6(Ljava/io/InputStream;)Lcom/google/protobuf/m2;
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

    sget-object v0, Lcom/google/protobuf/m2;->g:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/m2;

    return-object p0
.end method

.method public static I6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/m2;
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

    sget-object v0, Lcom/google/protobuf/m2;->g:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/m2;

    return-object p0
.end method

.method public static J6(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/m2;
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

    sget-object v0, Lcom/google/protobuf/m2;->g:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/m2;

    return-object p0
.end method

.method public static K6(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/google/protobuf/m2;
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

    sget-object v0, Lcom/google/protobuf/m2;->g:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/m2;

    return-object p0
.end method

.method public static L6([B)Lcom/google/protobuf/m2;
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

    sget-object v0, Lcom/google/protobuf/m2;->g:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/m2;

    return-object p0
.end method

.method public static M6([BLcom/google/protobuf/d0;)Lcom/google/protobuf/m2;
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

    sget-object v0, Lcom/google/protobuf/m2;->g:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/m2;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/B2;->k:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/m2;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/m2;->g:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public static synthetic t6(Lcom/google/protobuf/m2;I)I
    .locals 0

    iput p1, p0, Lcom/google/protobuf/m2;->b:I

    return p1
.end method

.method public static u6()Lcom/google/protobuf/m2;
    .locals 1

    sget-object v0, Lcom/google/protobuf/m2;->f:Lcom/google/protobuf/m2;

    return-object v0
.end method

.method public static w6()Lcom/google/protobuf/m2$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/m2;->f:Lcom/google/protobuf/m2;

    invoke-virtual {v0}, Lcom/google/protobuf/m2;->N6()Lcom/google/protobuf/m2$b;

    move-result-object v0

    return-object v0
.end method

.method public static x6(Lcom/google/protobuf/m2;)Lcom/google/protobuf/m2$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/m2;->f:Lcom/google/protobuf/m2;

    invoke-virtual {v0}, Lcom/google/protobuf/m2;->N6()Lcom/google/protobuf/m2$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/m2$b;->u6(Lcom/google/protobuf/m2;)Lcom/google/protobuf/m2$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public N6()Lcom/google/protobuf/m2$b;
    .locals 2

    sget-object v0, Lcom/google/protobuf/m2;->f:Lcom/google/protobuf/m2;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/m2$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/m2$b;-><init>(Lcom/google/protobuf/m2$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/m2$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/m2$b;-><init>(Lcom/google/protobuf/m2$a;)V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/m2$b;->u6(Lcom/google/protobuf/m2;)Lcom/google/protobuf/m2$b;

    move-result-object v0

    :goto_0
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
    instance-of v1, p1, Lcom/google/protobuf/m2;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/protobuf/m2;

    invoke-virtual {p0}, Lcom/google/protobuf/m2;->getValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/m2;->getValue()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/r2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v3

    :cond_3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/m2;->v6()Lcom/google/protobuf/m2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/m2;->v6()Lcom/google/protobuf/m2;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/m2;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/m2;->g:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/m2;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->Y0(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/m2;->b:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/m2;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/m2;->getValue()I

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

    sget-object v0, Lcom/google/protobuf/B2;->l:Lcom/google/protobuf/w0$h;

    const-class v1, Lcom/google/protobuf/m2;

    const-class v2, Lcom/google/protobuf/m2$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/google/protobuf/m2;->c:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/m2;->c:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/m2;->y6()Lcom/google/protobuf/m2$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/m2;->z6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/m2$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/m2;->y6()Lcom/google/protobuf/m2$b;

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

    new-instance p1, Lcom/google/protobuf/m2;

    invoke-direct {p1}, Lcom/google/protobuf/m2;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/m2;->N6()Lcom/google/protobuf/m2$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/m2;->N6()Lcom/google/protobuf/m2$b;

    move-result-object v0

    return-object v0
.end method

.method public v6()Lcom/google/protobuf/m2;
    .locals 1

    sget-object v0, Lcom/google/protobuf/m2;->f:Lcom/google/protobuf/m2;

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

    iget v0, p0, Lcom/google/protobuf/m2;->b:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->m(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public y6()Lcom/google/protobuf/m2$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/m2;->w6()Lcom/google/protobuf/m2$b;

    move-result-object v0

    return-object v0
.end method

.method public z6(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/m2$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/m2$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/m2$b;-><init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/m2$a;)V

    return-object v0
.end method
