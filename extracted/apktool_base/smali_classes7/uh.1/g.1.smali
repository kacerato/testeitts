.class public Luh/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Loh/F;

.field public b:Loh/s;

.field public c:Loh/g;

.field public d:Z


# direct methods
.method public constructor <init>(Loh/F;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luh/g;->a:Loh/F;

    invoke-interface {p1}, Loh/F;->readObject()Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    iput-object p1, p0, Luh/g;->b:Loh/s;

    return-void
.end method


# virtual methods
.method public a()Loh/H;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Luh/g;->c:Loh/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Luh/g;->a:Loh/F;

    invoke-interface {v0}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    iput-object v0, p0, Luh/g;->c:Loh/g;

    :cond_0
    iget-object v0, p0, Luh/g;->c:Loh/g;

    instance-of v1, v0, Loh/N;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Loh/N;

    iput-object v2, p0, Luh/g;->c:Loh/g;

    const/4 v1, 0x0

    const/16 v2, 0x11

    const/4 v3, 0x2

    invoke-static {v0, v3, v1, v2}, Loh/V;->B(Loh/N;IZI)Loh/g;

    move-result-object v0

    check-cast v0, Loh/H;

    return-object v0

    :cond_1
    return-object v2
.end method

.method public b()Lhi/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Luh/g;->c:Loh/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Luh/g;->a:Loh/F;

    invoke-interface {v0}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    iput-object v0, p0, Luh/g;->c:Loh/g;

    :cond_0
    iget-object v0, p0, Luh/g;->c:Loh/g;

    instance-of v1, v0, Loh/N;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    check-cast v0, Loh/M;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhi/b;->w(Loh/M;Z)Lhi/b;

    move-result-object v0

    iput-object v2, p0, Luh/g;->c:Loh/g;

    return-object v0

    :cond_1
    return-object v2
.end method

.method public c()Luh/p;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Luh/g;->c:Loh/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Luh/g;->a:Loh/F;

    invoke-interface {v0}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    iput-object v0, p0, Luh/g;->c:Loh/g;

    :cond_0
    iget-object v0, p0, Luh/g;->c:Loh/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Loh/F;

    iput-object v1, p0, Luh/g;->c:Loh/g;

    new-instance v1, Luh/p;

    invoke-direct {v1, v0}, Luh/p;-><init>(Loh/F;)V

    :cond_1
    return-object v1
.end method

.method public d()Loh/y;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Luh/g;->c:Loh/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Luh/g;->a:Loh/F;

    invoke-interface {v0}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    iput-object v0, p0, Luh/g;->c:Loh/g;

    :cond_0
    iget-object v0, p0, Luh/g;->c:Loh/g;

    const/4 v1, 0x0

    iput-object v1, p0, Luh/g;->c:Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    return-object v0
.end method

.method public e()Lhi/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Luh/g;->c:Loh/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Luh/g;->a:Loh/F;

    invoke-interface {v0}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    iput-object v0, p0, Luh/g;->c:Loh/g;

    :cond_0
    iget-object v0, p0, Luh/g;->c:Loh/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Loh/F;

    iput-object v1, p0, Luh/g;->c:Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public f()Luh/I;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Luh/g;->d:Z

    iget-object v0, p0, Luh/g;->c:Loh/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Luh/g;->a:Loh/F;

    invoke-interface {v0}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    iput-object v0, p0, Luh/g;->c:Loh/g;

    :cond_0
    iget-object v0, p0, Luh/g;->c:Loh/g;

    instance-of v1, v0, Loh/N;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Loh/N;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Loh/N;->p(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x10

    invoke-interface {v0, v1, v3}, Loh/N;->d(ZI)Loh/g;

    move-result-object v0

    check-cast v0, Loh/F;

    iput-object v2, p0, Luh/g;->c:Loh/g;

    invoke-interface {v0}, Loh/c1;->c()Loh/B;

    move-result-object v0

    invoke-static {v0}, Luh/I;->w(Ljava/lang/Object;)Luh/I;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v2
.end method

.method public g()Loh/H;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Luh/g;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Luh/g;->f()Luh/I;

    :cond_0
    iget-object v0, p0, Luh/g;->c:Loh/g;

    if-nez v0, :cond_1

    iget-object v0, p0, Luh/g;->a:Loh/F;

    invoke-interface {v0}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    iput-object v0, p0, Luh/g;->c:Loh/g;

    :cond_1
    iget-object v0, p0, Luh/g;->c:Loh/g;

    check-cast v0, Loh/H;

    const/4 v1, 0x0

    iput-object v1, p0, Luh/g;->c:Loh/g;

    return-object v0
.end method

.method public h()Loh/H;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Luh/g;->c:Loh/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Luh/g;->a:Loh/F;

    invoke-interface {v0}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    iput-object v0, p0, Luh/g;->c:Loh/g;

    :cond_0
    iget-object v0, p0, Luh/g;->c:Loh/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Loh/M;

    iput-object v1, p0, Luh/g;->c:Loh/g;

    const/4 v1, 0x0

    const/16 v2, 0x11

    const/4 v3, 0x3

    invoke-static {v0, v3, v1, v2}, Loh/V;->B(Loh/N;IZI)Loh/g;

    move-result-object v0

    check-cast v0, Loh/H;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public i()Loh/s;
    .locals 1

    iget-object v0, p0, Luh/g;->b:Loh/s;

    return-object v0
.end method
