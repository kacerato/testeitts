.class public Luh/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Loh/F;

.field public b:Loh/s;

.field public c:Loh/g;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Loh/F;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luh/e;->a:Loh/F;

    invoke-interface {p1}, Loh/F;->readObject()Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    iput-object p1, p0, Luh/e;->b:Loh/s;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/s;->J(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    const-string v0, "AuthEnvelopedData version number must be 0"

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Loh/H;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Luh/e;->c:Loh/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Luh/e;->a:Loh/F;

    invoke-interface {v0}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    iput-object v0, p0, Luh/e;->c:Loh/g;

    :cond_0
    iget-object v0, p0, Luh/e;->c:Loh/g;

    instance-of v1, v0, Loh/N;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Loh/N;

    iput-object v2, p0, Luh/e;->c:Loh/g;

    const/4 v1, 0x0

    const/16 v2, 0x11

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Loh/V;->B(Loh/N;IZI)Loh/g;

    move-result-object v0

    check-cast v0, Loh/H;

    return-object v0

    :cond_1
    iget-boolean v0, p0, Luh/e;->e:Z

    if-eqz v0, :cond_2

    return-object v2

    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ParsingException;

    const-string v1, "authAttrs must be present with non-data content"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Luh/s;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Luh/e;->c:Loh/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Luh/e;->a:Loh/F;

    invoke-interface {v0}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    iput-object v0, p0, Luh/e;->c:Loh/g;

    :cond_0
    iget-object v0, p0, Luh/e;->c:Loh/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Loh/F;

    iput-object v1, p0, Luh/e;->c:Loh/g;

    new-instance v1, Luh/s;

    invoke-direct {v1, v0}, Luh/s;-><init>(Loh/F;)V

    sget-object v0, Luh/l;->m8:Loh/x;

    invoke-virtual {v1}, Luh/s;->b()Loh/x;

    move-result-object v2

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v0

    iput-boolean v0, p0, Luh/e;->e:Z

    :cond_1
    return-object v1
.end method

.method public c()Loh/y;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Luh/e;->c:Loh/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Luh/e;->a:Loh/F;

    invoke-interface {v0}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    iput-object v0, p0, Luh/e;->c:Loh/g;

    :cond_0
    iget-object v0, p0, Luh/e;->c:Loh/g;

    const/4 v1, 0x0

    iput-object v1, p0, Luh/e;->c:Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    return-object v0
.end method

.method public d()Luh/I;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Luh/e;->d:Z

    iget-object v0, p0, Luh/e;->c:Loh/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Luh/e;->a:Loh/F;

    invoke-interface {v0}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    iput-object v0, p0, Luh/e;->c:Loh/g;

    :cond_0
    iget-object v0, p0, Luh/e;->c:Loh/g;

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

    iput-object v2, p0, Luh/e;->c:Loh/g;

    invoke-interface {v0}, Loh/c1;->c()Loh/B;

    move-result-object v0

    invoke-static {v0}, Luh/I;->w(Ljava/lang/Object;)Luh/I;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v2
.end method

.method public e()Loh/H;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Luh/e;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Luh/e;->d()Luh/I;

    :cond_0
    iget-object v0, p0, Luh/e;->c:Loh/g;

    if-nez v0, :cond_1

    iget-object v0, p0, Luh/e;->a:Loh/F;

    invoke-interface {v0}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    iput-object v0, p0, Luh/e;->c:Loh/g;

    :cond_1
    iget-object v0, p0, Luh/e;->c:Loh/g;

    check-cast v0, Loh/H;

    const/4 v1, 0x0

    iput-object v1, p0, Luh/e;->c:Loh/g;

    return-object v0
.end method

.method public f()Loh/H;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Luh/e;->c:Loh/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Luh/e;->a:Loh/F;

    invoke-interface {v0}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    iput-object v0, p0, Luh/e;->c:Loh/g;

    :cond_0
    iget-object v0, p0, Luh/e;->c:Loh/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Loh/N;

    iput-object v1, p0, Luh/e;->c:Loh/g;

    const/4 v1, 0x0

    const/16 v2, 0x11

    const/4 v3, 0x2

    invoke-static {v0, v3, v1, v2}, Loh/V;->B(Loh/N;IZI)Loh/g;

    move-result-object v0

    check-cast v0, Loh/H;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public g()Loh/s;
    .locals 1

    iget-object v0, p0, Luh/e;->b:Loh/s;

    return-object v0
.end method
