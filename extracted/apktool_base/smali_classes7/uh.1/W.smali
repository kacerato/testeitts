.class public Luh/W;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Loh/F;

.field public b:Loh/s;

.field public c:Ljava/lang/Object;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Loh/F;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luh/W;->a:Loh/F;

    invoke-interface {p1}, Loh/F;->readObject()Loh/g;

    move-result-object p1

    check-cast p1, Loh/s;

    iput-object p1, p0, Luh/W;->b:Loh/s;

    return-void
.end method

.method public static e(Ljava/lang/Object;)Luh/W;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_0

    new-instance v0, Luh/W;

    check-cast p0, Loh/E;

    invoke-virtual {p0}, Loh/E;->L()Loh/F;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/W;-><init>(Loh/F;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Loh/F;

    if-eqz v0, :cond_1

    new-instance v0, Luh/W;

    check-cast p0, Loh/F;

    invoke-direct {v0, p0}, Luh/W;-><init>(Loh/F;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Loh/H;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Luh/W;->d:Z

    iget-object v0, p0, Luh/W;->a:Loh/F;

    invoke-interface {v0}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    iput-object v0, p0, Luh/W;->c:Ljava/lang/Object;

    instance-of v1, v0, Loh/N;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Loh/N;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Loh/N;->p(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x11

    invoke-interface {v0, v1, v3}, Loh/N;->d(ZI)Loh/g;

    move-result-object v0

    check-cast v0, Loh/H;

    iput-object v2, p0, Luh/W;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    return-object v2
.end method

.method public b()Loh/H;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Luh/W;->d:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Luh/W;->e:Z

    iget-object v1, p0, Luh/W;->c:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Luh/W;->a:Loh/F;

    invoke-interface {v1}, Loh/F;->readObject()Loh/g;

    move-result-object v1

    iput-object v1, p0, Luh/W;->c:Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Luh/W;->c:Ljava/lang/Object;

    instance-of v2, v1, Loh/N;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Loh/N;

    invoke-interface {v1, v0}, Loh/N;->p(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/16 v2, 0x11

    invoke-interface {v1, v0, v2}, Loh/N;->d(ZI)Loh/g;

    move-result-object v0

    check-cast v0, Loh/H;

    iput-object v3, p0, Luh/W;->c:Ljava/lang/Object;

    return-object v0

    :cond_1
    return-object v3

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "getCerts() has not been called."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Loh/H;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Luh/W;->a:Loh/F;

    invoke-interface {v0}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    instance-of v1, v0, Loh/G;

    if-eqz v1, :cond_0

    check-cast v0, Loh/G;

    invoke-virtual {v0}, Loh/G;->L()Loh/H;

    move-result-object v0

    return-object v0

    :cond_0
    check-cast v0, Loh/H;

    return-object v0
.end method

.method public d()Luh/p;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Luh/p;

    iget-object v1, p0, Luh/W;->a:Loh/F;

    invoke-interface {v1}, Loh/F;->readObject()Loh/g;

    move-result-object v1

    check-cast v1, Loh/F;

    invoke-direct {v0, v1}, Luh/p;-><init>(Loh/F;)V

    return-object v0
.end method

.method public f()Loh/H;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Luh/W;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Luh/W;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Luh/W;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Luh/W;->a:Loh/F;

    invoke-interface {v0}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    iput-object v0, p0, Luh/W;->c:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Luh/W;->c:Ljava/lang/Object;

    check-cast v0, Loh/H;

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "getCerts() and/or getCrls() has not been called."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Loh/s;
    .locals 1

    iget-object v0, p0, Luh/W;->b:Loh/s;

    return-object v0
.end method
