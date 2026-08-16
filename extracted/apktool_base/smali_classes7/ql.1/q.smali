.class public Lql/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lql/H;

.field public b:Lql/k;

.field public c:Ljava/security/SecureRandom;

.field public d:Lql/I;

.field public e:Lql/J;


# direct methods
.method public constructor <init>(Lql/H;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lql/q;->a:Lql/H;

    invoke-virtual {p1}, Lql/H;->i()Lql/k;

    move-result-object p1

    iput-object p1, p0, Lql/q;->b:Lql/k;

    iput-object p2, p0, Lql/q;->c:Ljava/security/SecureRandom;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "params == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lql/I;
    .locals 1

    iget-object v0, p0, Lql/q;->d:Lql/I;

    return-object v0
.end method

.method public b()Lql/J;
    .locals 1

    iget-object v0, p0, Lql/q;->e:Lql/J;

    return-object v0
.end method

.method public c()V
    .locals 4

    new-instance v0, Lql/t;

    invoke-direct {v0}, Lql/t;-><init>()V

    new-instance v1, Lql/s;

    invoke-virtual {p0}, Lql/q;->e()Lql/H;

    move-result-object v2

    iget-object v3, p0, Lql/q;->c:Ljava/security/SecureRandom;

    invoke-direct {v1, v2, v3}, Lql/s;-><init>(Lql/H;Ljava/security/SecureRandom;)V

    invoke-virtual {v0, v1}, Lql/t;->b(LBi/G;)V

    invoke-virtual {v0}, Lql/t;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v1

    check-cast v1, Lql/I;

    iput-object v1, p0, Lql/q;->d:Lql/I;

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v0

    check-cast v0, Lql/J;

    iput-object v0, p0, Lql/q;->e:Lql/J;

    iget-object v0, p0, Lql/q;->b:Lql/k;

    iget-object v1, p0, Lql/q;->a:Lql/H;

    invoke-virtual {v1}, Lql/H;->h()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Lql/q;->d:Lql/I;

    invoke-virtual {v2}, Lql/I;->j()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lql/k;->l([B[B)V

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lql/q;->d:Lql/I;

    invoke-virtual {v0}, Lql/I;->g()I

    move-result v0

    return v0
.end method

.method public e()Lql/H;
    .locals 1

    iget-object v0, p0, Lql/q;->a:Lql/H;

    return-object v0
.end method

.method public f()Lql/I;
    .locals 1

    iget-object v0, p0, Lql/q;->d:Lql/I;

    return-object v0
.end method

.method public g()[B
    .locals 1

    iget-object v0, p0, Lql/q;->d:Lql/I;

    invoke-virtual {v0}, Lql/I;->j()[B

    move-result-object v0

    return-object v0
.end method

.method public h()[B
    .locals 1

    iget-object v0, p0, Lql/q;->d:Lql/I;

    invoke-virtual {v0}, Lql/I;->k()[B

    move-result-object v0

    return-object v0
.end method

.method public i()Lql/k;
    .locals 1

    iget-object v0, p0, Lql/q;->b:Lql/k;

    return-object v0
.end method

.method public j(Lql/I;Lql/J;)V
    .locals 2

    invoke-virtual {p1}, Lql/I;->k()[B

    move-result-object v0

    invoke-virtual {p2}, Lql/J;->g()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lql/I;->j()[B

    move-result-object v0

    invoke-virtual {p2}, Lql/J;->f()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lql/q;->d:Lql/I;

    iput-object p2, p0, Lql/q;->e:Lql/J;

    iget-object p1, p0, Lql/q;->b:Lql/k;

    iget-object p2, p0, Lql/q;->a:Lql/H;

    invoke-virtual {p2}, Lql/H;->h()I

    move-result p2

    new-array p2, p2, [B

    iget-object v0, p0, Lql/q;->d:Lql/I;

    invoke-virtual {v0}, Lql/I;->j()[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lql/k;->l([B[B)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "public seed of private key and public key do not match"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "root of private key and public key do not match"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k([B[B)V
    .locals 2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    new-instance v0, Lql/I$b;

    iget-object v1, p0, Lql/q;->a:Lql/H;

    invoke-direct {v0, v1}, Lql/I$b;-><init>(Lql/H;)V

    invoke-virtual {v0, p1}, Lql/I$b;->n([B)Lql/I$b;

    move-result-object p1

    invoke-virtual {p1}, Lql/I$b;->j()Lql/I;

    move-result-object p1

    new-instance v0, Lql/J$b;

    iget-object v1, p0, Lql/q;->a:Lql/H;

    invoke-direct {v0, v1}, Lql/J$b;-><init>(Lql/H;)V

    invoke-virtual {v0, p2}, Lql/J$b;->f([B)Lql/J$b;

    move-result-object p2

    invoke-virtual {p2}, Lql/J$b;->e()Lql/J;

    move-result-object p2

    invoke-virtual {p1}, Lql/I;->k()[B

    move-result-object v0

    invoke-virtual {p2}, Lql/J;->g()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lql/I;->j()[B

    move-result-object v0

    invoke-virtual {p2}, Lql/J;->f()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lql/q;->d:Lql/I;

    iput-object p2, p0, Lql/q;->e:Lql/J;

    iget-object p1, p0, Lql/q;->b:Lql/k;

    iget-object p2, p0, Lql/q;->a:Lql/H;

    invoke-virtual {p2}, Lql/H;->h()I

    move-result p2

    new-array p2, p2, [B

    iget-object v0, p0, Lql/q;->d:Lql/I;

    invoke-virtual {v0}, Lql/I;->j()[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lql/k;->l([B[B)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "public seed of private key and public key do not match"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "root of private key and public key do not match"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "publicKey == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "privateKey == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(I)V
    .locals 1

    new-instance p1, Lql/I$b;

    iget-object v0, p0, Lql/q;->a:Lql/H;

    invoke-direct {p1, v0}, Lql/I$b;-><init>(Lql/H;)V

    iget-object v0, p0, Lql/q;->d:Lql/I;

    invoke-virtual {v0}, Lql/I;->m()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lql/I$b;->r([B)Lql/I$b;

    move-result-object p1

    iget-object v0, p0, Lql/q;->d:Lql/I;

    invoke-virtual {v0}, Lql/I;->l()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lql/I$b;->q([B)Lql/I$b;

    move-result-object p1

    iget-object v0, p0, Lql/q;->d:Lql/I;

    invoke-virtual {v0}, Lql/I;->j()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lql/I$b;->o([B)Lql/I$b;

    move-result-object p1

    iget-object v0, p0, Lql/q;->d:Lql/I;

    invoke-virtual {v0}, Lql/I;->k()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lql/I$b;->p([B)Lql/I$b;

    move-result-object p1

    iget-object v0, p0, Lql/q;->d:Lql/I;

    invoke-virtual {v0}, Lql/I;->f()Lql/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lql/I$b;->k(Lql/a;)Lql/I$b;

    move-result-object p1

    invoke-virtual {p1}, Lql/I$b;->j()Lql/I;

    move-result-object p1

    iput-object p1, p0, Lql/q;->d:Lql/I;

    return-void
.end method

.method public m([B)V
    .locals 2

    new-instance v0, Lql/I$b;

    iget-object v1, p0, Lql/q;->a:Lql/H;

    invoke-direct {v0, v1}, Lql/I$b;-><init>(Lql/H;)V

    iget-object v1, p0, Lql/q;->d:Lql/I;

    invoke-virtual {v1}, Lql/I;->m()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lql/I$b;->r([B)Lql/I$b;

    move-result-object v0

    iget-object v1, p0, Lql/q;->d:Lql/I;

    invoke-virtual {v1}, Lql/I;->l()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lql/I$b;->q([B)Lql/I$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lql/I$b;->o([B)Lql/I$b;

    move-result-object v0

    invoke-virtual {p0}, Lql/q;->h()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lql/I$b;->p([B)Lql/I$b;

    move-result-object v0

    iget-object v1, p0, Lql/q;->d:Lql/I;

    invoke-virtual {v1}, Lql/I;->f()Lql/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lql/I$b;->k(Lql/a;)Lql/I$b;

    move-result-object v0

    invoke-virtual {v0}, Lql/I$b;->j()Lql/I;

    move-result-object v0

    iput-object v0, p0, Lql/q;->d:Lql/I;

    new-instance v0, Lql/J$b;

    iget-object v1, p0, Lql/q;->a:Lql/H;

    invoke-direct {v0, v1}, Lql/J$b;-><init>(Lql/H;)V

    invoke-virtual {p0}, Lql/q;->h()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lql/J$b;->h([B)Lql/J$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lql/J$b;->g([B)Lql/J$b;

    move-result-object v0

    invoke-virtual {v0}, Lql/J$b;->e()Lql/J;

    move-result-object v0

    iput-object v0, p0, Lql/q;->e:Lql/J;

    iget-object v0, p0, Lql/q;->b:Lql/k;

    iget-object v1, p0, Lql/q;->a:Lql/H;

    invoke-virtual {v1}, Lql/H;->h()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, p1}, Lql/k;->l([B[B)V

    return-void
.end method

.method public n([B)V
    .locals 2

    new-instance v0, Lql/I$b;

    iget-object v1, p0, Lql/q;->a:Lql/H;

    invoke-direct {v0, v1}, Lql/I$b;-><init>(Lql/H;)V

    iget-object v1, p0, Lql/q;->d:Lql/I;

    invoke-virtual {v1}, Lql/I;->m()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lql/I$b;->r([B)Lql/I$b;

    move-result-object v0

    iget-object v1, p0, Lql/q;->d:Lql/I;

    invoke-virtual {v1}, Lql/I;->l()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lql/I$b;->q([B)Lql/I$b;

    move-result-object v0

    invoke-virtual {p0}, Lql/q;->g()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lql/I$b;->o([B)Lql/I$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lql/I$b;->p([B)Lql/I$b;

    move-result-object v0

    iget-object v1, p0, Lql/q;->d:Lql/I;

    invoke-virtual {v1}, Lql/I;->f()Lql/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lql/I$b;->k(Lql/a;)Lql/I$b;

    move-result-object v0

    invoke-virtual {v0}, Lql/I$b;->j()Lql/I;

    move-result-object v0

    iput-object v0, p0, Lql/q;->d:Lql/I;

    new-instance v0, Lql/J$b;

    iget-object v1, p0, Lql/q;->a:Lql/H;

    invoke-direct {v0, v1}, Lql/J$b;-><init>(Lql/H;)V

    invoke-virtual {v0, p1}, Lql/J$b;->h([B)Lql/J$b;

    move-result-object p1

    invoke-virtual {p0}, Lql/q;->g()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lql/J$b;->g([B)Lql/J$b;

    move-result-object p1

    invoke-virtual {p1}, Lql/J$b;->e()Lql/J;

    move-result-object p1

    iput-object p1, p0, Lql/q;->e:Lql/J;

    return-void
.end method

.method public o([B)[B
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lql/M;

    invoke-direct {v0}, Lql/M;-><init>()V

    const/4 v1, 0x1

    iget-object v2, p0, Lql/q;->d:Lql/I;

    invoke-virtual {v0, v1, v2}, Lql/M;->a(ZLBi/k;)V

    invoke-virtual {v0, p1}, Lql/M;->b([B)[B

    move-result-object p1

    invoke-virtual {v0}, Lql/M;->c()LXi/c;

    move-result-object v0

    check-cast v0, Lql/I;

    iput-object v0, p0, Lql/q;->d:Lql/I;

    iget-object v1, p0, Lql/q;->e:Lql/J;

    invoke-virtual {p0, v0, v1}, Lql/q;->j(Lql/I;Lql/J;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "message == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p([B[B[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    new-instance v0, Lql/M;

    invoke-direct {v0}, Lql/M;-><init>()V

    new-instance v1, Lql/J$b;

    invoke-virtual {p0}, Lql/q;->e()Lql/H;

    move-result-object v2

    invoke-direct {v1, v2}, Lql/J$b;-><init>(Lql/H;)V

    invoke-virtual {v1, p3}, Lql/J$b;->f([B)Lql/J$b;

    move-result-object p3

    invoke-virtual {p3}, Lql/J$b;->e()Lql/J;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Lql/M;->a(ZLBi/k;)V

    invoke-virtual {v0, p1, p2}, Lql/M;->d([B[B)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "publicKey == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "signature == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "message == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q([BLql/j;)Lql/p;
    .locals 3

    array-length v0, p1

    iget-object v1, p0, Lql/q;->a:Lql/H;

    invoke-virtual {v1}, Lql/H;->h()I

    move-result v1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lql/q;->b:Lql/k;

    iget-object v1, p0, Lql/q;->d:Lql/I;

    invoke-virtual {v1}, Lql/I;->m()[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lql/k;->k([BLql/j;)[B

    move-result-object v1

    invoke-virtual {p0}, Lql/q;->g()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lql/k;->l([B[B)V

    iget-object v0, p0, Lql/q;->b:Lql/k;

    invoke-virtual {v0, p1, p2}, Lql/k;->m([BLql/j;)Lql/p;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "otsHashAddress == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size of messageDigest needs to be equal to size of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
