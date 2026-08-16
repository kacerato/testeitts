.class public final Lcom/android/tools/r8/internal/s80;
.super Lcom/android/tools/r8/internal/u80;
.source "SourceFile"


# instance fields
.field public final i:Ljava/io/InputStream;

.field public final j:[B

.field public k:I

.field public l:I

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/function/Predicate;Z)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/android/tools/r8/internal/u80;-><init>(Ljava/util/function/Predicate;Z)V

    const/16 p2, 0x2000

    new-array p3, p2, [B

    iput-object p3, p0, Lcom/android/tools/r8/internal/s80;->j:[B

    iput p2, p0, Lcom/android/tools/r8/internal/s80;->k:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/tools/r8/internal/s80;->l:I

    iput p2, p0, Lcom/android/tools/r8/internal/s80;->m:I

    iput p2, p0, Lcom/android/tools/r8/internal/s80;->n:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/s80;->i:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/s80;->n:I

    iget v1, p0, Lcom/android/tools/r8/internal/s80;->m:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()I
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/s80;->m:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/s80;->j:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    const/16 v3, 0xd

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    return v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/s80;->i:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/s80;->l:I

    return v0
.end method

.method public final e()[B
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/s80;->k:I

    iget v1, p0, Lcom/android/tools/r8/internal/s80;->n:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/s80;->i:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/android/tools/r8/internal/s80;->j:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/internal/s80;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iput v2, p0, Lcom/android/tools/r8/internal/s80;->k:I

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/s80;->k:I

    iput v0, p0, Lcom/android/tools/r8/internal/s80;->l:I

    iput v0, p0, Lcom/android/tools/r8/internal/s80;->m:I

    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/s80;->m:I

    iget v1, p0, Lcom/android/tools/r8/internal/s80;->n:I

    const/4 v3, 0x1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/s80;->j:[B

    aget-byte v1, v1, v0

    const/16 v4, 0xa

    if-ne v1, v4, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/s80;->m:I

    goto :goto_0

    :cond_3
    :goto_1
    iput v0, p0, Lcom/android/tools/r8/internal/s80;->k:I

    if-eqz v2, :cond_4

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/tools/r8/internal/s80;->k:I

    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/s80;->j:[B

    return-object v0
.end method
