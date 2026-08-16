.class public final LB2/t;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation runtime LB2/k;
.end annotation

.annotation build Lv2/a;
.end annotation


# instance fields
.field public final b:LB2/r;


# direct methods
.method public constructor <init>(LB2/q;Ljava/io/InputStream;)V
    .locals 0

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/InputStream;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p1}, LB2/q;->i()LB2/r;

    move-result-object p1

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LB2/r;

    iput-object p1, p0, LB2/t;->b:LB2/r;

    return-void
.end method


# virtual methods
.method public c()LB2/p;
    .locals 1

    iget-object v0, p0, LB2/t;->b:LB2/r;

    invoke-interface {v0}, LB2/r;->h()LB2/p;

    move-result-object v0

    return-object v0
.end method

.method public mark(I)V
    .locals 0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, LB2/t;->b:LB2/r;

    int-to-byte v2, v0

    invoke-interface {v1, v2}, LB2/r;->a(B)LB2/r;

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 4
    iget-object v0, p0, LB2/t;->b:LB2/r;

    invoke-interface {v0, p1, p2, p3}, LB2/r;->e([BII)LB2/r;

    :cond_0
    return p3
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    const-string v1, "reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
