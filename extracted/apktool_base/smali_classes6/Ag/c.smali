.class public abstract LAg/c;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public b:LAg/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LAg/b<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LAg/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LAg/b<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, LAg/c;->b:LAg/b;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LAg/c;->b:LAg/b;

    invoke-virtual {v0}, LAg/b;->c()V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LAg/c;->b:LAg/b;

    invoke-virtual {v0}, LAg/b;->close()V

    return-void
.end method

.method public d()J
    .locals 2

    iget-object v0, p0, LAg/c;->b:LAg/b;

    invoke-virtual {v0}, LAg/b;->e()J

    move-result-wide v0

    return-wide v0
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

    invoke-virtual {p0, v0}, LAg/c;->write([B)V

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

    invoke-virtual {p0, p1, v1, v0}, LAg/c;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, LAg/c;->b:LAg/b;

    invoke-virtual {v0, p1, p2, p3}, LAg/b;->write([BII)V

    return-void
.end method
