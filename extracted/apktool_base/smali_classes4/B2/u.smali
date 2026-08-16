.class public final LB2/u;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation runtime LB2/k;
.end annotation

.annotation build Lv2/a;
.end annotation


# instance fields
.field public final b:LB2/r;


# direct methods
.method public constructor <init>(LB2/q;Ljava/io/OutputStream;)V
    .locals 0

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/OutputStream;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {p1}, LB2/q;->i()LB2/r;

    move-result-object p1

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LB2/r;

    iput-object p1, p0, LB2/u;->b:LB2/r;

    return-void
.end method


# virtual methods
.method public c()LB2/p;
    .locals 1

    iget-object v0, p0, LB2/u;->b:LB2/r;

    invoke-interface {v0}, LB2/r;->h()LB2/p;

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

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LB2/u;->b:LB2/r;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, LB2/r;->a(B)LB2/r;

    .line 2
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

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
    iget-object v0, p0, LB2/u;->b:LB2/r;

    invoke-interface {v0, p1, p2, p3}, LB2/r;->e([BII)LB2/r;

    .line 4
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
