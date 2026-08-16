.class public Ljl/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:Ljl/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 15

    const/4 v0, 0x0

    iget-object v1, p0, Ljl/l;->g:Ljl/k;

    invoke-virtual {v1}, Ljl/k;->c()Ljl/n;

    move-result-object v1

    invoke-virtual {v1}, Ljl/n;->b()I

    move-result v1

    iget-object v2, p0, Ljl/l;->g:Ljl/k;

    invoke-virtual {v2}, Ljl/k;->c()Ljl/n;

    move-result-object v2

    invoke-virtual {v2}, Ljl/n;->e()I

    move-result v2

    iget-object v3, p0, Ljl/l;->g:Ljl/k;

    invoke-virtual {v3}, Ljl/k;->c()Ljl/n;

    move-result-object v3

    invoke-virtual {v3}, Ljl/n;->i()I

    move-result v3

    new-array v4, v1, [B

    new-array v5, v1, [B

    :cond_0
    iget-object v6, p0, Ljl/l;->g:Ljl/k;

    invoke-virtual {v6}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v6

    invoke-static {v6, v4}, Ljl/q;->v(Ljava/security/SecureRandom;[B)V

    invoke-static {v4, v5, v1}, Ljl/q;->F([B[BI)Z

    move-result v6

    if-eqz v6, :cond_0

    new-array v6, v1, [B

    iget-object v7, p0, Ljl/l;->g:Ljl/k;

    invoke-virtual {v7}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v7

    invoke-static {v7, v6, v1, v3}, Ljl/q;->u(Ljava/security/SecureRandom;[BII)V

    new-array v3, v1, [S

    invoke-static {v3, v6, v1, v2}, Ljl/q;->s([S[BII)V

    new-array v7, v1, [S

    invoke-static {v7, v3, v4, v1, v2}, Ljl/q;->I([S[S[BII)V

    iget-object v3, p0, Ljl/l;->g:Ljl/k;

    invoke-virtual {v3}, Ljl/k;->c()Ljl/n;

    move-result-object v3

    invoke-virtual {v3}, Ljl/n;->d()I

    move-result v3

    new-array v12, v3, [B

    invoke-static {v12, v7, v1, v2}, Ljl/q;->n([B[SII)V

    new-instance v2, Ljl/p;

    iget-object v3, p0, Ljl/l;->g:Ljl/k;

    invoke-virtual {v3}, Ljl/k;->c()Ljl/n;

    move-result-object v3

    invoke-direct {v2, v3, v12}, Ljl/p;-><init>(Ljl/n;[B)V

    add-int/lit8 v3, v1, 0x3

    const/4 v4, 0x4

    div-int/2addr v3, v4

    new-array v10, v3, [B

    invoke-static {v10, v6, v1}, Ljl/q;->o([B[BI)V

    new-array v11, v3, [B

    invoke-static {v11, v5, v1}, Ljl/q;->o([B[BI)V

    new-array v13, v3, [B

    iget-object v1, p0, Ljl/l;->g:Ljl/k;

    invoke-virtual {v1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v4, v1, v0

    invoke-static {v1, v12}, Ljl/q;->p([B[B)[B

    move-result-object v1

    new-instance v3, Ljl/o;

    iget-object v4, p0, Ljl/l;->g:Ljl/k;

    invoke-virtual {v4}, Ljl/k;->c()Ljl/n;

    move-result-object v9

    array-length v4, v1

    div-int/lit8 v4, v4, 0x2

    invoke-static {v1, v0, v4}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v14

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Ljl/o;-><init>(Ljl/n;[B[B[B[B[B)V

    new-instance v0, LBi/c;

    invoke-direct {v0, v2, v3}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v0
.end method

.method public b(LBi/G;)V
    .locals 0

    check-cast p1, Ljl/k;

    iput-object p1, p0, Ljl/l;->g:Ljl/k;

    return-void
.end method

.method public c()Ljl/k;
    .locals 1

    iget-object v0, p0, Ljl/l;->g:Ljl/k;

    return-object v0
.end method
