.class public Lcom/android/tools/r8/dex/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/ByteBufferProvider;

.field public b:Lcom/android/tools/r8/dex/s;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/dex/x;

    invoke-direct {v0}, Lcom/android/tools/r8/dex/x;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/tools/r8/dex/y;-><init>(Lcom/android/tools/r8/ByteBufferProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/ByteBufferProvider;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/dex/y;->a:Lcom/android/tools/r8/ByteBufferProvider;

    const/high16 p1, 0x40000

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/dex/y;->b(I)Lcom/android/tools/r8/dex/s;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .line 18
    sget-boolean v0, Lcom/android/tools/r8/dex/y;->c:Z

    if-nez v0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    add-int/lit8 p1, p1, -0x1

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/y;->b()I

    move-result v0

    add-int/2addr v0, p1

    not-int p1, p1

    and-int/2addr p1, v0

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/y;->b()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/y;->c(I)V

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/s;->c(I)V

    return p1
.end method

.method public final a(IJ)I
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/hu;->a:Z

    const/16 v1, 0x3f

    shr-long v1, p2, v1

    xor-long/2addr v1, p2

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x48

    const/16 v2, 0x8

    .line 3
    div-int/2addr v1, v2

    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-nez v0, :cond_1

    if-lez v1, :cond_0

    if-gt v1, p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-ge p1, v1, :cond_2

    long-to-int v0, p2

    int-to-byte v0, v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/y;->a(B)V

    shr-long/2addr p2, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method public a(B)V
    .locals 1

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/y;->c(I)V

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final a(S)V
    .locals 1

    const/4 v0, 0x2

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/y;->c(I)V

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a([B)V
    .locals 1

    .line 10
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/y;->c(I)V

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a()[B
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    .line 23
    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    return v0
.end method

.method public final b(IJ)I
    .locals 4

    .line 12
    sget-boolean v0, Lcom/android/tools/r8/internal/hu;->a:Z

    .line 13
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x47

    const/16 v2, 0x8

    .line 14
    div-int/2addr v1, v2

    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-nez v0, :cond_1

    if-lez v1, :cond_0

    if-gt v1, p1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-ge p1, v1, :cond_2

    long-to-int v0, p2

    int-to-byte v0, v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/y;->a(B)V

    shr-long/2addr p2, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method public final b(I)Lcom/android/tools/r8/dex/s;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/tools/r8/dex/s;

    iget-object v1, p0, Lcom/android/tools/r8/dex/y;->a:Lcom/android/tools/r8/ByteBufferProvider;

    invoke-interface {v1, p1}, Lcom/android/tools/r8/ByteBufferProvider;->acquireByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/dex/s;-><init>(Ljava/nio/ByteBuffer;)V

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->b()I

    move-result v1

    if-lt v1, p1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/s;->a(Ljava/nio/ByteOrder;)V

    return-object v0

    .line 6
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/If;

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided byte-buffer is required to start at position zero, but starts at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance v1, Lcom/android/tools/r8/internal/If;

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->b()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Insufficient capacity of provided byte-buffer. Requested capacity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", actual capacity: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/If;

    const-string v0, "Provided byte-buffer is required to have an array backing, but does not."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->b()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v1}, Lcom/android/tools/r8/dex/s;->b()I

    move-result v1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/dex/y;->b(I)Lcom/android/tools/r8/dex/s;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v2}, Lcom/android/tools/r8/dex/s;->b()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/dex/s;->c(I)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    sget-boolean v1, Lcom/android/tools/r8/dex/y;->c:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/dex/y;->a:Lcom/android/tools/r8/ByteBufferProvider;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/tools/r8/ByteBufferProvider;->releaseByteBuffer(Ljava/nio/ByteBuffer;)V

    iput-object p1, p0, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    :cond_2
    return-void
.end method

.method public final d(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/dex/y;->c(I)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/s;->c(I)V

    return-void
.end method

.method public final e(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/y;->c(I)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/s;->c(I)V

    return-void
.end method

.method public final f(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/y;->c(I)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
