.class public abstract Lzg/c;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public b:Lzg/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzg/b<",
            "*>;"
        }
    .end annotation
.end field

.field public c:[B


# direct methods
.method public constructor <init>(Lzg/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzg/b<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lzg/c;->c:[B

    iput-object p1, p0, Lzg/c;->b:Lzg/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lzg/c;->b:Lzg/b;

    invoke-virtual {v0, p1, p2}, Lzg/b;->b(Ljava/io/InputStream;I)V

    return-void
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lzg/c;->b:Lzg/b;

    invoke-virtual {v0}, Lzg/b;->d()[B

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lzg/c;->b:Lzg/b;

    invoke-virtual {v0}, Lzg/b;->close()V

    return-void
.end method

.method public d(Ljava/io/PushbackInputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzg/c;->c:[B

    invoke-virtual {p0, v0}, Lzg/c;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lzg/c;->c:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lzg/c;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lzg/c;->b:Lzg/b;

    invoke-virtual {v0, p1, p2, p3}, Lzg/b;->read([BII)I

    move-result p1

    return p1
.end method
