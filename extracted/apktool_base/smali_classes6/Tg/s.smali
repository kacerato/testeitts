.class public final LTg/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTg/d;


# instance fields
.field public final b:LTg/c;

.field public final c:LTg/x;

.field public d:Z


# direct methods
.method public constructor <init>(LTg/x;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LTg/c;

    invoke-direct {v0}, LTg/c;-><init>()V

    iput-object v0, p0, LTg/s;->b:LTg/c;

    if-eqz p1, :cond_0

    iput-object p1, p0, LTg/s;->c:LTg/x;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public C()LTg/c;
    .locals 1

    iget-object v0, p0, LTg/s;->b:LTg/c;

    return-object v0
.end method

.method public D(LTg/f;)LTg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LTg/s;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LTg/s;->b:LTg/c;

    invoke-virtual {v0, p1}, LTg/c;->Y(LTg/f;)LTg/c;

    invoke-virtual {p0}, LTg/s;->W()LTg/d;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public E(J)LTg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LTg/s;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LTg/s;->b:LTg/c;

    invoke-virtual {v0, p1, p2}, LTg/c;->k0(J)LTg/c;

    invoke-virtual {p0}, LTg/s;->W()LTg/d;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public F(Ljava/lang/String;II)LTg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LTg/s;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LTg/s;->b:LTg/c;

    invoke-virtual {v0, p1, p2, p3}, LTg/c;->v0(Ljava/lang/String;II)LTg/c;

    invoke-virtual {p0}, LTg/s;->W()LTg/d;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public H(LTg/y;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, LTg/s;->b:LTg/c;

    const-wide/16 v3, 0x2000

    invoke-interface {p1, v2, v3, v4}, LTg/y;->K(LTg/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    add-long/2addr v0, v2

    invoke-virtual {p0}, LTg/s;->W()LTg/d;

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public I(Ljava/lang/String;IILjava/nio/charset/Charset;)LTg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LTg/s;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LTg/s;->b:LTg/c;

    invoke-virtual {v0, p1, p2, p3, p4}, LTg/c;->o0(Ljava/lang/String;IILjava/nio/charset/Charset;)LTg/c;

    invoke-virtual {p0}, LTg/s;->W()LTg/d;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public J(J)LTg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LTg/s;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LTg/s;->b:LTg/c;

    invoke-virtual {v0, p1, p2}, LTg/c;->e0(J)LTg/c;

    invoke-virtual {p0}, LTg/s;->W()LTg/d;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public M(I)LTg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LTg/s;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LTg/s;->b:LTg/c;

    invoke-virtual {v0, p1}, LTg/c;->i0(I)LTg/c;

    invoke-virtual {p0}, LTg/s;->W()LTg/d;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public O(I)LTg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LTg/s;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LTg/s;->b:LTg/c;

    invoke-virtual {v0, p1}, LTg/c;->n0(I)LTg/c;

    invoke-virtual {p0}, LTg/s;->W()LTg/d;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public P(J)LTg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LTg/s;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LTg/s;->b:LTg/c;

    invoke-virtual {v0, p1, p2}, LTg/c;->f0(J)LTg/c;

    invoke-virtual {p0}, LTg/s;->W()LTg/d;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public T()LTg/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LTg/s;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LTg/s;->b:LTg/c;

    invoke-virtual {v0}, LTg/c;->Q()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, LTg/s;->c:LTg/x;

    iget-object v3, p0, LTg/s;->b:LTg/c;

    invoke-interface {v2, v3, v0, v1}, LTg/x;->h0(LTg/c;J)V

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public U(I)LTg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LTg/s;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LTg/s;->b:LTg/c;

    invoke-virtual {v0, p1}, LTg/c;->w0(I)LTg/c;

    invoke-virtual {p0}, LTg/s;->W()LTg/d;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public W()LTg/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LTg/s;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LTg/s;->b:LTg/c;

    invoke-virtual {v0}, LTg/c;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, LTg/s;->c:LTg/x;

    iget-object v3, p0, LTg/s;->b:LTg/c;

    invoke-interface {v2, v3, v0, v1}, LTg/x;->h0(LTg/c;J)V

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public X(Ljava/lang/String;)LTg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LTg/s;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LTg/s;->b:LTg/c;

    invoke-virtual {v0, p1}, LTg/c;->u0(Ljava/lang/String;)LTg/c;

    invoke-virtual {p0}, LTg/s;->W()LTg/d;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a0()LTg/z;
    .locals 1

    iget-object v0, p0, LTg/s;->c:LTg/x;

    invoke-interface {v0}, LTg/x;->a0()LTg/z;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LTg/s;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, LTg/s;->b:LTg/c;

    iget-wide v1, v0, LTg/c;->c:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    iget-object v3, p0, LTg/s;->c:LTg/x;

    invoke-interface {v3, v0, v1, v2}, LTg/x;->h0(LTg/c;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    :try_start_1
    iget-object v1, p0, LTg/s;->c:LTg/x;

    invoke-interface {v1}, LTg/x;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, LTg/s;->d:Z

    if-eqz v0, :cond_3

    invoke-static {v0}, LTg/B;->f(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LTg/s;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LTg/s;->b:LTg/c;

    iget-wide v1, v0, LTg/c;->c:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, LTg/s;->c:LTg/x;

    invoke-interface {v3, v0, v1, v2}, LTg/x;->h0(LTg/c;J)V

    :cond_0
    iget-object v0, p0, LTg/s;->c:LTg/x;

    invoke-interface {v0}, LTg/x;->flush()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h0(LTg/c;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LTg/s;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LTg/s;->b:LTg/c;

    invoke-virtual {v0, p1, p2, p3}, LTg/c;->h0(LTg/c;J)V

    invoke-virtual {p0}, LTg/s;->W()LTg/d;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, LTg/s;->d:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public l0(Ljava/lang/String;Ljava/nio/charset/Charset;)LTg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LTg/s;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LTg/s;->b:LTg/c;

    invoke-virtual {v0, p1, p2}, LTg/c;->p0(Ljava/lang/String;Ljava/nio/charset/Charset;)LTg/c;

    invoke-virtual {p0}, LTg/s;->W()LTg/d;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s0()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, LTg/s$a;

    invoke-direct {v0, p0}, LTg/s$a;-><init>(LTg/s;)V

    return-object v0
.end method

.method public t0(LTg/y;J)LTg/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, LTg/s;->b:LTg/c;

    invoke-interface {p1, v0, p2, p3}, LTg/y;->K(LTg/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    sub-long/2addr p2, v0

    invoke-virtual {p0}, LTg/s;->W()LTg/d;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LTg/s;->c:LTg/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-boolean v0, p0, LTg/s;->d:Z

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, LTg/s;->b:LTg/c;

    invoke-virtual {v0, p1}, LTg/c;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 11
    invoke-virtual {p0}, LTg/s;->W()LTg/d;

    return p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)LTg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, LTg/s;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LTg/s;->b:LTg/c;

    invoke-virtual {v0, p1}, LTg/c;->Z([B)LTg/c;

    .line 3
    invoke-virtual {p0}, LTg/s;->W()LTg/d;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)LTg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-boolean v0, p0, LTg/s;->d:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, LTg/s;->b:LTg/c;

    invoke-virtual {v0, p1, p2, p3}, LTg/c;->c0([BII)LTg/c;

    .line 7
    invoke-virtual {p0}, LTg/s;->W()LTg/d;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeByte(I)LTg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LTg/s;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LTg/s;->b:LTg/c;

    invoke-virtual {v0, p1}, LTg/c;->d0(I)LTg/c;

    invoke-virtual {p0}, LTg/s;->W()LTg/d;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeInt(I)LTg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LTg/s;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LTg/s;->b:LTg/c;

    invoke-virtual {v0, p1}, LTg/c;->g0(I)LTg/c;

    invoke-virtual {p0}, LTg/s;->W()LTg/d;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeLong(J)LTg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LTg/s;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LTg/s;->b:LTg/c;

    invoke-virtual {v0, p1, p2}, LTg/c;->j0(J)LTg/c;

    invoke-virtual {p0}, LTg/s;->W()LTg/d;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeShort(I)LTg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LTg/s;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LTg/s;->b:LTg/c;

    invoke-virtual {v0, p1}, LTg/c;->m0(I)LTg/c;

    invoke-virtual {p0}, LTg/s;->W()LTg/d;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
