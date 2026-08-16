.class public final Lql/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:Lql/H;

.field public h:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 4

    iget-object v0, p0, Lql/t;->g:Lql/H;

    iget-object v1, p0, Lql/t;->h:Ljava/security/SecureRandom;

    invoke-virtual {p0, v0, v1}, Lql/t;->c(Lql/H;Ljava/security/SecureRandom;)Lql/I;

    move-result-object v0

    invoke-virtual {v0}, Lql/I;->f()Lql/a;

    move-result-object v1

    invoke-virtual {v1}, Lql/a;->f()Lql/E;

    move-result-object v1

    new-instance v2, Lql/I$b;

    iget-object v3, p0, Lql/t;->g:Lql/H;

    invoke-direct {v2, v3}, Lql/I$b;-><init>(Lql/H;)V

    invoke-virtual {v0}, Lql/I;->m()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lql/I$b;->r([B)Lql/I$b;

    move-result-object v2

    invoke-virtual {v0}, Lql/I;->l()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lql/I$b;->q([B)Lql/I$b;

    move-result-object v2

    invoke-virtual {v0}, Lql/I;->j()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lql/I$b;->o([B)Lql/I$b;

    move-result-object v2

    invoke-virtual {v1}, Lql/E;->b()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lql/I$b;->p([B)Lql/I$b;

    move-result-object v2

    invoke-virtual {v0}, Lql/I;->f()Lql/a;

    move-result-object v0

    invoke-virtual {v2, v0}, Lql/I$b;->k(Lql/a;)Lql/I$b;

    move-result-object v0

    invoke-virtual {v0}, Lql/I$b;->j()Lql/I;

    move-result-object v0

    new-instance v2, Lql/J$b;

    iget-object v3, p0, Lql/t;->g:Lql/H;

    invoke-direct {v2, v3}, Lql/J$b;-><init>(Lql/H;)V

    invoke-virtual {v1}, Lql/E;->b()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lql/J$b;->h([B)Lql/J$b;

    move-result-object v1

    invoke-virtual {v0}, Lql/I;->j()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lql/J$b;->g([B)Lql/J$b;

    move-result-object v1

    invoke-virtual {v1}, Lql/J$b;->e()Lql/J;

    move-result-object v1

    new-instance v2, LBi/c;

    invoke-direct {v2, v1, v0}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v2
.end method

.method public b(LBi/G;)V
    .locals 1

    check-cast p1, Lql/s;

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lql/t;->h:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Lql/s;->c()Lql/H;

    move-result-object p1

    iput-object p1, p0, Lql/t;->g:Lql/H;

    return-void
.end method

.method public final c(Lql/H;Ljava/security/SecureRandom;)Lql/I;
    .locals 4

    invoke-virtual {p1}, Lql/H;->h()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v2, v0, [B

    invoke-virtual {p2, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance p2, Lql/I$b;

    invoke-direct {p2, p1}, Lql/I$b;-><init>(Lql/H;)V

    invoke-virtual {p2, v1}, Lql/I$b;->r([B)Lql/I$b;

    move-result-object p2

    invoke-virtual {p2, v2}, Lql/I$b;->q([B)Lql/I$b;

    move-result-object p2

    invoke-virtual {p2, v0}, Lql/I$b;->o([B)Lql/I$b;

    move-result-object p2

    new-instance v2, Lql/a;

    new-instance v3, Lql/j$b;

    invoke-direct {v3}, Lql/j$b;-><init>()V

    invoke-virtual {v3}, Lql/j$b;->e()Lql/r;

    move-result-object v3

    check-cast v3, Lql/j;

    invoke-direct {v2, p1, v0, v1, v3}, Lql/a;-><init>(Lql/H;[B[BLql/j;)V

    invoke-virtual {p2, v2}, Lql/I$b;->k(Lql/a;)Lql/I$b;

    move-result-object p1

    invoke-virtual {p1}, Lql/I$b;->j()Lql/I;

    move-result-object p1

    return-object p1
.end method
