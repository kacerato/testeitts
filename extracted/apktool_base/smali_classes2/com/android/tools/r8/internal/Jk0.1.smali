.class public final Lcom/android/tools/r8/internal/Jk0;
.super Lcom/android/tools/r8/internal/l8;
.source "SourceFile"


# static fields
.field public static final j:[I


# instance fields
.field public final d:I

.field public final e:Lcom/android/tools/r8/internal/l8;

.field public final f:Lcom/android/tools/r8/internal/l8;

.field public final g:I

.field public final h:I

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-lez v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v1

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/tools/r8/internal/Jk0;->j:[I

    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/android/tools/r8/internal/Jk0;->j:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/l8;Lcom/android/tools/r8/internal/l8;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/l8;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/Jk0;->i:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/Jk0;->e:Lcom/android/tools/r8/internal/l8;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Jk0;->f:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/internal/Jk0;->g:I

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/Jk0;->d:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l8;->a()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/l8;->a()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/Jk0;->h:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/Jk0;->h:I

    return v0
.end method

.method public final a(III)I
    .locals 2

    add-int v0, p2, p3

    .line 7
    iget v1, p0, Lcom/android/tools/r8/internal/Jk0;->g:I

    if-gt v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jk0;->e:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/l8;->a(III)I

    move-result p1

    return p1

    :cond_0
    if-lt p2, v1, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jk0;->f:Lcom/android/tools/r8/internal/l8;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/l8;->a(III)I

    move-result p1

    return p1

    :cond_1
    sub-int/2addr v1, p2

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jk0;->e:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/l8;->a(III)I

    move-result p1

    .line 11
    iget-object p2, p0, Lcom/android/tools/r8/internal/Jk0;->f:Lcom/android/tools/r8/internal/l8;

    sub-int/2addr p3, v1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/tools/r8/internal/l8;->a(III)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/io/OutputStream;II)V
    .locals 2

    add-int v0, p2, p3

    .line 2
    iget v1, p0, Lcom/android/tools/r8/internal/Jk0;->g:I

    if-gt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jk0;->e:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/l8;->a(Ljava/io/OutputStream;II)V

    return-void

    :cond_0
    if-lt p2, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jk0;->f:Lcom/android/tools/r8/internal/l8;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/l8;->a(Ljava/io/OutputStream;II)V

    return-void

    :cond_1
    sub-int/2addr v1, p2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jk0;->e:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/l8;->a(Ljava/io/OutputStream;II)V

    .line 6
    iget-object p2, p0, Lcom/android/tools/r8/internal/Jk0;->f:Lcom/android/tools/r8/internal/l8;

    sub-int/2addr p3, v1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/tools/r8/internal/l8;->a(Ljava/io/OutputStream;II)V

    return-void
.end method

.method public final b(III)I
    .locals 2

    add-int v0, p2, p3

    .line 7
    iget v1, p0, Lcom/android/tools/r8/internal/Jk0;->g:I

    if-gt v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jk0;->e:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/l8;->b(III)I

    move-result p1

    return p1

    :cond_0
    if-lt p2, v1, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jk0;->f:Lcom/android/tools/r8/internal/l8;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/l8;->b(III)I

    move-result p1

    return p1

    :cond_1
    sub-int/2addr v1, p2

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jk0;->e:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/l8;->b(III)I

    move-result p1

    .line 11
    iget-object p2, p0, Lcom/android/tools/r8/internal/Jk0;->f:Lcom/android/tools/r8/internal/l8;

    sub-int/2addr p3, v1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/tools/r8/internal/l8;->b(III)I

    move-result p1

    return p1
.end method

.method public final b([BIII)V
    .locals 2

    add-int v0, p2, p4

    .line 2
    iget v1, p0, Lcom/android/tools/r8/internal/Jk0;->g:I

    if-gt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jk0;->e:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/l8;->b([BIII)V

    return-void

    :cond_0
    if-lt p2, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jk0;->f:Lcom/android/tools/r8/internal/l8;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/l8;->b([BIII)V

    return-void

    :cond_1
    sub-int/2addr v1, p2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jk0;->e:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/tools/r8/internal/l8;->b([BIII)V

    .line 6
    iget-object p2, p0, Lcom/android/tools/r8/internal/Jk0;->f:Lcom/android/tools/r8/internal/l8;

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3, p4}, Lcom/android/tools/r8/internal/l8;->b([BIII)V

    return-void
.end method

.method public final b()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/Jk0;->d:I

    sget-object v1, Lcom/android/tools/r8/internal/Jk0;->j:[I

    iget v2, p0, Lcom/android/tools/r8/internal/Jk0;->h:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Jk0;->e:Lcom/android/tools/r8/internal/l8;

    iget v1, p0, Lcom/android/tools/r8/internal/Jk0;->g:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/tools/r8/internal/l8;->b(III)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Jk0;->f:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/tools/r8/internal/l8;->b(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 12

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/l8;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/l8;

    iget v1, p0, Lcom/android/tools/r8/internal/Jk0;->d:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/Jk0;->d:I

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/Jk0;->i:I

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l8;->g()I

    move-result v1

    if-eqz v1, :cond_4

    iget v3, p0, Lcom/android/tools/r8/internal/Jk0;->i:I

    if-eq v3, v1, :cond_4

    return v2

    :cond_4
    new-instance v1, Lcom/android/tools/r8/internal/Hk0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Hk0;-><init>(Lcom/android/tools/r8/internal/l8;)V

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Hk0;->a()Lcom/android/tools/r8/internal/ET;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/Hk0;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/internal/Hk0;-><init>(Lcom/android/tools/r8/internal/l8;)V

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Hk0;->a()Lcom/android/tools/r8/internal/ET;

    move-result-object p1

    move v5, v2

    move v6, v5

    move v7, v6

    :goto_0
    iget-object v8, v3, Lcom/android/tools/r8/internal/ET;->d:[B

    array-length v8, v8

    sub-int/2addr v8, v5

    iget-object v9, p1, Lcom/android/tools/r8/internal/ET;->d:[B

    array-length v9, v9

    sub-int/2addr v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-nez v5, :cond_5

    invoke-virtual {v3, p1, v6, v10}, Lcom/android/tools/r8/internal/ET;->a(Lcom/android/tools/r8/internal/ET;II)Z

    move-result v11

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v3, v5, v10}, Lcom/android/tools/r8/internal/ET;->a(Lcom/android/tools/r8/internal/ET;II)Z

    move-result v11

    :goto_1
    if-nez v11, :cond_6

    return v2

    :cond_6
    add-int/2addr v7, v10

    iget v11, p0, Lcom/android/tools/r8/internal/Jk0;->d:I

    if-lt v7, v11, :cond_8

    if-ne v7, v11, :cond_7

    return v0

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_8
    if-ne v10, v8, :cond_9

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Hk0;->a()Lcom/android/tools/r8/internal/ET;

    move-result-object v3

    move v5, v2

    goto :goto_2

    :cond_9
    add-int/2addr v5, v10

    :goto_2
    if-ne v10, v9, :cond_a

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Hk0;->a()Lcom/android/tools/r8/internal/ET;

    move-result-object p1

    move v6, v2

    goto :goto_0

    :cond_a
    add-int/2addr v6, v10

    goto :goto_0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Jk0;->i:I

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lcom/android/tools/r8/internal/Jk0;->d:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/tools/r8/internal/XI;->a:[B

    goto :goto_0

    :cond_0
    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v1}, Lcom/android/tools/r8/internal/Jk0;->b([BIII)V

    move-object v1, v2

    :goto_0
    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/Jk0;->i:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/Jk0;->d:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/android/tools/r8/internal/Jk0;->a(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/android/tools/r8/internal/Jk0;->i:I

    :cond_1
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Ik0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Ik0;-><init>(Lcom/android/tools/r8/internal/Jk0;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Jk0;->d:I

    return v0
.end method
