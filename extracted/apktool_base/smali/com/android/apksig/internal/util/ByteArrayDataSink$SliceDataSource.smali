.class Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/apksig/util/DataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/util/ByteArrayDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SliceDataSource"
.end annotation


# instance fields
.field private final mSliceOffset:I

.field private final mSliceSize:I

.field final synthetic this$0:Lcom/android/apksig/internal/util/ByteArrayDataSink;


# direct methods
.method private constructor <init>(Lcom/android/apksig/internal/util/ByteArrayDataSink;II)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;->this$0:Lcom/android/apksig/internal/util/ByteArrayDataSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;->mSliceOffset:I

    .line 4
    iput p3, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;->mSliceSize:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/apksig/internal/util/ByteArrayDataSink;IILcom/android/apksig/internal/util/ByteArrayDataSink$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;-><init>(Lcom/android/apksig/internal/util/ByteArrayDataSink;II)V

    return-void
.end method

.method private checkChunkValid(JJ)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    cmp-long v0, p3, v0

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;->mSliceSize:I

    int-to-long v1, v0

    cmp-long v1, p1, v1

    const-string v2, ")"

    const-string v3, ") > source size ("

    const-string v4, "offset ("

    if-gtz v1, :cond_2

    add-long v5, p1, p3

    cmp-long v1, v5, p1

    const-string v7, ") + size ("

    if-ltz v1, :cond_1

    int-to-long v0, v0

    cmp-long v0, v5, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;->mSliceSize:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") overflow"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;->mSliceSize:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "offset: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method


# virtual methods
.method public copyTo(JILjava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p3

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;->checkChunkValid(JJ)V

    iget-object v0, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;->this$0:Lcom/android/apksig/internal/util/ByteArrayDataSink;

    invoke-static {v0}, Lcom/android/apksig/internal/util/ByteArrayDataSink;->access$100(Lcom/android/apksig/internal/util/ByteArrayDataSink;)[B

    move-result-object v0

    iget v1, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;->mSliceOffset:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int p1, v1

    invoke-virtual {p4, v0, p1, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public feed(JJLcom/android/apksig/util/DataSink;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;->checkChunkValid(JJ)V

    iget-object v0, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;->this$0:Lcom/android/apksig/internal/util/ByteArrayDataSink;

    invoke-static {v0}, Lcom/android/apksig/internal/util/ByteArrayDataSink;->access$100(Lcom/android/apksig/internal/util/ByteArrayDataSink;)[B

    move-result-object v0

    iget v1, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;->mSliceOffset:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int p1, v1

    long-to-int p2, p3

    invoke-interface {p5, v0, p1, p2}, Lcom/android/apksig/util/DataSink;->consume([BII)V

    return-void
.end method

.method public getByteBuffer(JI)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p3

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;->checkChunkValid(JJ)V

    iget-object v0, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;->this$0:Lcom/android/apksig/internal/util/ByteArrayDataSink;

    invoke-static {v0}, Lcom/android/apksig/internal/util/ByteArrayDataSink;->access$100(Lcom/android/apksig/internal/util/ByteArrayDataSink;)[B

    move-result-object v0

    iget v1, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;->mSliceOffset:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int p1, v1

    invoke-static {v0, p1, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public size()J
    .locals 2

    iget v0, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;->mSliceSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public slice(JJ)Lcom/android/apksig/util/DataSource;
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;->checkChunkValid(JJ)V

    new-instance v0, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;

    iget-object v1, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;->this$0:Lcom/android/apksig/internal/util/ByteArrayDataSink;

    iget v2, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;->mSliceOffset:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int p1, v2

    long-to-int p2, p3

    invoke-direct {v0, v1, p1, p2}, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;-><init>(Lcom/android/apksig/internal/util/ByteArrayDataSink;II)V

    return-object v0
.end method
