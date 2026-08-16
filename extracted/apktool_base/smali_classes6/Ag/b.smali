.class public abstract LAg/b;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lvg/e;",
        ">",
        "Ljava/io/OutputStream;"
    }
.end annotation


# instance fields
.field public b:LAg/j;

.field public c:Lvg/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LAg/j;LBg/s;[CZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, LAg/b;->b:LAg/j;

    invoke-virtual {p0, p1, p2, p3, p4}, LAg/b;->f(Ljava/io/OutputStream;LBg/s;[CZ)Lvg/e;

    move-result-object p1

    iput-object p1, p0, LAg/b;->c:Lvg/e;

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

    iget-object v0, p0, LAg/b;->b:LAg/j;

    invoke-virtual {v0}, LAg/j;->c()V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LAg/b;->b:LAg/j;

    invoke-virtual {v0}, LAg/j;->close()V

    return-void
.end method

.method public d()Lvg/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, LAg/b;->c:Lvg/e;

    return-object v0
.end method

.method public e()J
    .locals 2

    iget-object v0, p0, LAg/b;->b:LAg/j;

    invoke-virtual {v0}, LAg/j;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract f(Ljava/io/OutputStream;LBg/s;[CZ)Lvg/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "LBg/s;",
            "[CZ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public g([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LAg/b;->b:LAg/j;

    invoke-virtual {v0, p1}, LAg/j;->write([B)V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LAg/b;->b:LAg/j;

    invoke-virtual {v0, p1}, LAg/j;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, LAg/b;->b:LAg/j;

    invoke-virtual {v0, p1}, LAg/j;->write([B)V

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
    iget-object v0, p0, LAg/b;->c:Lvg/e;

    invoke-interface {v0, p1, p2, p3}, Lvg/e;->a([BII)I

    .line 4
    iget-object v0, p0, LAg/b;->b:LAg/j;

    invoke-virtual {v0, p1, p2, p3}, LAg/j;->write([BII)V

    return-void
.end method
