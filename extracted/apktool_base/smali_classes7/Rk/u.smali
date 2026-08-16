.class public LRk/u;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public b:LBi/S;


# direct methods
.method public constructor <init>(LBi/S;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, LRk/u;->b:LBi/S;

    return-void
.end method


# virtual methods
.method public c()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    iget-object v0, p0, LRk/u;->b:LBi/S;

    invoke-interface {v0}, LBi/S;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public d([B)Z
    .locals 1

    iget-object v0, p0, LRk/u;->b:LBi/S;

    invoke-interface {v0, p1}, LBi/S;->b([B)Z

    move-result p1

    return p1
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LRk/u;->b:LBi/S;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, LBi/S;->update(B)V

    return-void
.end method

.method public write([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, LRk/u;->b:LBi/S;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, LBi/S;->update([BII)V

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
    iget-object v0, p0, LRk/u;->b:LBi/S;

    invoke-interface {v0, p1, p2, p3}, LBi/S;->update([BII)V

    return-void
.end method
