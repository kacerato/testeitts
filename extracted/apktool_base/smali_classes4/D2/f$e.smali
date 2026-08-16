.class public final LD2/f$e;
.super LD2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LD2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final synthetic c:LD2/f;


# direct methods
.method public constructor <init>(LD2/f;JJ)V
    .locals 5

    iput-object p1, p0, LD2/f$e;->c:LD2/f;

    invoke-direct {p0}, LD2/f;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    const-string v4, "offset (%s) may not be negative"

    invoke-static {p1, v4, p2, p3}, Lw2/H;->p(ZLjava/lang/String;J)V

    cmp-long p1, p4, v0

    if-ltz p1, :cond_1

    move v2, v3

    :cond_1
    const-string p1, "length (%s) may not be negative"

    invoke-static {v2, p1, p4, p5}, Lw2/H;->p(ZLjava/lang/String;J)V

    iput-wide p2, p0, LD2/f$e;->a:J

    iput-wide p4, p0, LD2/f$e;->b:J

    return-void
.end method


# virtual methods
.method public k()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, LD2/f$e;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-super {p0}, LD2/f;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public l()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LD2/f$e;->c:LD2/f;

    invoke-virtual {v0}, LD2/f;->l()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, LD2/f$e;->t(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LD2/f$e;->c:LD2/f;

    invoke-virtual {v0}, LD2/f;->m()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, LD2/f$e;->t(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public q()Lw2/C;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/C<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LD2/f$e;->c:LD2/f;

    invoke-virtual {v0}, LD2/f;->q()Lw2/C;

    move-result-object v0

    invoke-virtual {v0}, Lw2/C;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, LD2/f$e;->a:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-wide v4, p0, LD2/f$e;->b:J

    sub-long/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v0

    return-object v0
.end method

.method public r(JJ)LD2/f;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v5, "offset (%s) may not be negative"

    invoke-static {v2, v5, p1, p2}, Lw2/H;->p(ZLjava/lang/String;J)V

    cmp-long v2, p3, v0

    if-ltz v2, :cond_1

    move v3, v4

    :cond_1
    const-string v2, "length (%s) may not be negative"

    invoke-static {v3, v2, p3, p4}, Lw2/H;->p(ZLjava/lang/String;J)V

    iget-wide v2, p0, LD2/f$e;->b:J

    sub-long/2addr v2, p1

    cmp-long v0, v2, v0

    if-gtz v0, :cond_2

    invoke-static {}, LD2/f;->i()LD2/f;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object v0, p0, LD2/f$e;->c:LD2/f;

    iget-wide v4, p0, LD2/f$e;->a:J

    add-long/2addr v4, p1

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v0, v4, v5, p1, p2}, LD2/f;->r(JJ)LD2/f;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final t(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, LD2/f$e;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    :try_start_0
    invoke-static {p1, v0, v1}, LD2/g;->t(Ljava/io/InputStream;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide v2, p0, LD2/f$e;->a:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    new-instance p1, Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1

    :catchall_0
    move-exception v0

    invoke-static {}, LD2/m;->c()LD2/m;

    move-result-object v1

    invoke-virtual {v1, p1}, LD2/m;->d(Ljava/io/Closeable;)Ljava/io/Closeable;

    :try_start_1
    invoke-virtual {v1, v0}, LD2/m;->e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, LD2/m;->close()V

    throw p1

    :cond_0
    iget-wide v0, p0, LD2/f$e;->b:J

    invoke-static {p1, v0, v1}, LD2/g;->f(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, LD2/f$e;->c:LD2/f;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, LD2/f$e;->a:J

    iget-wide v3, p0, LD2/f$e;->b:J

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x32

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".slice("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
