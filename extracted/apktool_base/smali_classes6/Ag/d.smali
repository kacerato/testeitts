.class public LAg/d;
.super Ljava/io/OutputStream;
.source "SourceFile"

# interfaces
.implements LAg/g;


# instance fields
.field public b:Ljava/io/OutputStream;

.field public c:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LAg/d;->c:J

    iput-object p1, p0, LAg/d;->b:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-virtual {p0}, LAg/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, LAg/d;->b:Ljava/io/OutputStream;

    check-cast v0, LAg/h;

    invoke-virtual {v0, p1}, LAg/h;->a(I)Z

    move-result p1

    return p1
.end method

.method public c()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LAg/d;->b:Ljava/io/OutputStream;

    instance-of v1, v0, LAg/h;

    if-eqz v1, :cond_0

    check-cast v0, LAg/h;

    invoke-virtual {v0}, LAg/h;->c()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, LAg/d;->c:J

    return-wide v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LAg/d;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public d()I
    .locals 1

    invoke-virtual {p0}, LAg/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LAg/d;->b:Ljava/io/OutputStream;

    check-cast v0, LAg/h;

    invoke-virtual {v0}, LAg/h;->d()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LAg/d;->b:Ljava/io/OutputStream;

    instance-of v1, v0, LAg/h;

    if-eqz v1, :cond_0

    check-cast v0, LAg/h;

    invoke-virtual {v0}, LAg/h;->c()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, LAg/d;->c:J

    return-wide v0
.end method

.method public f()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LAg/d;->b:Ljava/io/OutputStream;

    instance-of v1, v0, LAg/h;

    if-eqz v1, :cond_0

    check-cast v0, LAg/h;

    invoke-virtual {v0}, LAg/h;->c()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, LAg/d;->c:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    invoke-virtual {p0}, LAg/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LAg/d;->b:Ljava/io/OutputStream;

    check-cast v0, LAg/h;

    invoke-virtual {v0}, LAg/h;->e()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, LAg/d;->b:Ljava/io/OutputStream;

    instance-of v1, v0, LAg/h;

    if-eqz v1, :cond_0

    check-cast v0, LAg/h;

    invoke-virtual {v0}, LAg/h;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, LAg/d;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, LAg/d;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, LAg/d;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    iget-wide p1, p0, LAg/d;->c:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, LAg/d;->c:J

    return-void
.end method
