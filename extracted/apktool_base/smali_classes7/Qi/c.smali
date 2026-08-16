.class public LQi/c;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field public b:LBi/y;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;LBi/y;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, LQi/c;->b:LBi/y;

    return-void
.end method


# virtual methods
.method public c()LBi/y;
    .locals 1

    iget-object v0, p0, LQi/c;->b:LBi/y;

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, LQi/c;->b:LBi/y;

    int-to-byte v2, v0

    invoke-interface {v1, v2}, LBi/y;->update(B)V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-lez p3, :cond_0

    iget-object v0, p0, LQi/c;->b:LBi/y;

    invoke-interface {v0, p1, p2, p3}, LBi/y;->update([BII)V

    :cond_0
    return p3
.end method
