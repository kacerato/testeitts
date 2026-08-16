.class public final LTg/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LTg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public b:LTg/c;

.field public c:Z

.field public d:LTg/u;

.field public e:J

.field public f:[B

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LTg/c$c;->e:J

    const/4 v0, -0x1

    iput v0, p0, LTg/c$c;->g:I

    iput v0, p0, LTg/c$c;->h:I

    return-void
.end method


# virtual methods
.method public final a(I)J
    .locals 9

    if-lez p1, :cond_3

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_2

    iget-object v1, p0, LTg/c$c;->b:LTg/c;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, LTg/c$c;->c:Z

    if-eqz v2, :cond_0

    iget-wide v2, v1, LTg/c;->c:J

    invoke-virtual {v1, p1}, LTg/c;->V(I)LTg/u;

    move-result-object p1

    iget v1, p1, LTg/u;->c:I

    rsub-int v1, v1, 0x2000

    iput v0, p1, LTg/u;->c:I

    iget-object v4, p0, LTg/c$c;->b:LTg/c;

    int-to-long v5, v1

    add-long v7, v2, v5

    iput-wide v7, v4, LTg/c;->c:J

    iput-object p1, p0, LTg/c$c;->d:LTg/u;

    iput-wide v2, p0, LTg/c$c;->e:J

    iget-object p1, p1, LTg/u;->a:[B

    iput-object p1, p0, LTg/c$c;->f:[B

    rsub-int p1, v1, 0x2000

    iput p1, p0, LTg/c$c;->g:I

    iput v0, p0, LTg/c$c;->h:I

    return-wide v5

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "expandBuffer() only permitted for read/write buffers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not attached to a buffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minByteCount > Segment.SIZE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minByteCount <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()I
    .locals 4

    iget-wide v0, p0, LTg/c$c;->e:J

    iget-object v2, p0, LTg/c$c;->b:LTg/c;

    iget-wide v2, v2, LTg/c;->c:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, LTg/c$c;->e(J)I

    move-result v0

    return v0

    :cond_0
    iget v2, p0, LTg/c$c;->h:I

    iget v3, p0, LTg/c$c;->g:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, LTg/c$c;->e(J)I

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, LTg/c$c;->b:LTg/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, LTg/c$c;->b:LTg/c;

    iput-object v0, p0, LTg/c$c;->d:LTg/u;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, LTg/c$c;->e:J

    iput-object v0, p0, LTg/c$c;->f:[B

    const/4 v0, -0x1

    iput v0, p0, LTg/c$c;->g:I

    iput v0, p0, LTg/c$c;->h:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(J)J
    .locals 13

    iget-object v0, p0, LTg/c$c;->b:LTg/c;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, LTg/c$c;->c:Z

    if-eqz v1, :cond_6

    iget-wide v0, v0, LTg/c;->c:J

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x0

    if-gtz v2, :cond_3

    cmp-long v2, p1, v3

    if-ltz v2, :cond_2

    sub-long v5, v0, p1

    :goto_0
    cmp-long v2, v5, v3

    if-lez v2, :cond_1

    iget-object v2, p0, LTg/c$c;->b:LTg/c;

    iget-object v7, v2, LTg/c;->b:LTg/u;

    iget-object v7, v7, LTg/u;->g:LTg/u;

    iget v8, v7, LTg/u;->c:I

    iget v9, v7, LTg/u;->b:I

    sub-int v9, v8, v9

    int-to-long v9, v9

    cmp-long v11, v9, v5

    if-gtz v11, :cond_0

    invoke-virtual {v7}, LTg/u;->b()LTg/u;

    move-result-object v8

    iput-object v8, v2, LTg/c;->b:LTg/u;

    invoke-static {v7}, LTg/v;->a(LTg/u;)V

    sub-long/2addr v5, v9

    goto :goto_0

    :cond_0
    int-to-long v2, v8

    sub-long/2addr v2, v5

    long-to-int v2, v2

    iput v2, v7, LTg/u;->c:I

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, LTg/c$c;->d:LTg/u;

    iput-wide p1, p0, LTg/c$c;->e:J

    iput-object v2, p0, LTg/c$c;->f:[B

    const/4 v2, -0x1

    iput v2, p0, LTg/c$c;->g:I

    iput v2, p0, LTg/c$c;->h:I

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newSize < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-lez v2, :cond_5

    sub-long v5, p1, v0

    const/4 v2, 0x1

    move v7, v2

    :cond_4
    :goto_1
    cmp-long v8, v5, v3

    if-lez v8, :cond_5

    iget-object v8, p0, LTg/c$c;->b:LTg/c;

    invoke-virtual {v8, v2}, LTg/c;->V(I)LTg/u;

    move-result-object v8

    iget v9, v8, LTg/u;->c:I

    rsub-int v9, v9, 0x2000

    int-to-long v9, v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    iget v10, v8, LTg/u;->c:I

    add-int/2addr v10, v9

    iput v10, v8, LTg/u;->c:I

    int-to-long v11, v9

    sub-long/2addr v5, v11

    if-eqz v7, :cond_4

    iput-object v8, p0, LTg/c$c;->d:LTg/u;

    iput-wide v0, p0, LTg/c$c;->e:J

    iget-object v7, v8, LTg/u;->a:[B

    iput-object v7, p0, LTg/c$c;->f:[B

    sub-int v7, v10, v9

    iput v7, p0, LTg/c$c;->g:I

    iput v10, p0, LTg/c$c;->h:I

    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v2, p0, LTg/c$c;->b:LTg/c;

    iput-wide p1, v2, LTg/c;->c:J

    return-wide v0

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "resizeBuffer() only permitted for read/write buffers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not attached to a buffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(J)I
    .locals 11

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    iget-object v1, p0, LTg/c$c;->b:LTg/c;

    iget-wide v2, v1, LTg/c;->c:J

    cmp-long v4, p1, v2

    if-gtz v4, :cond_9

    if-eqz v0, :cond_8

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, v1, LTg/c;->b:LTg/u;

    iget-object v1, p0, LTg/c$c;->d:LTg/u;

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_2

    iget-wide v6, p0, LTg/c$c;->e:J

    iget v8, p0, LTg/c$c;->g:I

    iget v9, v1, LTg/u;->b:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    sub-long/2addr v6, v8

    cmp-long v8, v6, p1

    if-lez v8, :cond_1

    move-wide v2, v6

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_0

    :cond_1
    move-wide v4, v6

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    sub-long v6, v2, p1

    sub-long v8, p1, v4

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    :goto_1
    iget v0, v1, LTg/u;->c:I

    iget v2, v1, LTg/u;->b:I

    sub-int v3, v0, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    cmp-long v3, p1, v6

    if-ltz v3, :cond_5

    sub-int/2addr v0, v2

    int-to-long v2, v0

    add-long/2addr v4, v2

    iget-object v1, v1, LTg/u;->f:LTg/u;

    goto :goto_1

    :cond_3
    :goto_2
    cmp-long v1, v2, p1

    if-lez v1, :cond_4

    iget-object v0, v0, LTg/u;->g:LTg/u;

    iget v1, v0, LTg/u;->c:I

    iget v4, v0, LTg/u;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    sub-long/2addr v2, v4

    goto :goto_2

    :cond_4
    move-object v1, v0

    move-wide v4, v2

    :cond_5
    iget-boolean v0, p0, LTg/c$c;->c:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v1, LTg/u;->d:Z

    if-eqz v0, :cond_7

    invoke-virtual {v1}, LTg/u;->f()LTg/u;

    move-result-object v0

    iget-object v2, p0, LTg/c$c;->b:LTg/c;

    iget-object v3, v2, LTg/c;->b:LTg/u;

    if-ne v3, v1, :cond_6

    iput-object v0, v2, LTg/c;->b:LTg/u;

    :cond_6
    invoke-virtual {v1, v0}, LTg/u;->c(LTg/u;)LTg/u;

    move-result-object v1

    iget-object v0, v1, LTg/u;->g:LTg/u;

    invoke-virtual {v0}, LTg/u;->b()LTg/u;

    :cond_7
    iput-object v1, p0, LTg/c$c;->d:LTg/u;

    iput-wide p1, p0, LTg/c$c;->e:J

    iget-object v0, v1, LTg/u;->a:[B

    iput-object v0, p0, LTg/c$c;->f:[B

    iget v0, v1, LTg/u;->b:I

    sub-long/2addr p1, v4

    long-to-int p1, p1

    add-int/2addr v0, p1

    iput v0, p0, LTg/c$c;->g:I

    iget p1, v1, LTg/u;->c:I

    iput p1, p0, LTg/c$c;->h:I

    sub-int/2addr p1, v0

    return p1

    :cond_8
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, LTg/c$c;->d:LTg/u;

    iput-wide p1, p0, LTg/c$c;->e:J

    iput-object v0, p0, LTg/c$c;->f:[B

    const/4 p1, -0x1

    iput p1, p0, LTg/c$c;->g:I

    iput p1, p0, LTg/c$c;->h:I

    return p1

    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p2, p0, LTg/c$c;->b:LTg/c;

    iget-wide v1, p2, LTg/c;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "offset=%s > size=%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
