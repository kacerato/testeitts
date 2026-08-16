.class public Ljl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:Ljl/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 13

    iget-object v0, p0, Ljl/d;->g:Ljl/c;

    invoke-virtual {v0}, Ljl/c;->c()Ljl/f;

    move-result-object v0

    invoke-virtual {v0}, Ljl/f;->c()I

    move-result v0

    iget-object v1, p0, Ljl/d;->g:Ljl/c;

    invoke-virtual {v1}, Ljl/c;->c()Ljl/f;

    move-result-object v1

    invoke-virtual {v1}, Ljl/f;->f()I

    move-result v1

    iget-object v2, p0, Ljl/d;->g:Ljl/c;

    invoke-virtual {v2}, Ljl/c;->c()Ljl/f;

    move-result-object v2

    invoke-virtual {v2}, Ljl/f;->m()I

    move-result v2

    const/16 v3, 0x20

    new-array v4, v3, [B

    iget-object v5, p0, Ljl/d;->g:Ljl/c;

    invoke-virtual {v5}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v5, v0, [S

    invoke-static {v5, v4, v0, v1}, Ljl/q;->j([S[BII)V

    new-array v6, v0, [B

    iget-object v7, p0, Ljl/d;->g:Ljl/c;

    invoke-virtual {v7}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v7

    invoke-static {v7, v6, v0, v2}, Ljl/q;->u(Ljava/security/SecureRandom;[BII)V

    new-array v2, v0, [S

    invoke-static {v2, v5, v6, v0, v1}, Ljl/q;->I([S[S[BII)V

    new-array v5, v0, [S

    invoke-static {v5, v2}, Ljl/q;->K([S[S)V

    iget-object v2, p0, Ljl/d;->g:Ljl/c;

    invoke-virtual {v2}, Ljl/c;->c()Ljl/f;

    move-result-object v2

    invoke-virtual {v2}, Ljl/f;->e()I

    move-result v2

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    invoke-static {v2, v5, v0, v1}, Ljl/q;->y([B[SII)V

    new-instance v1, Ljl/h;

    iget-object v5, p0, Ljl/d;->g:Ljl/c;

    invoke-virtual {v5}, Ljl/c;->c()Ljl/f;

    move-result-object v5

    invoke-direct {v1, v5, v4, v2}, Ljl/h;-><init>(Ljl/f;[B[B)V

    add-int/lit8 v2, v0, 0x3

    const/4 v4, 0x4

    div-int/2addr v2, v4

    new-array v9, v2, [B

    invoke-static {v9, v6, v0}, Ljl/q;->o([B[BI)V

    new-array v11, v3, [B

    iget-object v0, p0, Ljl/d;->g:Ljl/c;

    invoke-virtual {v0}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    aput-byte v4, v0, v2

    invoke-virtual {v1}, Ljl/h;->getEncoded()[B

    move-result-object v3

    invoke-static {v0, v3}, Ljl/q;->p([B[B)[B

    move-result-object v0

    new-instance v3, Ljl/g;

    iget-object v4, p0, Ljl/d;->g:Ljl/c;

    invoke-virtual {v4}, Ljl/c;->c()Ljl/f;

    move-result-object v8

    invoke-virtual {v1}, Ljl/h;->getEncoded()[B

    move-result-object v10

    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    invoke-static {v0, v2, v4}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v12

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Ljl/g;-><init>(Ljl/f;[B[B[B[B)V

    new-instance v0, LBi/c;

    invoke-direct {v0, v1, v3}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v0
.end method

.method public b(LBi/G;)V
    .locals 0

    check-cast p1, Ljl/c;

    iput-object p1, p0, Ljl/d;->g:Ljl/c;

    return-void
.end method

.method public c()Ljl/c;
    .locals 1

    iget-object v0, p0, Ljl/d;->g:Ljl/c;

    return-object v0
.end method
