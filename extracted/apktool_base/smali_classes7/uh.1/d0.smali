.class public Luh/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Loh/s;

.field public b:Loh/q;

.field public c:Luh/G;

.field public d:Loh/z;

.field public e:Luh/w;

.field public f:Loh/F;


# direct methods
.method public constructor <init>(Loh/F;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luh/d0;->f:Loh/F;

    invoke-interface {p1}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Luh/d0;->a:Loh/s;

    invoke-interface {p1}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    instance-of v1, v0, Loh/q;

    if-eqz v1, :cond_0

    invoke-static {v0}, Loh/q;->F(Ljava/lang/Object;)Loh/q;

    move-result-object v0

    iput-object v0, p0, Luh/d0;->b:Loh/q;

    invoke-interface {p1}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Luh/G;

    if-nez v1, :cond_1

    instance-of v1, v0, Loh/F;

    if-eqz v1, :cond_2

    :cond_1
    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    invoke-static {v0}, Luh/G;->w(Ljava/lang/Object;)Luh/G;

    move-result-object v0

    iput-object v0, p0, Luh/d0;->c:Luh/G;

    invoke-interface {p1}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    :cond_2
    instance-of p1, v0, Loh/z;

    if-eqz p1, :cond_3

    check-cast v0, Loh/z;

    iput-object v0, p0, Luh/d0;->d:Loh/z;

    :cond_3
    return-void
.end method

.method public static d(Ljava/lang/Object;)Luh/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_0

    new-instance v0, Luh/d0;

    check-cast p0, Loh/E;

    invoke-virtual {p0}, Loh/E;->L()Loh/F;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/d0;-><init>(Loh/F;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Loh/F;

    if-eqz v0, :cond_1

    new-instance v0, Luh/d0;

    check-cast p0, Loh/F;

    invoke-direct {v0, p0}, Luh/d0;-><init>(Loh/F;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Loh/z;
    .locals 1

    iget-object v0, p0, Luh/d0;->d:Loh/z;

    return-object v0
.end method

.method public b()Loh/z0;
    .locals 3

    iget-object v0, p0, Luh/d0;->b:Loh/q;

    if-eqz v0, :cond_1

    instance-of v1, v0, Loh/z0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Loh/z0;

    iget-object v1, p0, Luh/d0;->b:Loh/q;

    invoke-virtual {v1}, Loh/q;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Loh/z0;-><init>(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    check-cast v0, Loh/z0;

    :goto_1
    return-object v0
.end method

.method public c()Loh/q;
    .locals 1

    iget-object v0, p0, Luh/d0;->b:Loh/q;

    return-object v0
.end method

.method public e()Luh/G;
    .locals 1

    iget-object v0, p0, Luh/d0;->c:Luh/G;

    return-object v0
.end method

.method public f()Luh/w;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Luh/d0;->e:Luh/w;

    if-nez v0, :cond_0

    iget-object v0, p0, Luh/d0;->f:Loh/F;

    invoke-interface {v0}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    invoke-static {v0}, Luh/w;->v(Ljava/lang/Object;)Luh/w;

    move-result-object v0

    iput-object v0, p0, Luh/d0;->e:Luh/w;

    :cond_0
    iget-object v0, p0, Luh/d0;->e:Luh/w;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Luh/d0;->a:Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method
