.class public Lcom/android/apksig/internal/util/ChainedDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/apksig/util/DataSource;


# instance fields
.field private final mSources:[Lcom/android/apksig/util/DataSource;

.field private final mTotalSize:J


# direct methods
.method public varargs constructor <init>([Lcom/android/apksig/util/DataSource;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mSources:[Lcom/android/apksig/util/DataSource;

    array-length v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p1, v3

    invoke-interface {v4}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-wide v1, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mTotalSize:J

    return-void
.end method

.method private locateDataSource(J)Lcom/android/apksig/internal/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/android/apksig/internal/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move-wide v1, p1

    :goto_0
    iget-object v3, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mSources:[Lcom/android/apksig/util/DataSource;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v3, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mSources:[Lcom/android/apksig/util/DataSource;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v3

    sub-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access is out of bound, offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", totalSize: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mTotalSize:J

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public copyTo(JILjava/nio/ByteBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v3, p3

    new-instance v5, Lcom/android/apksig/internal/util/ByteBufferSink;

    invoke-direct {v5, p4}, Lcom/android/apksig/internal/util/ByteBufferSink;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/apksig/internal/util/ChainedDataSource;->feed(JJLcom/android/apksig/util/DataSink;)V

    return-void
.end method

.method public feed(JJLcom/android/apksig/util/DataSink;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-long v0, p1, p3

    iget-wide v2, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mTotalSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mSources:[Lcom/android/apksig/util/DataSource;

    array-length v1, v0

    const/4 v2, 0x0

    move-wide v4, p1

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide p1

    cmp-long p1, v4, p1

    if-ltz p1, :cond_0

    invoke-interface {v3}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide p1

    sub-long/2addr v4, p1

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide p1

    sub-long/2addr p1, v4

    cmp-long v6, p1, p3

    if-ltz v6, :cond_1

    move-wide v6, p3

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/android/apksig/util/DataSource;->feed(JJLcom/android/apksig/util/DataSink;)V

    goto :goto_2

    :cond_1
    move-wide v6, p1

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/android/apksig/util/DataSource;->feed(JJLcom/android/apksig/util/DataSink;)V

    sub-long/2addr p3, p1

    const-wide/16 p1, 0x0

    move-wide v4, p1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Requested more than available"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getByteBuffer(JI)Ljava/nio/ByteBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p3

    add-long v2, p1, v0

    iget-wide v4, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mTotalSize:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/apksig/internal/util/ChainedDataSource;->locateDataSource(J)Lcom/android/apksig/internal/util/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object p1, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mSources:[Lcom/android/apksig/util/DataSource;

    aget-object p1, p1, p2

    invoke-interface {p1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v4

    cmp-long p1, v0, v4

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mSources:[Lcom/android/apksig/util/DataSource;

    aget-object p1, p1, p2

    invoke-interface {p1, v2, v3, p3}, Lcom/android/apksig/util/DataSource;->getByteBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    iget-object p3, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mSources:[Lcom/android/apksig/util/DataSource;

    array-length p3, p3

    if-ge p2, p3, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mSources:[Lcom/android/apksig/util/DataSource;

    aget-object p3, p3, p2

    invoke-interface {p3}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p3

    int-to-long v4, p3

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object p3, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mSources:[Lcom/android/apksig/util/DataSource;

    aget-object p3, p3, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    invoke-interface {p3, v2, v3, v0, p1}, Lcom/android/apksig/util/DataSource;->copyTo(JILjava/nio/ByteBuffer;)V

    add-int/lit8 p2, p2, 0x1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Requested more than available"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()J
    .locals 2

    iget-wide v0, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mTotalSize:J

    return-wide v0
.end method

.method public slice(JJ)Lcom/android/apksig/util/DataSource;
    .locals 8

    invoke-direct {p0, p1, p2}, Lcom/android/apksig/internal/util/ChainedDataSource;->locateDataSource(J)Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mSources:[Lcom/android/apksig/util/DataSource;

    aget-object v0, v0, v1

    add-long v4, v2, p3

    invoke-interface {v0}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    invoke-interface {v0, v2, v3, p3, p4}, Lcom/android/apksig/util/DataSource;->slice(JJ)Lcom/android/apksig/util/DataSource;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-interface {v0, v2, v3, v5, v6}, Lcom/android/apksig/util/DataSource;->slice(JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-long/2addr p1, p3

    const-wide/16 p3, 0x1

    sub-long/2addr p1, p3

    invoke-direct {p0, p1, p2}, Lcom/android/apksig/internal/util/ChainedDataSource;->locateDataSource(J)Lcom/android/apksig/internal/util/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_1

    iget-object p1, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mSources:[Lcom/android/apksig/util/DataSource;

    aget-object p1, p1, v1

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mSources:[Lcom/android/apksig/util/DataSource;

    aget-object p1, p1, p2

    const-wide/16 v0, 0x0

    add-long/2addr v2, p3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/apksig/util/DataSource;->slice(JJ)Lcom/android/apksig/util/DataSource;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/apksig/internal/util/ChainedDataSource;

    const/4 p2, 0x0

    new-array p2, p2, [Lcom/android/apksig/util/DataSource;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/apksig/util/DataSource;

    invoke-direct {p1, p2}, Lcom/android/apksig/internal/util/ChainedDataSource;-><init>([Lcom/android/apksig/util/DataSource;)V

    return-object p1
.end method
