.class public abstract Lcom/android/tools/r8/internal/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/z50;


# static fields
.field private static final EMPTY_REGISTRY:Lcom/android/tools/r8/internal/zv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/internal/zv;->a()Lcom/android/tools/r8/internal/zv;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/k1;->EMPTY_REGISTRY:Lcom/android/tools/r8/internal/zv;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/android/tools/r8/internal/kW;)Lcom/android/tools/r8/internal/kW;
    .locals 2

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/tools/r8/internal/mW;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/P0;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/P0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/P0;->newUninitializedMessageException()Lcom/android/tools/r8/internal/dv0;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/dv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/dv0;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/tools/r8/internal/MJ;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    iput-object p0, v1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    throw v1

    :cond_1
    return-object p0
.end method


# virtual methods
.method public parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/internal/kW;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/android/tools/r8/internal/k1;->EMPTY_REGISTRY:Lcom/android/tools/r8/internal/zv;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/k1;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/tools/r8/internal/zv;",
            ")",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/k1;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/k1;->a(Lcom/android/tools/r8/internal/kW;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/k1;->parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/k1;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/internal/kW;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/Be;",
            ")",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 14
    sget-object v0, Lcom/android/tools/r8/internal/k1;->EMPTY_REGISTRY:Lcom/android/tools/r8/internal/zv;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/k1;->parseFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/Be;",
            "Lcom/android/tools/r8/internal/zv;",
            ")",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 13
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/z50;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/kW;

    invoke-static {p1}, Lcom/android/tools/r8/internal/k1;->a(Lcom/android/tools/r8/internal/kW;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Lcom/android/tools/r8/internal/m8;)Lcom/android/tools/r8/internal/kW;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/m8;",
            ")",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 16
    sget-object v0, Lcom/android/tools/r8/internal/k1;->EMPTY_REGISTRY:Lcom/android/tools/r8/internal/zv;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/k1;->parseFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/m8;",
            "Lcom/android/tools/r8/internal/zv;",
            ")",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/k1;->parsePartialFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/k1;->a(Lcom/android/tools/r8/internal/kW;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/internal/kW;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/android/tools/r8/internal/k1;->EMPTY_REGISTRY:Lcom/android/tools/r8/internal/zv;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/k1;->parseFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/tools/r8/internal/zv;",
            ")",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/k1;->parsePartialFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/k1;->a(Lcom/android/tools/r8/internal/kW;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/tools/r8/internal/kW;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 17
    sget-object v0, Lcom/android/tools/r8/internal/k1;->EMPTY_REGISTRY:Lcom/android/tools/r8/internal/zv;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/k1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Ljava/nio/ByteBuffer;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lcom/android/tools/r8/internal/zv;",
            ")",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    .line 20
    invoke-static {v0, v3, p1, v1}, Lcom/android/tools/r8/internal/Be;->a([BIIZ)Lcom/android/tools/r8/internal/xe;

    move-result-object p1

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    sget-boolean v0, Lcom/android/tools/r8/internal/bw0;->d:Z

    if-eqz v0, :cond_1

    .line 23
    new-instance v0, Lcom/android/tools/r8/internal/ze;

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/ze;-><init>(Ljava/nio/ByteBuffer;Z)V

    move-object p1, v0

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v2, v0, [B

    .line 25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    .line 26
    invoke-static {v2, v1, v0, p1}, Lcom/android/tools/r8/internal/Be;->a([BIIZ)Lcom/android/tools/r8/internal/xe;

    move-result-object p1

    .line 27
    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/z50;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/kW;

    .line 28
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Be;->a(I)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    invoke-static {p2}, Lcom/android/tools/r8/internal/k1;->a(Lcom/android/tools/r8/internal/kW;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 30
    iput-object p2, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 31
    throw p1
.end method

.method public parseFrom([B)Lcom/android/tools/r8/internal/kW;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/android/tools/r8/internal/k1;->EMPTY_REGISTRY:Lcom/android/tools/r8/internal/zv;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/k1;->parseFrom([BLcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom([BII)Lcom/android/tools/r8/internal/kW;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 33
    sget-object v0, Lcom/android/tools/r8/internal/k1;->EMPTY_REGISTRY:Lcom/android/tools/r8/internal/zv;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/k1;->parseFrom([BIILcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom([BIILcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/android/tools/r8/internal/zv;",
            ")",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/k1;->parsePartialFrom([BIILcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/k1;->a(Lcom/android/tools/r8/internal/kW;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom([BLcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/tools/r8/internal/zv;",
            ")",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 34
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/tools/r8/internal/k1;->parseFrom([BIILcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Lcom/android/tools/r8/internal/Be;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/k1;->parseFrom(Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/k1;->parseFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Lcom/android/tools/r8/internal/m8;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/k1;->parseFrom(Lcom/android/tools/r8/internal/m8;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/k1;->parseFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/k1;->parseFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/k1;->parseFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/k1;->parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Ljava/nio/ByteBuffer;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/k1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/k1;->parseFrom([B)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom([BII)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/k1;->parseFrom([BII)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom([BIILcom/android/tools/r8/internal/zv;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/k1;->parseFrom([BIILcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom([BLcom/android/tools/r8/internal/zv;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/k1;->parseFrom([BLcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialDelimitedFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/internal/kW;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/android/tools/r8/internal/k1;->EMPTY_REGISTRY:Lcom/android/tools/r8/internal/zv;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/k1;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/tools/r8/internal/zv;",
            ")",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Be;->a(ILjava/io/InputStream;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/M0;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/M0;-><init>(ILjava/io/InputStream;)V

    .line 6
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/internal/k1;->parsePartialFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic parsePartialDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/k1;->parsePartialDelimitedFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/k1;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialFrom(Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/internal/kW;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/Be;",
            ")",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/android/tools/r8/internal/k1;->EMPTY_REGISTRY:Lcom/android/tools/r8/internal/zv;

    invoke-interface {p0, p1, v0}, Lcom/android/tools/r8/internal/z50;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/kW;

    return-object p1
.end method

.method public parsePartialFrom(Lcom/android/tools/r8/internal/m8;)Lcom/android/tools/r8/internal/kW;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/m8;",
            ")",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 24
    sget-object v0, Lcom/android/tools/r8/internal/k1;->EMPTY_REGISTRY:Lcom/android/tools/r8/internal/zv;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/k1;->parsePartialFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/m8;",
            "Lcom/android/tools/r8/internal/zv;",
            ")",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/m8;->b()Lcom/android/tools/r8/internal/Be;

    move-result-object p1

    .line 20
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/z50;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/kW;

    const/4 v0, 0x0

    .line 21
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Be;->a(I)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 22
    iput-object p2, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 23
    throw p1
.end method

.method public parsePartialFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/internal/kW;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 33
    sget-object v0, Lcom/android/tools/r8/internal/k1;->EMPTY_REGISTRY:Lcom/android/tools/r8/internal/zv;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/k1;->parsePartialFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/tools/r8/internal/zv;",
            ")",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 11
    sget-object p1, Lcom/android/tools/r8/internal/YI;->d:[B

    .line 12
    array-length v1, p1

    .line 13
    invoke-static {p1, v0, v1, v0}, Lcom/android/tools/r8/internal/Be;->a([BIIZ)Lcom/android/tools/r8/internal/xe;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/ye;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/ye;-><init>(Ljava/io/InputStream;)V

    move-object p1, v1

    .line 15
    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/z50;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/kW;

    .line 16
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Be;->a(I)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 17
    iput-object p2, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 18
    throw p1
.end method

.method public parsePartialFrom([B)Lcom/android/tools/r8/internal/kW;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 32
    array-length v0, p1

    sget-object v1, Lcom/android/tools/r8/internal/k1;->EMPTY_REGISTRY:Lcom/android/tools/r8/internal/zv;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/tools/r8/internal/k1;->parsePartialFrom([BIILcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialFrom([BII)Lcom/android/tools/r8/internal/kW;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/android/tools/r8/internal/k1;->EMPTY_REGISTRY:Lcom/android/tools/r8/internal/zv;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/k1;->parsePartialFrom([BIILcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialFrom([BIILcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/android/tools/r8/internal/zv;",
            ")",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    const/4 v0, 0x0

    .line 25
    invoke-static {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/Be;->a([BIIZ)Lcom/android/tools/r8/internal/xe;

    move-result-object p1

    .line 26
    invoke-interface {p0, p1, p4}, Lcom/android/tools/r8/internal/z50;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/kW;

    .line 27
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/xe;->a(I)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 28
    iput-object p2, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 29
    throw p1
.end method

.method public parsePartialFrom([BLcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/tools/r8/internal/zv;",
            ")",
            "Lcom/android/tools/r8/internal/kW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 31
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/tools/r8/internal/k1;->parsePartialFrom([BIILcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Lcom/android/tools/r8/internal/Be;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/k1;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Lcom/android/tools/r8/internal/m8;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/k1;->parsePartialFrom(Lcom/android/tools/r8/internal/m8;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/k1;->parsePartialFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/k1;->parsePartialFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/k1;->parsePartialFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/k1;->parsePartialFrom([B)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom([BII)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/k1;->parsePartialFrom([BII)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom([BIILcom/android/tools/r8/internal/zv;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/k1;->parsePartialFrom([BIILcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom([BLcom/android/tools/r8/internal/zv;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/k1;->parsePartialFrom([BLcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    return-object p1
.end method
