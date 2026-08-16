.class public Loh/a1;
.super Loh/m0;
.source "SourceFile"


# instance fields
.field public final e:Z


# direct methods
.method public constructor <init>(IIZLoh/I;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Loh/m0;-><init>(IILoh/I;)V

    iput-boolean p3, p0, Loh/a1;->e:Z

    return-void
.end method


# virtual methods
.method public b()Loh/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Loh/a1;->e()Loh/I;

    move-result-object v0

    invoke-virtual {v0}, Loh/I;->j()Loh/g;

    move-result-object v0

    return-object v0
.end method

.method public c()Loh/B;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loh/m0;->d:Loh/I;

    iget v1, p0, Loh/m0;->b:I

    iget v2, p0, Loh/m0;->c:I

    iget-boolean v3, p0, Loh/a1;->e:Z

    invoke-virtual {v0, v1, v2, v3}, Loh/I;->b(IIZ)Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public d(ZI)Loh/g;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Loh/a1;->e()Loh/I;

    move-result-object p1

    invoke-virtual {p1, p2}, Loh/I;->h(I)Loh/g;

    move-result-object p1

    return-object p1

    :cond_0
    iget-boolean p1, p0, Loh/a1;->e:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Loh/m0;->d:Loh/I;

    invoke-virtual {p1, p2}, Loh/I;->d(I)Loh/g;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Loh/m0;->d:Loh/I;

    invoke-virtual {p1, p2}, Loh/I;->f(I)Loh/g;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final e()Loh/I;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Loh/a1;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Loh/m0;->d:Loh/I;

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Explicit tags must be constructed (see X.690 8.14.2)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h(II)Loh/N;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Loh/a1;

    iget-boolean v1, p0, Loh/a1;->e:Z

    iget-object v2, p0, Loh/m0;->d:Loh/I;

    invoke-direct {v0, p1, p2, v1, v2}, Loh/a1;-><init>(IIZLoh/I;)V

    return-object v0
.end method

.method public j()Loh/N;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Loh/a1;->e()Loh/I;

    move-result-object v0

    invoke-virtual {v0}, Loh/I;->i()Loh/N;

    move-result-object v0

    return-object v0
.end method
