.class Lorg/tukaani/xz/SimpleInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final FILTER_BUF_SIZE:I = 0x1000


# instance fields
.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private final filterBuf:[B

.field private filtered:I

.field private in:Ljava/io/InputStream;

.field private pos:I

.field private final simpleFilter:Lorg/tukaani/xz/simple/SimpleFilter;

.field private final tempBuf:[B

.field private unfiltered:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/tukaani/xz/simple/SimpleFilter;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->filterBuf:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iput v0, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    iput v0, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    iput-boolean v0, p0, Lorg/tukaani/xz/SimpleInputStream;->endReached:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->tempBuf:[B

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    iput-object p2, p0, Lorg/tukaani/xz/SimpleInputStream;->simpleFilter:Lorg/tukaani/xz/simple/SimpleFilter;

    return-void
.end method

.method public static getMemoryUsage()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    return v0

    :cond_0
    throw v0

    :cond_1
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->tempBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/SimpleInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->tempBuf:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    if-ltz p2, :cond_8

    if-ltz p3, :cond_8

    add-int v0, p2, p3

    if-ltz v0, :cond_8

    array-length v1, p1

    if-gt v0, v1, :cond_8

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_6

    move v1, v0

    :goto_0
    :try_start_0
    iget v2, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lorg/tukaani/xz/SimpleInputStream;->filterBuf:[B

    iget v4, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    invoke-static {v3, v4, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget v4, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    sub-int/2addr v4, v2

    iput v4, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    add-int/2addr v1, v2

    add-int v2, v3, v4

    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    add-int/2addr v2, v5

    const/16 v6, 0x1000

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Lorg/tukaani/xz/SimpleInputStream;->filterBuf:[B

    add-int/2addr v4, v5

    invoke-static {v2, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_1
    const/4 v2, -0x1

    if-eqz p3, :cond_4

    iget-boolean v3, p0, Lorg/tukaani/xz/SimpleInputStream;->endReached:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget v4, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    add-int v5, v3, v4

    iget v7, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    add-int/2addr v5, v7

    sub-int/2addr v6, v5

    iget-object v5, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    iget-object v8, p0, Lorg/tukaani/xz/SimpleInputStream;->filterBuf:[B

    add-int/2addr v3, v4

    add-int/2addr v3, v7

    invoke-virtual {v5, v8, v3, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ne v3, v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/tukaani/xz/SimpleInputStream;->endReached:Z

    iget v2, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    iput v2, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    iput v0, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    goto :goto_0

    :cond_3
    iget v2, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    iget-object v3, p0, Lorg/tukaani/xz/SimpleInputStream;->simpleFilter:Lorg/tukaani/xz/simple/SimpleFilter;

    iget-object v4, p0, Lorg/tukaani/xz/SimpleInputStream;->filterBuf:[B

    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    invoke-interface {v3, v4, v5, v2}, Lorg/tukaani/xz/simple/SimpleFilter;->code([BII)I

    move-result v2

    iput v2, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    :goto_2
    if-lez v1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    return v1

    :goto_4
    iput-object p1, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    throw p1

    :cond_6
    throw v1

    :cond_7
    new-instance p1, Lorg/tukaani/xz/XZIOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
