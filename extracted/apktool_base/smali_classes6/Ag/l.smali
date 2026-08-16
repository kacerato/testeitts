.class public LAg/l;
.super LAg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LAg/b<",
        "Lvg/g;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(LAg/j;LBg/s;[CZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, LAg/b;-><init>(LAg/j;LBg/s;[CZ)V

    return-void
.end method


# virtual methods
.method public bridge synthetic f(Ljava/io/OutputStream;LBg/s;[CZ)Lvg/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, LAg/l;->j(Ljava/io/OutputStream;LBg/s;[CZ)Lvg/g;

    move-result-object p1

    return-object p1
.end method

.method public final h(LBg/s;)J
    .locals 4

    invoke-virtual {p1}, LBg/s;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LBg/s;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, LFg/h;->h(J)J

    move-result-wide v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    const/16 p1, 0x10

    shl-long/2addr v0, p1

    return-wide v0

    :cond_0
    invoke-virtual {p1}, LBg/s;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public j(Ljava/io/OutputStream;LBg/s;[CZ)Lvg/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, LAg/l;->h(LBg/s;)J

    move-result-wide p1

    new-instance v0, Lvg/g;

    invoke-direct {v0, p3, p1, p2, p4}, Lvg/g;-><init>([CJZ)V

    invoke-virtual {v0}, Lvg/g;->e()[B

    move-result-object p1

    invoke-virtual {p0, p1}, LAg/b;->g([B)V

    return-object v0
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

    invoke-virtual {p0, v0}, LAg/l;->write([B)V

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

    invoke-virtual {p0, p1, v1, v0}, LAg/l;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2, p3}, LAg/b;->write([BII)V

    return-void
.end method
