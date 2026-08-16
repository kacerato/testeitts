.class public Lni/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lth/H;

.field public b:Lth/C;

.field public c:Ljava/util/List;

.field public d:Ljava/util/List;


# direct methods
.method public constructor <init>(ILhi/E;Lhi/E;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lni/h;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lni/h;->d:Ljava/util/List;

    new-instance v0, Lth/H;

    invoke-direct {v0, p1, p2, p3}, Lth/H;-><init>(ILhi/E;Lhi/E;)V

    iput-object v0, p0, Lni/h;->a:Lth/H;

    return-void
.end method

.method public constructor <init>(Lhi/E;Lhi/E;)V
    .locals 1

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lni/h;-><init>(ILhi/E;Lhi/E;)V

    return-void
.end method


# virtual methods
.method public a(Lli/h;)Lni/h;
    .locals 1

    iget-object v0, p0, Lni/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Lth/t;)Lni/h;
    .locals 1

    iget-object v0, p0, Lni/h;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c(LQk/f;)Lni/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/cmp/CMPException;
        }
    .end annotation

    iget-object v0, p0, Lni/h;->b:Lth/C;

    if-eqz v0, :cond_0

    invoke-interface {p1}, LQk/f;->a()Lhi/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lni/h;->g(Lhi/b;)V

    iget-object v0, p0, Lni/h;->a:Lth/H;

    invoke-virtual {v0}, Lth/H;->b()Lth/G;

    move-result-object v0

    :try_start_0
    new-instance v1, Loh/r0;

    iget-object v2, p0, Lni/h;->b:Lth/C;

    invoke-virtual {p0, p1, v0, v2}, Lni/h;->f(LQk/f;Lth/G;Lth/C;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Loh/r0;-><init>([B)V

    invoke-virtual {p0, v0, v1}, Lni/h;->h(Lth/G;Loh/r0;)Lni/g;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cert/cmp/CMPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to encode signature input: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "body must be set before building"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(LQk/A;)Lni/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/cmp/CMPException;
        }
    .end annotation

    iget-object v0, p0, Lni/h;->b:Lth/C;

    if-eqz v0, :cond_0

    invoke-interface {p1}, LQk/A;->a()Lhi/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lni/h;->g(Lhi/b;)V

    iget-object v0, p0, Lni/h;->a:Lth/H;

    invoke-virtual {v0}, Lth/H;->b()Lth/G;

    move-result-object v0

    :try_start_0
    new-instance v1, Loh/r0;

    iget-object v2, p0, Lni/h;->b:Lth/C;

    invoke-virtual {p0, p1, v0, v2}, Lni/h;->e(LQk/A;Lth/G;Lth/C;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Loh/r0;-><init>([B)V

    invoke-virtual {p0, v0, v1}, Lni/h;->h(Lth/G;Loh/r0;)Lni/g;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cert/cmp/CMPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to encode MAC input: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "body must be set before building"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(LQk/A;Lth/G;Lth/C;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    invoke-virtual {v0, p2}, Loh/h;->a(Loh/g;)V

    invoke-virtual {v0, p3}, Loh/h;->a(Loh/g;)V

    invoke-interface {p1}, LQk/A;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    new-instance p3, Loh/G0;

    invoke-direct {p3, v0}, Loh/G0;-><init>(Loh/h;)V

    const-string v0, "DER"

    invoke-virtual {p3, v0}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    invoke-interface {p1}, LQk/A;->e()[B

    move-result-object p1

    return-object p1
.end method

.method public final f(LQk/f;Lth/G;Lth/C;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    invoke-virtual {v0, p2}, Loh/h;->a(Loh/g;)V

    invoke-virtual {v0, p3}, Loh/h;->a(Loh/g;)V

    invoke-interface {p1}, LQk/f;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    new-instance p3, Loh/G0;

    invoke-direct {p3, v0}, Loh/G0;-><init>(Loh/h;)V

    const-string v0, "DER"

    invoke-virtual {p3, v0}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    invoke-interface {p1}, LQk/f;->getSignature()[B

    move-result-object p1

    return-object p1
.end method

.method public final g(Lhi/b;)V
    .locals 2

    iget-object v0, p0, Lni/h;->a:Lth/H;

    invoke-virtual {v0, p1}, Lth/H;->k(Lhi/b;)Lth/H;

    iget-object p1, p0, Lni/h;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lni/h;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lth/t;

    iget-object v0, p0, Lni/h;->a:Lth/H;

    iget-object v1, p0, Lni/h;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lth/t;

    invoke-virtual {v0, p1}, Lth/H;->i([Lth/t;)Lth/H;

    :cond_0
    return-void
.end method

.method public final h(Lth/G;Loh/r0;)Lni/g;
    .locals 5

    iget-object v0, p0, Lni/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lni/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lth/b;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    new-instance v3, Lth/b;

    iget-object v4, p0, Lni/h;->d:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lli/h;

    invoke-virtual {v4}, Lli/h;->x()Lhi/q;

    move-result-object v4

    invoke-direct {v3, v4}, Lth/b;-><init>(Lhi/q;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lni/g;

    new-instance v2, Lth/I;

    iget-object v3, p0, Lni/h;->b:Lth/C;

    invoke-direct {v2, p1, v3, p2, v1}, Lth/I;-><init>(Lth/G;Lth/C;Loh/c;[Lth/b;)V

    invoke-direct {v0, v2}, Lni/g;-><init>(Lth/I;)V

    return-object v0

    :cond_1
    new-instance v0, Lni/g;

    new-instance v1, Lth/I;

    iget-object v2, p0, Lni/h;->b:Lth/C;

    invoke-direct {v1, p1, v2, p2}, Lth/I;-><init>(Lth/G;Lth/C;Loh/c;)V

    invoke-direct {v0, v1}, Lni/g;-><init>(Lth/I;)V

    return-object v0
.end method

.method public i(ILni/c;)Lni/h;
    .locals 2

    invoke-static {p1}, Lni/c;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lth/C;

    invoke-virtual {p2}, Lni/c;->e()Lth/h;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lth/C;-><init>(ILoh/g;)V

    iput-object v0, p0, Lni/h;->b:Lth/C;

    return-object p0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "body type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not match CMP type CertConfirmContent"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public j(ILoi/c;)Lni/h;
    .locals 2

    invoke-static {p1}, Loi/c;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lth/C;

    invoke-virtual {p2}, Loi/c;->g()Lth/j;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lth/C;-><init>(ILoh/g;)V

    iput-object v0, p0, Lni/h;->b:Lth/C;

    return-object p0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "body type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not match CMP type CertRepMessage"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public k(ILoi/e;)Lni/h;
    .locals 2

    invoke-static {p1}, Loi/e;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lth/C;

    invoke-virtual {p2}, Loi/e;->d()Lwh/d;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lth/C;-><init>(ILoh/g;)V

    iput-object v0, p0, Lni/h;->b:Lth/C;

    return-object p0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "body type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not match CMP type CertReqMessages"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public l(Lth/C;)Lni/h;
    .locals 0

    iput-object p1, p0, Lni/h;->b:Lth/C;

    return-object p0
.end method

.method public m(Lth/F;)Lni/h;
    .locals 1

    iget-object v0, p0, Lni/h;->a:Lth/H;

    invoke-virtual {v0, p1}, Lth/H;->f(Lth/F;)Lth/H;

    return-object p0
.end method

.method public n(Ljava/util/Date;)Lni/h;
    .locals 2

    iget-object v0, p0, Lni/h;->a:Lth/H;

    new-instance v1, Loh/n;

    invoke-direct {v1, p1}, Loh/n;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lth/H;->j(Loh/n;)Lth/H;

    return-object p0
.end method

.method public o([B)Lni/h;
    .locals 1

    iget-object v0, p0, Lni/h;->a:Lth/H;

    invoke-virtual {v0, p1}, Lth/H;->m([B)Lth/H;

    return-object p0
.end method

.method public p([B)Lni/h;
    .locals 1

    iget-object v0, p0, Lni/h;->a:Lth/H;

    invoke-virtual {v0, p1}, Lth/H;->o([B)Lth/H;

    return-object p0
.end method

.method public q([B)Lni/h;
    .locals 1

    iget-object v0, p0, Lni/h;->a:Lth/H;

    invoke-virtual {v0, p1}, Lth/H;->q([B)Lth/H;

    return-object p0
.end method

.method public r([B)Lni/h;
    .locals 1

    iget-object v0, p0, Lni/h;->a:Lth/H;

    invoke-virtual {v0, p1}, Lth/H;->s([B)Lth/H;

    return-object p0
.end method

.method public s([B)Lni/h;
    .locals 1

    iget-object v0, p0, Lni/h;->a:Lth/H;

    invoke-virtual {v0, p1}, Lth/H;->u([B)Lth/H;

    return-object p0
.end method
