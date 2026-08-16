.class public Loi/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/math/BigInteger;

.field public b:Lhi/D;

.field public c:Lwh/h;

.field public d:Ljava/util/List;

.field public e:LQk/f;

.field public f:Loi/q;

.field public g:[C

.field public h:Lhi/E;

.field public i:I

.field public j:Lwh/r;

.field public k:Loh/t;

.field public l:Lwh/q;

.field public m:[Lwh/a;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Loi/h;->i:I

    iput-object p1, p0, Loi/h;->a:Ljava/math/BigInteger;

    new-instance p1, Lhi/D;

    invoke-direct {p1}, Lhi/D;-><init>()V

    iput-object p1, p0, Loi/h;->b:Lhi/D;

    new-instance p1, Lwh/h;

    invoke-direct {p1}, Lwh/h;-><init>()V

    iput-object p1, p0, Loi/h;->c:Lwh/h;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Loi/h;->d:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Loi/h;->m:[Lwh/a;

    return-void
.end method


# virtual methods
.method public a(Loi/k;)Loi/h;
    .locals 1

    iget-object v0, p0, Loi/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Loh/x;ZLoh/g;)Loi/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    iget-object v0, p0, Loi/h;->b:Lhi/D;

    invoke-static {v0, p1, p2, p3}, Loi/b;->a(Lhi/D;Loh/x;ZLoh/g;)V

    return-object p0
.end method

.method public c(Loh/x;Z[B)Loi/h;
    .locals 1

    iget-object v0, p0, Loi/h;->b:Lhi/D;

    invoke-virtual {v0, p1, p2, p3}, Lhi/D;->d(Loh/x;Z[B)V

    return-object p0
.end method

.method public d()Loi/g;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    new-instance v2, Loh/s;

    iget-object v3, p0, Loi/h;->a:Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    iget-object v2, p0, Loi/h;->b:Lhi/D;

    invoke-virtual {v2}, Lhi/D;->h()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Loi/h;->c:Lwh/h;

    iget-object v3, p0, Loi/h;->b:Lhi/D;

    invoke-virtual {v3}, Lhi/D;->e()Lhi/C;

    move-result-object v3

    invoke-virtual {v2, v3}, Lwh/h;->c(Lhi/C;)Lwh/h;

    :cond_0
    iget-object v2, p0, Loi/h;->c:Lwh/h;

    invoke-virtual {v2}, Lwh/h;->b()Lwh/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    iget-object v2, p0, Loi/h;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Loh/h;

    invoke-direct {v2}, Loh/h;-><init>()V

    iget-object v3, p0, Loi/h;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Loi/k;

    new-instance v5, Lwh/a;

    invoke-interface {v4}, Loi/k;->getType()Loh/x;

    move-result-object v6

    invoke-interface {v4}, Loi/k;->getValue()Loh/g;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lwh/a;-><init>(Loh/x;Loh/g;)V

    invoke-virtual {v2, v5}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_1
    new-instance v3, Loh/G0;

    invoke-direct {v3, v2}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_2
    new-instance v2, Loh/G0;

    invoke-direct {v2, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-static {v2}, Lwh/f;->y(Ljava/lang/Object;)Lwh/f;

    move-result-object v0

    iget-object v2, p0, Loi/h;->e:LQk/f;

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lwh/f;->v()Lwh/g;

    move-result-object v1

    invoke-virtual {v1}, Lwh/g;->C()Lfi/d;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lwh/g;->z()Lhi/h0;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Loi/u;

    invoke-direct {v1, v0}, Loi/u;-><init>(Lwh/f;)V

    goto :goto_3

    :cond_4
    :goto_1
    invoke-virtual {v0}, Lwh/f;->v()Lwh/g;

    move-result-object v1

    invoke-virtual {v1}, Lwh/g;->z()Lhi/h0;

    move-result-object v1

    new-instance v2, Loi/u;

    invoke-direct {v2, v1}, Loi/u;-><init>(Lhi/h0;)V

    iget-object v1, p0, Loi/h;->h:Lhi/E;

    if-eqz v1, :cond_5

    invoke-virtual {v2, v1}, Loi/u;->c(Lhi/E;)Loi/u;

    goto :goto_2

    :cond_5
    iget-object v1, p0, Loi/h;->f:Loi/q;

    iget-object v3, p0, Loi/h;->g:[C

    invoke-virtual {v2, v1, v3}, Loi/u;->b(Loi/q;[C)Loi/u;

    :goto_2
    move-object v1, v2

    :goto_3
    new-instance v2, Lwh/u;

    iget-object v3, p0, Loi/h;->e:LQk/f;

    invoke-virtual {v1, v3}, Loi/u;->a(LQk/f;)Lwh/s;

    move-result-object v1

    invoke-direct {v2, v1}, Lwh/u;-><init>(Lwh/s;)V

    goto :goto_4

    :cond_6
    iget-object v2, p0, Loi/h;->j:Lwh/r;

    if-eqz v2, :cond_7

    new-instance v1, Lwh/u;

    iget v3, p0, Loi/h;->i:I

    invoke-direct {v1, v3, v2}, Lwh/u;-><init>(ILwh/r;)V

    move-object v2, v1

    goto :goto_4

    :cond_7
    iget-object v2, p0, Loi/h;->l:Lwh/q;

    if-eqz v2, :cond_8

    new-instance v3, Lwh/u;

    new-instance v4, Lwh/r;

    invoke-direct {v4, v2}, Lwh/r;-><init>(Lwh/q;)V

    invoke-direct {v3, v1, v4}, Lwh/u;-><init>(ILwh/r;)V

    move-object v2, v3

    goto :goto_4

    :cond_8
    iget-object v1, p0, Loi/h;->k:Loh/t;

    new-instance v2, Lwh/u;

    if-eqz v1, :cond_9

    invoke-direct {v2}, Lwh/u;-><init>()V

    goto :goto_4

    :cond_9
    invoke-direct {v2}, Lwh/u;-><init>()V

    :goto_4
    new-instance v1, Lwh/e;

    iget-object v3, p0, Loi/h;->m:[Lwh/a;

    invoke-direct {v1, v0, v2, v3}, Lwh/e;-><init>(Lwh/f;Lwh/u;[Lwh/a;)V

    new-instance v0, Loi/g;

    invoke-direct {v0, v1}, Loi/g;-><init>(Lwh/e;)V

    return-object v0
.end method

.method public final e(Ljava/util/Date;)Lhi/o0;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lhi/o0;

    invoke-direct {v0, p1}, Lhi/o0;-><init>(Ljava/util/Date;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Loi/q;[C)Loi/h;
    .locals 0

    iput-object p1, p0, Loi/h;->f:Loi/q;

    iput-object p2, p0, Loi/h;->g:[C

    return-object p0
.end method

.method public g(Lfi/d;)Loi/h;
    .locals 1

    new-instance v0, Lhi/E;

    invoke-direct {v0, p1}, Lhi/E;-><init>(Lfi/d;)V

    invoke-virtual {p0, v0}, Loi/h;->h(Lhi/E;)Loi/h;

    move-result-object p1

    return-object p1
.end method

.method public h(Lhi/E;)Loi/h;
    .locals 0

    iput-object p1, p0, Loi/h;->h:Lhi/E;

    return-object p0
.end method

.method public i(Lfi/d;)Loi/h;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Loi/h;->c:Lwh/h;

    invoke-virtual {v0, p1}, Lwh/h;->e(Lfi/d;)Lwh/h;

    :cond_0
    return-object p0
.end method

.method public j(Lwh/q;)Loi/h;
    .locals 1

    iget-object v0, p0, Loi/h;->e:LQk/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Loi/h;->k:Loh/t;

    if-nez v0, :cond_0

    iget-object v0, p0, Loi/h;->j:Lwh/r;

    if-nez v0, :cond_0

    iput-object p1, p0, Loi/h;->l:Lwh/q;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "only one proof of possession allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k()Loi/h;
    .locals 2

    iget-object v0, p0, Loi/h;->e:LQk/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Loi/h;->j:Lwh/r;

    if-nez v0, :cond_0

    sget-object v0, Loh/A0;->c:Loh/A0;

    iput-object v0, p0, Loi/h;->k:Loh/t;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "only one proof of possession allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l(LQk/f;)Loi/h;
    .locals 1

    iget-object v0, p0, Loi/h;->j:Lwh/r;

    if-nez v0, :cond_0

    iget-object v0, p0, Loi/h;->k:Loh/t;

    if-nez v0, :cond_0

    iget-object v0, p0, Loi/h;->l:Lwh/q;

    if-nez v0, :cond_0

    iput-object p1, p0, Loi/h;->e:LQk/f;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "only one proof of possession allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(ILwh/w;)Loi/h;
    .locals 1

    iget-object v0, p0, Loi/h;->e:LQk/f;

    if-nez v0, :cond_2

    iget-object v0, p0, Loi/h;->k:Loh/t;

    if-nez v0, :cond_2

    iget-object v0, p0, Loi/h;->l:Lwh/q;

    if-nez v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type must be ProofOfPossession.TYPE_KEY_ENCIPHERMENT or ProofOfPossession.TYPE_KEY_AGREEMENT"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Loi/h;->i:I

    new-instance p1, Lwh/r;

    invoke-direct {p1, p2}, Lwh/r;-><init>(Lwh/w;)V

    iput-object p1, p0, Loi/h;->j:Lwh/r;

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "only one proof of possession allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n(Lwh/w;)Loi/h;
    .locals 1

    iget-object v0, p0, Loi/h;->e:LQk/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Loi/h;->k:Loh/t;

    if-nez v0, :cond_0

    iget-object v0, p0, Loi/h;->l:Lwh/q;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Loi/h;->i:I

    new-instance v0, Lwh/r;

    invoke-direct {v0, p1}, Lwh/r;-><init>(Lwh/w;)V

    iput-object v0, p0, Loi/h;->j:Lwh/r;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "only one proof of possession allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o(Lhi/h0;)Loi/h;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Loi/h;->c:Lwh/h;

    invoke-virtual {v0, p1}, Lwh/h;->g(Lhi/h0;)Lwh/h;

    :cond_0
    return-object p0
.end method

.method public p([Lwh/a;)Loi/h;
    .locals 0

    iput-object p1, p0, Loi/h;->m:[Lwh/a;

    return-object p0
.end method

.method public q(Ljava/math/BigInteger;)Loi/h;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Loi/h;->c:Lwh/h;

    new-instance v1, Loh/s;

    invoke-direct {v1, p1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lwh/h;->h(Loh/s;)Lwh/h;

    :cond_0
    return-object p0
.end method

.method public r(Loh/s;)Loi/h;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Loi/h;->c:Lwh/h;

    invoke-virtual {v0, p1}, Lwh/h;->h(Loh/s;)Lwh/h;

    :cond_0
    return-object p0
.end method

.method public s(Lfi/d;)Loi/h;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Loi/h;->c:Lwh/h;

    invoke-virtual {v0, p1}, Lwh/h;->j(Lfi/d;)Lwh/h;

    :cond_0
    return-object p0
.end method

.method public t(Ljava/util/Date;Ljava/util/Date;)Loi/h;
    .locals 2

    iget-object v0, p0, Loi/h;->c:Lwh/h;

    new-instance v1, Lwh/n;

    invoke-virtual {p0, p1}, Loi/h;->e(Ljava/util/Date;)Lhi/o0;

    move-result-object p1

    invoke-virtual {p0, p2}, Loi/h;->e(Ljava/util/Date;)Lhi/o0;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lwh/n;-><init>(Lhi/o0;Lhi/o0;)V

    invoke-virtual {v0, v1}, Lwh/h;->l(Lwh/n;)Lwh/h;

    return-object p0
.end method
