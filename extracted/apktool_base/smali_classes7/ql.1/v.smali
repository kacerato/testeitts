.class public final Lql/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lql/z;

.field public b:Lql/H;

.field public c:Ljava/security/SecureRandom;

.field public d:Lql/A;

.field public e:Lql/B;


# direct methods
.method public constructor <init>(Lql/z;Ljava/security/SecureRandom;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lql/v;->a:Lql/z;

    invoke-virtual {p1}, Lql/z;->j()Lql/H;

    move-result-object v0

    iput-object v0, p0, Lql/v;->b:Lql/H;

    iput-object p2, p0, Lql/v;->c:Ljava/security/SecureRandom;

    new-instance p2, Lql/A$b;

    invoke-direct {p2, p1}, Lql/A$b;-><init>(Lql/z;)V

    invoke-virtual {p2}, Lql/A$b;->k()Lql/A;

    move-result-object p2

    iput-object p2, p0, Lql/v;->d:Lql/A;

    new-instance p2, Lql/B$b;

    invoke-direct {p2, p1}, Lql/B$b;-><init>(Lql/z;)V

    invoke-virtual {p2}, Lql/B$b;->e()Lql/B;

    move-result-object p1

    iput-object p1, p0, Lql/v;->e:Lql/B;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "params == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lql/v;->d:Lql/A;

    invoke-virtual {v0}, Lql/A;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lql/v;->e:Lql/B;

    invoke-virtual {v0}, Lql/B;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 4

    new-instance v0, Lql/x;

    invoke-direct {v0}, Lql/x;-><init>()V

    new-instance v1, Lql/w;

    invoke-virtual {p0}, Lql/v;->d()Lql/z;

    move-result-object v2

    iget-object v3, p0, Lql/v;->c:Ljava/security/SecureRandom;

    invoke-direct {v1, v2, v3}, Lql/w;-><init>(Lql/z;Ljava/security/SecureRandom;)V

    invoke-virtual {v0, v1}, Lql/x;->b(LBi/G;)V

    invoke-virtual {v0}, Lql/x;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v1

    check-cast v1, Lql/A;

    iput-object v1, p0, Lql/v;->d:Lql/A;

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v0

    check-cast v0, Lql/B;

    iput-object v0, p0, Lql/v;->e:Lql/B;

    iget-object v1, p0, Lql/v;->d:Lql/A;

    invoke-virtual {p0, v1, v0}, Lql/v;->g(Lql/A;Lql/B;)V

    return-void
.end method

.method public d()Lql/z;
    .locals 1

    iget-object v0, p0, Lql/v;->a:Lql/z;

    return-object v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, Lql/v;->d:Lql/A;

    invoke-virtual {v0}, Lql/A;->j()[B

    move-result-object v0

    return-object v0
.end method

.method public f()Lql/H;
    .locals 1

    iget-object v0, p0, Lql/v;->b:Lql/H;

    return-object v0
.end method

.method public final g(Lql/A;Lql/B;)V
    .locals 3

    iget-object v0, p0, Lql/v;->b:Lql/H;

    invoke-virtual {v0}, Lql/H;->i()Lql/k;

    move-result-object v0

    iget-object v1, p0, Lql/v;->a:Lql/z;

    invoke-virtual {v1}, Lql/z;->g()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Lql/v;->d:Lql/A;

    invoke-virtual {v2}, Lql/A;->j()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lql/k;->l([B[B)V

    iput-object p1, p0, Lql/v;->d:Lql/A;

    iput-object p2, p0, Lql/v;->e:Lql/B;

    return-void
.end method

.method public h([B[B)V
    .locals 3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    new-instance v0, Lql/A$b;

    iget-object v1, p0, Lql/v;->a:Lql/z;

    invoke-direct {v0, v1}, Lql/A$b;-><init>(Lql/z;)V

    invoke-virtual {v0, p1}, Lql/A$b;->o([B)Lql/A$b;

    move-result-object p1

    invoke-virtual {p1}, Lql/A$b;->k()Lql/A;

    move-result-object p1

    new-instance v0, Lql/B$b;

    iget-object v1, p0, Lql/v;->a:Lql/z;

    invoke-direct {v0, v1}, Lql/B$b;-><init>(Lql/z;)V

    invoke-virtual {v0, p2}, Lql/B$b;->f([B)Lql/B$b;

    move-result-object p2

    invoke-virtual {p2}, Lql/B$b;->e()Lql/B;

    move-result-object p2

    invoke-virtual {p1}, Lql/A;->k()[B

    move-result-object v0

    invoke-virtual {p2}, Lql/B;->g()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lql/A;->j()[B

    move-result-object v0

    invoke-virtual {p2}, Lql/B;->f()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lql/v;->b:Lql/H;

    invoke-virtual {v0}, Lql/H;->i()Lql/k;

    move-result-object v0

    iget-object v1, p0, Lql/v;->a:Lql/z;

    invoke-virtual {v1}, Lql/z;->g()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1}, Lql/A;->j()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lql/k;->l([B[B)V

    iput-object p1, p0, Lql/v;->d:Lql/A;

    iput-object p2, p0, Lql/v;->e:Lql/B;

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

.method public i([B)[B
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lql/D;

    invoke-direct {v0}, Lql/D;-><init>()V

    const/4 v1, 0x1

    iget-object v2, p0, Lql/v;->d:Lql/A;

    invoke-virtual {v0, v1, v2}, Lql/D;->a(ZLBi/k;)V

    invoke-virtual {v0, p1}, Lql/D;->b([B)[B

    move-result-object p1

    invoke-virtual {v0}, Lql/D;->c()LXi/c;

    move-result-object v0

    check-cast v0, Lql/A;

    iput-object v0, p0, Lql/v;->d:Lql/A;

    iget-object v1, p0, Lql/v;->e:Lql/B;

    invoke-virtual {p0, v0, v1}, Lql/v;->g(Lql/A;Lql/B;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "message == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j([B[B[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    new-instance v0, Lql/D;

    invoke-direct {v0}, Lql/D;-><init>()V

    new-instance v1, Lql/B$b;

    invoke-virtual {p0}, Lql/v;->d()Lql/z;

    move-result-object v2

    invoke-direct {v1, v2}, Lql/B$b;-><init>(Lql/z;)V

    invoke-virtual {v1, p3}, Lql/B$b;->f([B)Lql/B$b;

    move-result-object p3

    invoke-virtual {p3}, Lql/B$b;->e()Lql/B;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Lql/D;->a(ZLBi/k;)V

    invoke-virtual {v0, p1, p2}, Lql/D;->d([B[B)Z

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
