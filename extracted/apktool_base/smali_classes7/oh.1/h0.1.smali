.class public Loh/h0;
.super Loh/b0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Loh/b0;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Loh/b0;->c(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Loh/b0;-><init>(Ljava/io/OutputStream;IZ)V

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Loh/b0;->c(I)V

    return-void
.end method


# virtual methods
.method public e(Loh/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    iget-object v0, p0, Loh/o;->a:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Loh/B;->e(Ljava/io/OutputStream;)V

    return-void
.end method

.method public f(Loh/B;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loh/o;->a:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Loh/B;->e(Ljava/io/OutputStream;)V

    return-void
.end method

.method public g()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Loh/b0;->b()V

    return-void
.end method
