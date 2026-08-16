.class public LQi/d;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public b:LBi/y;


# direct methods
.method public constructor <init>(LBi/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, LQi/d;->b:LBi/y;

    return-void
.end method


# virtual methods
.method public c()[B
    .locals 3

    iget-object v0, p0, LQi/d;->b:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, LQi/d;->b:LBi/y;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LBi/y;->c([BI)I

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
    iget-object v0, p0, LQi/d;->b:LBi/y;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, LBi/y;->update(B)V

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
    iget-object v0, p0, LQi/d;->b:LBi/y;

    invoke-interface {v0, p1, p2, p3}, LBi/y;->update([BII)V

    return-void
.end method
