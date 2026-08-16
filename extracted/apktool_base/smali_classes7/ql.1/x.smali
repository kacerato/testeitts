.class public final Lql/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:Lql/z;

.field public h:Lql/H;

.field public i:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 7

    new-instance v0, Lql/A$b;

    iget-object v1, p0, Lql/x;->g:Lql/z;

    invoke-direct {v0, v1}, Lql/A$b;-><init>(Lql/z;)V

    invoke-virtual {v0}, Lql/A$b;->k()Lql/A;

    move-result-object v0

    invoke-virtual {v0}, Lql/A;->f()Lql/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lql/x;->c(Lql/b;)Lql/A;

    move-result-object v0

    iget-object v1, p0, Lql/x;->h:Lql/H;

    invoke-virtual {v1}, Lql/H;->i()Lql/k;

    move-result-object v1

    iget-object v2, p0, Lql/x;->g:Lql/z;

    invoke-virtual {v2}, Lql/z;->g()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v0}, Lql/A;->j()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lql/k;->l([B[B)V

    iget-object v1, p0, Lql/x;->g:Lql/z;

    invoke-virtual {v1}, Lql/z;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Lql/j$b;

    invoke-direct {v2}, Lql/j$b;-><init>()V

    invoke-virtual {v2, v1}, Lql/r$a;->h(I)Lql/r$a;

    move-result-object v2

    check-cast v2, Lql/j$b;

    invoke-virtual {v2}, Lql/j$b;->e()Lql/r;

    move-result-object v2

    check-cast v2, Lql/j;

    new-instance v3, Lql/a;

    iget-object v4, p0, Lql/x;->h:Lql/H;

    invoke-virtual {v0}, Lql/A;->j()[B

    move-result-object v5

    invoke-virtual {v0}, Lql/A;->m()[B

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v2}, Lql/a;-><init>(Lql/H;[B[BLql/j;)V

    invoke-virtual {v3}, Lql/a;->f()Lql/E;

    move-result-object v2

    invoke-virtual {v0}, Lql/A;->f()Lql/b;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lql/b;->d(ILql/a;)V

    new-instance v1, Lql/A$b;

    iget-object v3, p0, Lql/x;->g:Lql/z;

    invoke-direct {v1, v3}, Lql/A$b;-><init>(Lql/z;)V

    invoke-virtual {v0}, Lql/A;->m()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lql/A$b;->s([B)Lql/A$b;

    move-result-object v1

    invoke-virtual {v0}, Lql/A;->l()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lql/A$b;->r([B)Lql/A$b;

    move-result-object v1

    invoke-virtual {v0}, Lql/A;->j()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lql/A$b;->p([B)Lql/A$b;

    move-result-object v1

    invoke-virtual {v2}, Lql/E;->b()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lql/A$b;->q([B)Lql/A$b;

    move-result-object v1

    invoke-virtual {v0}, Lql/A;->f()Lql/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lql/A$b;->l(Lql/b;)Lql/A$b;

    move-result-object v0

    invoke-virtual {v0}, Lql/A$b;->k()Lql/A;

    move-result-object v0

    new-instance v1, Lql/B$b;

    iget-object v3, p0, Lql/x;->g:Lql/z;

    invoke-direct {v1, v3}, Lql/B$b;-><init>(Lql/z;)V

    invoke-virtual {v2}, Lql/E;->b()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lql/B$b;->h([B)Lql/B$b;

    move-result-object v1

    invoke-virtual {v0}, Lql/A;->j()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lql/B$b;->g([B)Lql/B$b;

    move-result-object v1

    invoke-virtual {v1}, Lql/B$b;->e()Lql/B;

    move-result-object v1

    new-instance v2, LBi/c;

    invoke-direct {v2, v1, v0}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v2
.end method

.method public b(LBi/G;)V
    .locals 1

    check-cast p1, Lql/w;

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lql/x;->i:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Lql/w;->c()Lql/z;

    move-result-object p1

    iput-object p1, p0, Lql/x;->g:Lql/z;

    invoke-virtual {p1}, Lql/z;->j()Lql/H;

    move-result-object p1

    iput-object p1, p0, Lql/x;->h:Lql/H;

    return-void
.end method

.method public final c(Lql/b;)Lql/A;
    .locals 5

    iget-object v0, p0, Lql/x;->g:Lql/z;

    invoke-virtual {v0}, Lql/z;->g()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lql/x;->i:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v2, v0, [B

    iget-object v3, p0, Lql/x;->i:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v0, v0, [B

    iget-object v3, p0, Lql/x;->i:Ljava/security/SecureRandom;

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v3, Lql/A$b;

    iget-object v4, p0, Lql/x;->g:Lql/z;

    invoke-direct {v3, v4}, Lql/A$b;-><init>(Lql/z;)V

    invoke-virtual {v3, v1}, Lql/A$b;->s([B)Lql/A$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lql/A$b;->r([B)Lql/A$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lql/A$b;->p([B)Lql/A$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lql/A$b;->l(Lql/b;)Lql/A$b;

    move-result-object p1

    invoke-virtual {p1}, Lql/A$b;->k()Lql/A;

    move-result-object p1

    return-object p1
.end method
