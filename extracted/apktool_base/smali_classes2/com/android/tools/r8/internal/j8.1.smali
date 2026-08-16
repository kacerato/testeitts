.class public final Lcom/android/tools/r8/internal/j8;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field public static final f:[B


# instance fields
.field public final a:I

.field public final b:Ljava/util/ArrayList;

.field public c:I

.field public d:[B

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/tools/r8/internal/j8;->f:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 v0, 0x80

    iput v0, p0, Lcom/android/tools/r8/internal/j8;->a:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/j8;->b:Ljava/util/ArrayList;

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/tools/r8/internal/j8;->d:[B

    return-void
.end method


# virtual methods
.method public final declared-synchronized c()Lcom/android/tools/r8/internal/l8;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/tools/r8/internal/j8;->e:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/j8;->d:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    if-lez v0, :cond_1

    new-array v2, v0, [B

    array-length v4, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/j8;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/ET;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/ET;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/j8;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/tools/r8/internal/ET;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/ET;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/tools/r8/internal/j8;->f:[B

    iput-object v0, p0, Lcom/android/tools/r8/internal/j8;->d:[B

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/j8;->c:I

    iget v1, p0, Lcom/android/tools/r8/internal/j8;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/j8;->c:I

    iput v3, p0, Lcom/android/tools/r8/internal/j8;->e:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/j8;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_4
    :try_start_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/l8;->a(Ljava/util/Iterator;I)Lcom/android/tools/r8/internal/l8;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "<ByteString.Output@%s size=%d>"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/android/tools/r8/internal/j8;->c:I

    iget v3, p0, Lcom/android/tools/r8/internal/j8;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v2, v3

    monitor-exit p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized write(I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/android/tools/r8/internal/j8;->e:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/j8;->d:[B

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/j8;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/tools/r8/internal/ET;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/ET;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/j8;->c:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/j8;->d:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/j8;->c:I

    .line 4
    iget v1, p0, Lcom/android/tools/r8/internal/j8;->a:I

    const/4 v2, 0x1

    ushr-int/2addr v0, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/tools/r8/internal/j8;->d:[B

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/tools/r8/internal/j8;->e:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/j8;->d:[B

    iget v1, p0, Lcom/android/tools/r8/internal/j8;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/j8;->e:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized write([BII)V
    .locals 3

    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/j8;->d:[B

    array-length v1, v0

    iget v2, p0, Lcom/android/tools/r8/internal/j8;->e:I

    sub-int/2addr v1, v2

    if-gt p3, v1, :cond_0

    .line 9
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget p1, p0, Lcom/android/tools/r8/internal/j8;->e:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/tools/r8/internal/j8;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 11
    :cond_0
    :try_start_1
    array-length v1, v0

    sub-int/2addr v1, v2

    .line 12
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/j8;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/ET;

    iget-object v2, p0, Lcom/android/tools/r8/internal/j8;->d:[B

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/ET;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget v0, p0, Lcom/android/tools/r8/internal/j8;->c:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/j8;->d:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/j8;->c:I

    .line 15
    iget v1, p0, Lcom/android/tools/r8/internal/j8;->a:I

    ushr-int/lit8 v0, v0, 0x1

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 16
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/tools/r8/internal/j8;->d:[B

    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/android/tools/r8/internal/j8;->e:I

    .line 18
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iput p3, p0, Lcom/android/tools/r8/internal/j8;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
