.class public final Lcom/android/tools/r8/ByteDataView;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic d:Z = true


# instance fields
.field private a:[B

.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/ByteDataView;->d:Z

    if-nez v0, :cond_1

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-ltz p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    iput-object p1, p0, Lcom/android/tools/r8/ByteDataView;->a:[B

    iput p2, p0, Lcom/android/tools/r8/ByteDataView;->b:I

    iput p3, p0, Lcom/android/tools/r8/ByteDataView;->c:I

    return-void
.end method

.method public static of([B)Lcom/android/tools/r8/ByteDataView;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/ByteDataView;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/android/tools/r8/ByteDataView;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public copyByteData()[B
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/ByteDataView;->a:[B

    iget v1, p0, Lcom/android/tools/r8/ByteDataView;->b:I

    iget v2, p0, Lcom/android/tools/r8/ByteDataView;->c:I

    add-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public getBuffer()[B
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/ByteDataView;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/ByteDataView;->a:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/ByteDataView;->a:[B

    return-object v0
.end method

.method public getLength()I
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/ByteDataView;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/ByteDataView;->a:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/ByteDataView;->c:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/ByteDataView;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/ByteDataView;->a:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/ByteDataView;->b:I

    return v0
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/ByteDataView;->a:[B

    return-void
.end method
