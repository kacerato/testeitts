.class public LQi/f;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public b:LBi/I;


# direct methods
.method public constructor <init>(LBi/I;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, LQi/f;->b:LBi/I;

    return-void
.end method


# virtual methods
.method public c()[B
    .locals 3

    iget-object v0, p0, LQi/f;->b:LBi/I;

    invoke-interface {v0}, LBi/I;->d()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, LQi/f;->b:LBi/I;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LBi/I;->c([BI)I

    return-object v0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LQi/f;->b:LBi/I;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, LBi/I;->update(B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, LQi/f;->b:LBi/I;

    invoke-interface {v0, p1, p2, p3}, LBi/I;->update([BII)V

    return-void
.end method
