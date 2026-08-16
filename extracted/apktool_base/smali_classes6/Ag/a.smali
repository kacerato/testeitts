.class public LAg/a;
.super LAg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LAg/b<",
        "Lvg/b;",
        ">;"
    }
.end annotation


# instance fields
.field public d:[B

.field public e:I


# direct methods
.method public constructor <init>(LAg/j;LBg/s;[CZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, LAg/b;-><init>(LAg/j;LBg/s;[CZ)V

    const/16 p1, 0x10

    new-array p1, p1, [B

    iput-object p1, p0, LAg/a;->d:[B

    const/4 p1, 0x0

    iput p1, p0, LAg/a;->e:I

    return-void
.end method


# virtual methods
.method public c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, LAg/a;->e:I

    if-eqz v0, :cond_0

    iget-object v1, p0, LAg/a;->d:[B

    const/4 v2, 0x0

    invoke-super {p0, v1, v2, v0}, LAg/b;->write([BII)V

    iput v2, p0, LAg/a;->e:I

    :cond_0
    invoke-virtual {p0}, LAg/b;->d()Lvg/e;

    move-result-object v0

    check-cast v0, Lvg/b;

    invoke-virtual {v0}, Lvg/b;->e()[B

    move-result-object v0

    invoke-virtual {p0, v0}, LAg/b;->g([B)V

    invoke-super {p0}, LAg/b;->c()V

    return-void
.end method

.method public bridge synthetic f(Ljava/io/OutputStream;LBg/s;[CZ)Lvg/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, LAg/a;->h(Ljava/io/OutputStream;LBg/s;[CZ)Lvg/b;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/io/OutputStream;LBg/s;[CZ)Lvg/b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Lvg/b;

    invoke-virtual {p2}, LBg/s;->a()LCg/a;

    move-result-object p2

    invoke-direct {p1, p3, p2, p4}, Lvg/b;-><init>([CLCg/a;Z)V

    invoke-virtual {p0, p1}, LAg/a;->j(Lvg/b;)V

    return-object p1
.end method

.method public final j(Lvg/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lvg/b;->f()[B

    move-result-object v0

    invoke-virtual {p0, v0}, LAg/b;->g([B)V

    invoke-virtual {p1}, Lvg/b;->d()[B

    move-result-object p1

    invoke-virtual {p0, p1}, LAg/b;->g([B)V

    return-void
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

    invoke-virtual {p0, v0}, LAg/a;->write([B)V

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

    invoke-virtual {p0, p1, v1, v0}, LAg/a;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget v0, p0, LAg/a;->e:I

    rsub-int/lit8 v1, v0, 0x10

    if-lt p3, v1, :cond_1

    .line 4
    iget-object v1, p0, LAg/a;->d:[B

    rsub-int/lit8 v2, v0, 0x10

    invoke-static {p1, p2, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object p2, p0, LAg/a;->d:[B

    array-length v0, p2

    const/4 v1, 0x0

    invoke-super {p0, p2, v1, v0}, LAg/b;->write([BII)V

    .line 6
    iget p2, p0, LAg/a;->e:I

    rsub-int/lit8 p2, p2, 0x10

    sub-int/2addr p3, p2

    .line 7
    iput v1, p0, LAg/a;->e:I

    if-eqz p3, :cond_0

    .line 8
    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_0

    add-int v2, p3, p2

    sub-int/2addr v2, v0

    .line 9
    iget-object v3, p0, LAg/a;->d:[B

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iput v0, p0, LAg/a;->e:I

    sub-int/2addr p3, v0

    .line 11
    :cond_0
    invoke-super {p0, p1, p2, p3}, LAg/b;->write([BII)V

    return-void

    .line 12
    :cond_1
    iget-object v1, p0, LAg/a;->d:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget p1, p0, LAg/a;->e:I

    add-int/2addr p1, p3

    iput p1, p0, LAg/a;->e:I

    return-void
.end method
